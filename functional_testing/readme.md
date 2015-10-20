#BDD
We are going to write a very simple web application and drive it out using some behavioural tests.

The web application is one that will let users that, log in correctly, to view their bill. Conceptually it will be similar to the appication you are writing in the [Sinatra Exercise](../../exercises/sinatra) but we won't be implementing all of the features that the exercise asks for so don't worry there will not be to many spoliers!

During the implementation of this application and it's tests we will progressively refactor what we are writing so that we can focus on some of the features/approaches that are available.

## Cucumber vs...
In this example we are going to use Cucumber. There are lots of BDD frameworks out there and which one is right for you and whether should even use one can be pretty contextual and a long topic of discussion.

## An example
### Starting with the Feature
```cucumber
Feature: The name of the capability
The description of what it does and context around why it is needed/useful

Scenario: Something that can happen
  Given Something is the case
  When you use this feature
  Then the following should happen
```
For our first feature we might write something like this.
```cucumber
Feature: Login
User's must be logged in order to see their personal information.

Scenario: Logging in
  Given I got to the login page
  And I enter in the correct username
  And I enter in the correct password
  When I click the login button
  Then I should be on the Bill Page
```
Demonstration:
- Features directory
- Auto generate steps

##Watir webdriver
[Watir Webdriver](https://github.com/watir/watir-webdriver) is an API for driving physical browsers. It's pretty cool but there are some down sides. We'll look at these later as we refactor our solution.

Demonstration:
- Implement at steps to get a failing test
- Implement simplest application possible to pass the test.

##Implement the next scenario
```cucumber
Scenario: Failed logins
  Given I got to the login page
  And I enter in the correct username
  And I enter in the wrong password
  When I click the login button
  Then I should be on the Login Page
```
## Keeping your steps dry
The steps we have implemented work, but you will no doubt be seeing a lot of code that looks the same within them.
**Demonstration**
- Capturing input through steps

## Keep things in the World
Helper methods are great but they shouldn't litter our step files. It's untidy and we are infact poluting `main`.

**Demonstration** 
- The World object
- Support directory
   - env.rb

## Page Objects
Watir webdriver is very powerful and you can do pretty much anything with it. However as your pages get more complicated the code that you write is likely to get ugly and procedural. Especially if you have much asynchronous JavaScript in it. There are a couple of PageObject frameworks out there, including one called [PageObject](https://github.com/cheezy/page-object). [PageMagic](https://github.com/Ladtech/page_magic) is a page object framework that has some pretty nice features that you might want to check out.

**Demonstration**
1. Use page objects to replace the the interactions with Watir Webdriver and remove direct access to the browser

## Testing page flow
Page objects are good for moddeling a page in isolation but what if you test clicks links that move you between pages? At this point you will most likely start to write code that you instruct to change the current page object. This can look pretty ugly too, not to mention be error prone.

**Demonstration**
1. Model your page flow with PageMagic

## Testing Controllers
So you've got these great black box tests, what's the point in testing the controllers with Rack::Test? They might well look like duplicates. But the feedback they give you is faster and easier to debug than tests that run against a seperate process. They may also be more detailed than your features.

**Demonstration**
- Rack Test

## Testing your templates
Quick Feedback is King and you want to try and avoid using your Cucumber tests to unit test your templates.

**Demonstration**
- Use page magic to test the page outside of the controller.



