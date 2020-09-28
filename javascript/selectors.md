# Selector and how we use them in Abtion
This is something lot of "juniors" (I really hate using this word) have a little problem to understand. The concept is fairly easy, but one can really grasp the whole idea once working on a larger project with a lot of data and state changes. Every single time i try to describe why selectors are helpful, I find myself talking about multiple scenarios, all stamming from the boring definition that **selectors are functions pointing to a certain place in the global state**, which seem a bit confusing for the listener. I have therefore decided to summarize the use and need of selectors in this little article and include practical examples.
	
## Definition and usage
It has been already said that **selectors are functions pointing to a certain place in the global state.** Something like this can be called a selector:

	const isPremium = state => state.user.isPremium
	
This is a simple function that accepts the global state as an argument and returns a certain data from the state. Simple as that.

Selectors **can be also used to calculate properties on the global state**. Remember, you should never store calculated properties in the global state. Use the selectors instead, to do the calculation for you. Like this:

	const numberOfActiveUsers = state =>
		state.rooms.reduce((prev, room) => prev + room.users.length , 0)
	
What this selector does, is that it loops over all rooms and aggregates the number of users in each room. The result of this function is a single number representing the amount of users in all rooms. No need to store this number anywhere and update it as users leave and enter. This function will do the calculation for us every single time we need it.

Another way how to think of selectors, is that **it is an interface between the state and the component tree.** It is quite common that the best practice for storing data in the state, is not matching the data structure components use. A simple example could be following:

	const getActiveUserId = state => state.activeUser.id
	const getUsers = state => state.users
	const getActiveUserObject = state => {
		const userId = getActiveuserId(state)
		return getUsers(state).find(user => user.id === userId)
	}
	
In this case, we have two selectors and one of them is using the other, in order to get the ID of the current user and then find the user object in the state based on the ID. It is common practice user selectors inside of another selectors.

In Abtion, we commonly use a library called Reselect. lets look at it in the next section.
	
## Reselect

[Reselect](https://github.com/reduxjs/reselect) is a library that allows you to explicitly say, which selectors a selector needs in order to do its job. The advantage of this approach is, that the selector is only recalculated if the depending selectors change its outputed value. Ok, this was a horrible sentence so lets use the previous example- selector `getActiveUserObject` is only recalculated if the `getActiveUserId` selector has changed its outputed value. 

Lets rewrite the previous selectors, so it uses Reselect:
	
	import { createSelector } from 'reselect'
	const getActiveUserId = state => state.activeUser.id
	const getUsers = state => state.users
	const getActiveUserObject = createSelector(
		getActiveUserId,
		getUsers,
		(userId, users) => users.find(user => user.id === userId))

In 99.9999% of cases you will use `createSelector` from the Reselects API. There are some other options but I have never ran into a case when I would have to use some of the other functions. Although it is good to know what Reselect offers and I highly encourage you to check the docs.

`createSelector` is a function that accepts "input" selectors as arguments and the last argument is a function which accepts the output of the input selectors as arguments. Horrible sentence alert, let me put it to you like this:

	createSelector(sel1, sel2, sel3, (outputOfSel1, outputOfSel2, outputOfSel3) => {
		//...logic goes here
		//outputOfSel1, outputOfSel2, outputOfSel3 are available variables here
	})
	
Ok, last but not least, lets look at some practical examples and where to use selectors.

## Practical examples

A typical example of where to use selectors is in the functions connecting the state and so called Redux aware components. Lets address the elephant in the room- Redux aware components are React components connected to Redux, most likely via the `react-redux` module. Sometimes, you can hear people refering to them as smart components, fat components or intergalactic super power blasting giga components. Ok, I might have made the last one up. Anyway, lets look at an example:

	const connectStateToProps = state => ({
		activeUser: getActiveUserObject(state)
	})
	
	export const connect(connectStateToProps)(MyComponent)
	
Here you can see, that I use the selector to retrive the object representing the current user and passing this object to `MyComponent` as a prop. Lets look at another example. This time, we will use the selector in an action creator, in order to read the current state, compare it to a new value and if the value is different, dispatch an event in order to update the state.

	const setIsPremium = isPremium => (dispatch, getState) => {
		const currentUser = getActiveUserObject(getState())
		if(currentUser.isPremium !== isPremium)
			dispatch({ type: SET_PREMIUM, isPremium })
	}
	
In this case, when the action creator is triggered, we check the current state, get the current user and if their `isPremium` is not equal to the new value, we dispatch an event that sets the new value. The question is- why the heck we would do this? Can't we just do something like:

	const isCurrentUserPremium = getState().currentUser.isPremium
	
And the answer to this is- yes, you can and it would do the same. The reason, why we don't do this, is because **in this case the action creator is aware of the state structure**. This might not necessarly be a bad thing, but imagine that we need to change the location of the current user object in the state. Suddenly you have to go through all action creators and change the path. I can guarantee you, you want have a good time by doing this. Instead, delegate this to a selector and when the structure of the state changes, you know you only need to change the selectors.

Last but not least, you can use selectors to transform the data you get from the state and pass them to you components. Lets assume that you store users as an object with the users id as a key in the object. Just like this:

	{
		284: { name: 'Tomas', id: 284 },
		321: { name: 'Martin', id: 321 },
		...
	}
	
The reason why you would do that is because any sort of operations are way faster. You dont not need to loop over an array to find a user with a certain ID. You can just simply access it by the ID. The problem emerges when you realize that your component accepts users as a standard array. That is when selectors come to save the situation. Lets take a look:

	const getUsers = state => state.users
	const getUsersAsArray = createSelector(getUsers, users =>
		Object.keys(users).map(key => users[key]))
		
Simple as that. We create a selector that first gets all the IDs (keys in the user object) and then we loop over the array and return the actual user object. This results in following:

	[
		{ name: 'Tomas', id: 284 },
		{ name: 'Martin', id: 321 },
		...
	]
	
And this is exactly the data structure we want to use in our components in order to loop over the users and show them in a table or whatever.

## Closing thoughts

And that is it! You are now a certified expert on selectors! If you dont understand anything, please feel free to contact me on tp@abtion.com and I will try to help you out. This way of using selectors is not Abtion specific and it does not have any significant impact on perfomance in standard web applications. 
