@Application
Feature: Sample feature file that interacts with an Appian application

  Configuring your site with the sample application:
  1. Import the applicable version of Automated Testing - XX.X.zip application, provided in the Shared Components page, into your Appian environment
  2. Log into Appian Designer view on your Appian environment and import the downloaded application zip
  3. After import is complete, click on the Automated Testing application
  4. Find and click on the AUT DS object to open the Appian Data Store Designer
  5. Verify the entity mappings under Schema Management and then Save & Publish the data store

  Prerequisites for running the test on the configured site above:
  1. Run the appropriate setupCustomPropertiesFor... script
  2. Replace BROWSER with either FIREFOX or CHROME
  3. Replace APPIAN_URL with your Appian site URL, beginning with https:// and including /suite at the end (e.g. https://forum.appian.com/suite)
  4. Replace APPIAN_VERSION with a supported Appian Version in xx.x format
  5. Replace APPIAN_LOCALE with either "en_US" or "en_GB"
  5. Replace APPIAN_USERNAME with a valid username for Appian URL above
  6. Open src/main/resources/configs/users.properties and add a line for the above username that is of the form username=password (e.g. test.user=password)

  Background: Login to Appian environment
    Given I setup with "BROWSER" browser
    When I set appian URL to "APPIAN_URL"
    And I set appian version to "APPIAN_VERSION"
    And I set appian locale to "APPIAN_LOCALE"
    Then I login with username "APPIAN_USERNAME"

  Scenario: Fill out Automated Testing Data Input form
    Given I click on menu "Actions"
    Given I click on action "Automated Testing Input"
    When I populate field "title" with "Testing"
    When I populate field "quantity" with "5"
    When I populate field "price" with "1.5"
    When I populate field "start date" with "2019-01-01 02:00"
    Then I click on button "Submit"
