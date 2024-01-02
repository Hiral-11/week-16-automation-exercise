package com.automationexercise.steps.steps;

import com.automationexercise.pages.Homepage;
import com.automationexercise.pages.TestCasesPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.Assert;

public class HomepageSteps {

    @Then("I Verify user is navigated to {string} page successfully")
    public void iVerifyUserIsNavigatedToPageSuccessfully(String text) {
        Assert.assertTrue(new TestCasesPage().getTestCasesText().contains(text),"Test Cases not displayed");
    }

    @When("I scroll down up to subscription link")
    public void iScrollDownUpToSubscriptionLink() {
        new Homepage().scrollDownToSubscriptionLink();
    }
    @Then("I should see {string} text")
    public void iShouldSeeText(String expectedText) {
        Assert.assertEquals(new Homepage().getSubscriptionText(), expectedText);
    }

    @And("I enter email {string}")
    public void iEnterEmail(String email) {
        new Homepage().sendDataToSubscriptionEmail(email);
    }

    @And("I click on arrow button")
    public void iClickOnArrowButton() {
        new Homepage().clickOnArrowToSubscribe();
    }

    @And("I should see the success subscription message {string}")
    public void iShouldSeeTheSuccessSubscriptionMessage(String message) {
        Assert.assertEquals(new Homepage().getSubscriptionSuccessMessage(), message);
    }

    @And("I click on arrow up button at bottom right corner")
    public void iClickOnArrowUpButtonAtBottomRightCorner() {
        new Homepage().clickOnBottomRightArrowButton();
    }

    @And("I should see the message {string}")
    public void iShouldSeeTheMessage(String expectedText) {
        Assert.assertEquals(new Homepage().getFullFledgedText(), expectedText);
    }

    @And("I scroll up to the top")
    public void iScrollUpToTheTop() {
        new Homepage().scrollUp();
    }
}
