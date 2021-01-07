# TDD - Test Driven Development

Test-driven development (TDD) is a development process relying on software requirements being converted to test cases, before software is fully developed, and tracking all software development by repeatedly testing the software against all test cases.

_If it’s worth building, it’s worth testing. If it’s not worth testing, why are you wasting your time working on it?
— Scott Ambler, Enterprise Agile Coach_

This way of developing is based on the concept “Plan first, develop later”. So the developers will firstly research the product and plan out the functions.  


**Example of usage**:
A test is based on expectations, and results. So we define our expectations beforehand. In this example we have a function called “addVAT(amount)” in our RealShopCode. It should add 25 % VAT to the amount that we provide into the function. 
So in the test we’ll provide the function with **16** and expect it to return **20** (since 16 + 25 % is 20).

public function testCalculateVatCorrectly()
{
    $test->expectEquals(
        20,
        RealShopCode::addVAT(16)
    );
}

This test will only succeed if the calculations are correct. If the test doesn’t succeed, the test-system will fail and the developer will need to fix this issue, before submitting the code.


**Why should we do test-driven development?**
Flexibility is one of the great positives. When writing tests first, the developers will get to know the end-result of the product, before starting the development. 
That way it’s easy to change course fast, if we figure out that something needs to be done in other ways.

Another great positive is safety. The developers can make changes in the code, without being scared that it will break, because we already know what it should return. That makes it easier to maintain and refactor each other's code.
Let’s take the previous example of “addVAT” - we know that the function should always add 25 %. So if a developer is to make changes to the function, and by mistake change the rate to 20 %, the test will fail and warn the developer about this issue right away.


**What are the cons of TDD?** 
Time. It’s time-consuming to write these tests. That makes the development feel slow in the beginning and that might be hard for the customer to understand. 
It’s also important to always keep the tests up-to-date with the product. So if you need to add a small feature to the product, you’ll also need to add a test for this feature, so the test covers it. 


**Where to use TDD?**
TDD is great - it’s actually really great. But like most tools, you need to make sure that you’ll use it for the right tasks. Otherwise it will return in a lot of wasted time. It would be wrong to use a hammer to dig a hole in the ground.

The easiest way to know when TDD is useful, is to ask yourself: “What can go wrong, if the system fails?”. 

You could write a test for the contact-form, you’ve just installed on a website, but the worst case scenario for it failing, is that a mail is not being delivered. It might not be worth the hours to develop a test for this.
Whereas a custom build webshop, where a failing VAT-calculating function could be directly illegal, if it’s calculating the VAT wrong, so here it would be a good idea to develop tests.
