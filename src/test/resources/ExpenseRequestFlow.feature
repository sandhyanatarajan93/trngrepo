@Expense
Feature: Expense Reimbursement Request
  I want to submit the Expense Request

  Background: Login to Appian environment
    Given I setup with "CHROME" browser
    When I set appian URL to "https://vuramsolutionsdev.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "22.4"
    And I set appian locale to "en_US"
    Then I login with username "vuramitem@vuram.com"

  Scenario: Submit the Expense Request
    Given I click on link "Expense"
    Given I set timeout seconds to "10"
    When I click on link "Submit Expense Reimbursement"
    And I set timeout seconds to "10"
    And I populate field "Request Name" with "ExpenseTwo"
    And I populate field "Expense Category[1]" with "Appian World"
    And I populate field "Reimbursement Currency" with "INR"
    And I set timeout seconds to "10"
    And I populate field "Date" with "02/14/2023"
    And I set timeout seconds to "5"
    And I populate field "Expense Type" with "Car rental"
    And I set timeout seconds to "5"
    And I populate field "Payment Mode" with "Cash in Advance"
    And I set timeout seconds to "5"
    And I populate field "Expense Currency" with "INR"
    And I set timeout seconds to "5"
    And I populate field "Conversion Rate" with "0.5"
    And I set timeout seconds to "10"
    And I populate field "Expense Amount" with "1000"
    And I set timeout seconds to "10"
    And I populate field "Expense Notes" with "Client Visit"
    And I set timeout seconds to "10"
    When I click on link "Add new Attachment"
    And I set timeout seconds to "10"
    And I populate field "Expense Item" with "Other"
    And I set timeout seconds to "10"
    And I populate field "Upload Receipt" with "C:\\Users\\sandhyan\\Desktop\\Backup\\Pictures\\Timesheet.png"
    And I populate field "Attachment Notes" with "Flight ticket"
    And I populate field "Comments" with "Business Travel to Delhi"
    And I set timeout seconds to "10"
    When I click on button "REVIEW"
    And I set timeout seconds to "10"
    When I click on button "SUBMIT"
    And I set timeout seconds to "10"
    When I click on button "YES"
    
    
    
    
    
    
