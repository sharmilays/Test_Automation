@DocumentURLfeature
Feature: DocumentURL

  @DocumentURL_01
  Scenario Outline: Verify Document URL of Case in Pfizer
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    Then Fetch CaseID from excelsheet>Search>Click on Support Document pdf link>Read DocumentURL>Click on View File>Validate pdf URL

    Examples: 
      | TC_ID          |  | TestDataSheet |
      | DocumentURL_01 |  | DocumentURL   |
