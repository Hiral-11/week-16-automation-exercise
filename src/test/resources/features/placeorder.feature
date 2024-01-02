@regression
Feature: Place order feature

  Background:
    Given I Navigate to url "http://automationexercise.com"
    Then I Verify that home page is visible successfully

  @author_HK @sanity @smoke
  Scenario: User should place order: Register while checkout
    When I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    And I click on register link in the checkout popup
    Then I  Verify "New User Signup!" is visible
    And I  Enter name "creative Tester"
    And I Enter email address "creative1@gmail.co.uk"
    And I click on Signup button
    Then I verify that "ENTER ACCOUNT INFORMATION" is visible
    And I Fill details Title, Name, Email, Password "Creative123$" , Date Of Birth "07","July","1997"
    And I Select checkbox Sign up for our newsletter!
    And I Select checkbox Receive special offers from our partners!
    And I fill details with firstName "Creative" lastName "Tester" company "XYZ" address "10 Formby Avenue" addressTwo "Buckingham Palace road" country "India" state "Maharashtra" city "Mumbai" zipcode "400064" mobileNumber "919819901230"
    And I Click on Create Account button
    And I Click Continue button
    Then I  Verify that "Logged in as" username is visible
    And I click on "Cart" button
    And I click on Proceed to Checkout button
    Then I should see the text on checkout page "Review Your Order"
    And I should see the text on checkout page "Address Details"
    And I enter details into comment area "If no one available at home, deliver to neighbour"
    And I click on place order button
    Then I enter payment details "Creative Tester" "4263982640269277" "567" "03" and "2025"
    And I click on Pay and Confirm Order button
    Then I should see the order confirmation message "Congratulations! Your order has been confirmed!"
    And I click Delete Account button
    Then I  Verify that "ACCOUNT DELETED!" is visible after deleted
    And I Click Continue button

  @author_HK @smoke
  Scenario: User should place order: Register before checkout
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
    And I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    And I should see the text on checkout page "Review Your Order"
    And I should see the text on checkout page "Address Details"
    And I enter details into comment area "If no one available at home, deliver to neighbour"
    And I click on place order button
    Then I enter payment details "Creative Tester" "4263982640269277" "567" "03" and "2025"
    And I click on Pay and Confirm Order button
    Then I should see the order confirmation message "Congratulations! Your order has been confirmed!"
    And I click Delete Account button
    Then I  Verify that "ACCOUNT DELETED!" is visible after deleted
    And I Click Continue button


  @author_HK
  Scenario: User should place order: Login before checkout
    When I click on "Signup / Login" button
    Then I Verify "Login to your account" is visible
    And I enter correct email address "software1@gmail.co.uk", password "Software123$"
    And I click on login button
    Then I  Verify that "Logged in as" username is visible
    And I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    And I should see the text on checkout page "Review Your Order"
    And I should see the text on checkout page "Address Details"
    And I enter details into comment area "If no one available at home, deliver to neighbour"
    And I click on place order button
    Then I enter payment details "Creative Tester" "4263982640269277" "567" "03" and "2025"
    And I click on Pay and Confirm Order button
    Then I should see the order confirmation message "Congratulations! Your order has been confirmed!"
#    And I click Delete Account button
#    Then I  Verify that "ACCOUNT DELETED!" is visible after deleted
#    And I Click Continue button


  @author_HK
  Scenario: User verify address details in checkout page
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
    And I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    Then I should see the delivery address is same address filled at the time registration of account "10 Formby Avenue"
    And I should see billing address is same address filled at the time registration of account "10 Formby Avenue"
    And I click Delete Account button
    Then I  Verify that "ACCOUNT DELETED!" is visible after deleted
    And I Click Continue button


  @author_HK
  Scenario: User should download invoice after purchase order
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
    And I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    And I should see the text on checkout page "Review Your Order"
    And I should see the text on checkout page "Address Details"
    And I enter details into comment area "If no one available at home, deliver to neighbour"
    And I click on place order button
    Then I enter payment details "Creative Tester" "4263982640269277" "567" "03" and "2025"
    And I click on Pay and Confirm Order button
    Then I should see the order confirmation message "Congratulations! Your order has been confirmed!"
    And I click on download invoice after order success
    And I click on continue button after order success
    And I click Delete Account button
    Then I  Verify that "ACCOUNT DELETED!" is visible after deleted
    And I Click Continue button










