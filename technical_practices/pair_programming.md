# Pair Programming

## Why are we pair programming?

At Abtion, we take inspiration from the principles of Kent Beck's "[eXtreme
Programming](http://www.extremeprogramming.org/)". Two of the five main values
are Communication and Feedback. These two values make the foundation for what is
known as Pair Programming where two (or more) developers work together on a
shared screen.

> A system with two programmers possesses greater potential for the generation
> of more diverse solutions to problems for three reasons:
>
> the programmers bring different prior experiences to the task;
> they may assess information relevant to the task in different ways;
> they stand in different relationships to the problem by virtue of their
> functional roles.
>
> [Wikipedia](https://en.wikipedia.org/wiki/Pair_programming)

The benefits of pair programming include:

- fewer bugs. Seeing as there is more than one developer checking the code,
  mistakes are quickly located and squashed.
- higher code quality. There is always another developer to discuss the task at
  hand and the solution which makes for better thought-through code.
- knowledge sharing. Both in terms of programming knowledge in general
  (mentoring), and within the application / system that is being developed
  (avoiding silos), but also with regards to good habits and team practices.

## How do we pair program?

### Prerequisites

For pair programming we use the following setup:

- a keyboard for each developer
- a trackpad or mouse for each developer
- a shared screen, either the same physical one or with screen sharing

### Pair programming styles

There are different styles of pair programming, each with their own pros and
cons.

The styles described in this document are:

- [Ping Pong](#ping-pong)
- [Driver and Navigator](#driver-and-navigator)
- [Tour Guide and Tourist](#tour-guide-and-tourist)
- [Strong style / Backseat Driver / Driving School](#backseat-navigator)
- [Unstructured](#unstructured)

_We strongly recommend using [a pomodoro timer](https://pomodoro.abtion.com/) or a set time interval to determine when to switch roles._

---

#### **Ping Pong**

_When to use:_ When the pair wants to ensure that their code is test-driven.

The Ping Pong style is recognized by its constant role switching where the pair
switches in a red-green fashion.

- Developer 1 writes a failing test.
- Developer 2 writes just enough code to make the test pass.
- Developer 2 writes a new failing test.
- Developer 1 writes just enough code to make the test pass.
- This back-and-forth continues until there are no more tests for the unit they
  are working on.
- They finish by refactoring if needed.

Then the cycle repeats with the next unit.

The current Navigator works as sparring for the Driver to help them either write
the test or solve the test.

This style forces the pair to switch roles regularly which can help keep both
developers focused for the session. It is especially useful for enforcing a
test-driven approach.

---

#### **Driver and Navigator**

_When to use:_ When Ping Pong pairing is too taxing.

Driver and Navigator style can be seen as the most balanced pairing style, and
this is also the style that the "Tour Guide and Tourist" and "Backseat Navigator
/ Driver School / Strong Style" derives from.

The pair gets assigned the role of either the Driver or the Navigator.

The Driver has their fingers on the keyboard, working on the task at hand while
discussing the solution with the Navigator.

You might hear the Driver ask questions such as "What do you think is the best
approach here?"

The Navigator has an overview over the current task and its relation to the
entire project. They work as a sparring partner to the Driver.

You might hear the Navigator ask questions such as "Would it be useful to
extract this method?"

The Driver needs to be aware of not taking over the pairing session, coding
solo, which would be reminiscent of the Tour guide and Tourist style.

The Navigator needs to be aware of not micro-managing, which would be
reminiscent of the Backseat Navigator style.

This awareness is especially important when one party has more experience.

---

#### **Tour Guide and Tourist**

_When to use:_ When onboarding a developer to a project or on a team. It is a
way to share context and knowledge about the system.

The Tour Guide is the Driver and the Navigator and their role is to type and
introduce the project. They explain features, structures, and issues as they
progress.

The Tourist watches, asks questions about the process, and learns.

One thing to note is that this style should be used sparingly as it is easier to
learn with your fingers in the code, than it is with your eyes on it.

It isn't easy for a passive listener to stay focused for a long time.

---

#### **Backseat Navigator**

_When to use:_ When onboarding a developer to a project, a team, or a
technology. It is a way for the Navigator to train their communication skills
and the Driver to get used to new processes/technologies.

Also known as Strong Style and Driving School.

The Backseat Navigator is a different style that focuses on the Backseat
Navigator sharing knowledge and training their ability to communicate clearly.

The Driver has their hands on the keyboard and can only type what they are told
to type.

The Backseat Navigator comes up with the solution, communicates to the Driver
what they should type, and explains the reasoning behind their choices.

If the Driver gets an idea or they want to add something to the project, the
roles are switched and they have to tell the new Driver what to type and how.

It works especially well if the Backseat Navigator wants to practice their
communication skills and can be an alternative way of onboarding new developers
to a project or a team.

As with the Tour Guide/Tourist style, it can be tiring for both parts to be
stuck in their respective roles for too long.

---

#### **Unstructured**

_When to use:_ When "pre-pairing"/spiking, or when the developers are both new
to a code base.

The Unstructured pairing session is defined by its lack of predetermined roles.
Whoever wants to drive drives, and whoever wants to navigate navigates.

If at any point the pair wants to switch roles, they can.

This is a common "style" because of its fluidity but can result in uneven
pairing because of its lack of guidelines.

## Additional reading

- [Ping-Pong, Paired Programing](https://thoughtbot.com/upcase/videos/ping-pong-paired-programing)
- [Program in pairs](https://www.ibm.com/garage/method/practices/code/practice_pair_programming)
- [The Art of Agile Development: Pair Programming](https://www.jamesshore.com/v2/books/aoad1/pair_programming)
- [Tuple’s Pair Programming Guide](https://tuple.app/pair-programming-guide)
