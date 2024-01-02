@regression
Feature: Register User Feature
  As a user I can register account

  Background:
    Given I Navigate to url "http://automationexercise.com"
    Then I Verify that home page is visible successfully

  @author_HK @sanity @smoke
  Scenario: Verify that user can register new account and delete account
    When I click on "Signup / Login" button
    Then I  Verify "New User Signup!" is visible
    And I  Enter name "Creative Tester"
    And I Enter email address "creative1@gmail.co.uk"
    And I click on Signup button
    Then I verify that "ENTER ACCOUNT INFORMATION" is visible
    And I Fill details Title, Name, Email, Password "Creative123$" , Date Of Birth "07","July","1997"
    And I Select checkbox Sign up for our newsletter!
    And I Select checkbox Receive special offers from our partners!
    And I fill details with firstName "Creative" lastName "Tester" company "XYZ" address "10 Formby Avenue" addressTwo "Buckingham Palace road" country "India" state "Maharashtra" city "Mumbai" zipcode "400064" mobileNumber "919819901230"
    And I Click on Create Account button
    Then I Verify that "ACCOUNT CREATED!" is displayed
    And I Click Continue button
    Then I  Verify that "Logged in as" username is visible
    And I click Delete Account button
    Then I  Verify that "ACCOUNT DELETED!" is visible after deleted
    And I Click Continue button








