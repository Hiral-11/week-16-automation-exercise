@regression
Feature: Login Feature
  As a user I can login my account successfully with valid credentials

  Background:
    Given I Navigate to url "http://automationexercise.com"
    Then I Verify that home page is visible successfully

  @author_HK @sanity @smoke
  Scenario: Verify that login user with correct email and password
    When I click on "Signup / Login" button
    Then I Verify "Login to your account" is visible
    And I enter correct email address "software1@gmail.co.uk", password "Software123$"
    And I click on login button
    Then I  Verify that "Logged in as" username is visible
    And I click Delete Account button
    Then I  Verify that "ACCOUNT DELETED!" is visible after deleted
    And I Click Continue button


  @author_HK @smoke
  Scenario: Verify that login user with incorrect email and password
    When I click on "Signup / Login" button
    Then I Verify "Login to your account" is visible
    And I enter Incorrect email address "software1@gmail.co.uk", password "Software123$"
    And I click on login button
    Then I  Verify error "Your email or password is incorrect!" is visible

  @author_HK
  Scenario: Verify that user can logout
    When I click on "Signup / Login" button
    Then I Verify "Login to your account" is visible
    And I enter correct email address "software@gmail.co.uk", password "Tester123$"
    And I click on login button
    Then I  Verify that "Logged in as" username is visible
    And I click Logout button
    Then I Verify that user is navigated to login page

  @author_HK
  Scenario: Verify Register user with existing email
    When I click on "Signup / Login" button
    Then I  Verify "New User Signup!" is visible
    And I  Enter name "Software Tester"
    And I Enter already registered email address "software1@gmail.co.uk.com"
    And I click on Signup button
    Then I Verify error "Email Address already exist!" is displayed




