@AdverseEvent
Feature: QC 1 Team Reviews and Moves Case to QC 2 Team in SalesForce

  @229589
  Scenario Outline: Verify that agent assigned all adverse case should display in the QC1 member Queue
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_229589 |  | AdverseEvents |

  @255421
  Scenario Outline: Verify that once the QC1 and QC2 team member clicked on " Email CEP Form to DSU " button, " Email CEP Form to DSU " button should be disable
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button
    And Verify that Email CEP Form to DSU button is diabled after click

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_255421 |  | AdverseEvents |

  @249631
  Scenario Outline: Verify that QC2 team should be able to see the Preview button and preview the CEP Form PDF
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'
    Then Verify that Email CEP form to DSU button is displayed

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_249631 |  | AdverseEvents |

  @249629
  Scenario Outline: Verify that QC2   should be able to (edit)make changes in CEP Form Field values
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button
    Then Close the window and click on the edit button and edit the information in the AE page

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_249629 |  | AdverseEvents |

  @249617
  Scenario Outline: Verify that QC2 is able to attach the Case to the correct Patient ID if it is not attached to the correct Patient ID.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'

    #Then Go to the AE Page Click on the 'Email CEP Form to DSU' button
    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_249617 |  | AdverseEvents |

  @228218
  Scenario Outline: Very that QC2 is able to send email to DSU as an attachment to DSU from Salesforce.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'

    Examples: 
      | TC_ID                 |  | TestDataSheet |
      | Adverse Events_228218 |  | AdverseEvents |

  @228219
  Scenario Outline: Verify that systems checks automatically from AE status QC2 in Progress changed to 'CEP Form Sent to Pfizer'
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'

    Examples: 
      | TC_ID                 |  | TestDataSheet |
      | Adverse Events_228219 |  | AdverseEvents |

  @228220
  Scenario Outline: Verify that data displayed in the CEP form pdf should be matched with the salesforce system AE data record
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'

    Examples: 
      | TC_ID                 |  | TestDataSheet |
      | Adverse Events_228220 |  | AdverseEvents |

  @228221 @AdverseEventSep
  Scenario Outline: Verify that system Attach the CEP form in the respective Case AE record
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'

    Examples: 
      | TC_ID                 |  | TestDataSheet |
      | Adverse Events_228221 |  | AdverseEvents |

  @228222
  Scenario Outline: Verify that Agents QC team be able to again mark the case as Safety Event and save if initially the status was changed to Not an AE
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Go to case page by clicking the case number hyerlink and click on the edit link

    Examples: 
      | TC_ID                 |  | TestDataSheet |
      | Adverse Events_228222 |  | AdverseEvents |

  @210619
  Scenario Outline: Login with Supervisor Manager login Verify that Supervisor Manager should be able to access the report when required from SalesForce
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    Then Select Reports
    Then Select the 'AE Reports' folder
    Then Select appropriate report folder 'AE Reports'
    Then Verify user can access 'AE Warm Transfer to DSU Unsuccessful' report folder

    Examples: 
      | TC_ID                 |  | TestDataSheet |
      | Adverse Events_210619 |  | AdverseEvents |

  @216334
  Scenario Outline: TC_Login with Supervisor Manager login Verify that Supervisor Manager should be able to access the report when required from SalesForce
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    Then Select Reports
    Then Select the 'AE Reports' folder
    Then Select appropriate report folder 'AE Reports'
    Then Verify user can access 'Daily Report - AE's without AER#' report folder

    Examples: 
      | TC_ID                 |  | TestDataSheet |
      | Adverse Events_216334 |  | AdverseEvents |

  @216341
  Scenario Outline: Login with Supervisor Manager login Verify that no AE left unattended
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    Then Select Reports
    Then Select the 'AE Reports' folder
    Then Select appropriate report folder 'AE Reports'
    Then Verify user can access 'End of Month Report of all AE Warm Tran' report folder

    Examples: 
      | TC_ID                 |  | TestDataSheet |
      | Adverse Events_216341 |  | AdverseEvents |

  @229603
  Scenario Outline: Verify that the AE identified during Audit reason exists in the AE Warm transfer failure reason dropdown field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click on the 'AE Warm Transfer Unsuccessfull Reason' drop down field1

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_229603 |  | AdverseEvents |

  @229604
  Scenario Outline: Verify that QC1 member should be able to generate CEP Form in PDF format.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_229604 |  | AdverseEvents |

  @229605
  Scenario Outline: Verify that QC1 member should be able to send CEP form PDF to DSU without QC2 process
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_229605 |  | AdverseEvents |

  @229606
  Scenario Outline: Verify that data displayed in the CEP form pdf should be matched with the salesforce system AE data record and attached PDF form alignment should be same as CEP form template should be same
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_229606 |  | AdverseEvents |

  @229607
  Scenario Outline: Verify that System should automatically change AE status from QC 1 In-Progress to CEP Sent to Pfizer
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'
    Then Click on the 'AE Status' dropdown field and select 'CEP Sent to Pfizer' value and click on the save button

    #Then Go back to case page ,check whether the CEP form Sent to Pfizer checkbox in checked AE information section in case page
    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_229607 |  | AdverseEvents |

  @229610
  Scenario Outline: Verify that QC team should be able to update the AER# number in the case page
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'
    Then Click on the 'AE Status' dropdown field and select 'CEP Sent to Pfizer' value and click on the save button
    Then Go back to case page ,check whether the CEP form Sent to Pfizer checkbox in checked AE information section in case page
    Then Check whether the AER number can be entered in the AER number field

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_229610 |  | AdverseEvents |

  @229612
  Scenario Outline: TC_Verify that agent should be able to spell check all entered field values
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter the incorrect text and verify whether spell check in raised with the possible values

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_229612 |  | AdverseEvents |

  @250458
  Scenario Outline: Verify that the 'AE identified during Audit' reason exists in the AE Warm transfer failure reason dropdown field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click on the 'AE Warm Transfer Unsuccessfull Reason' drop down field1

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250458 |  | AdverseEvents |

  @250460
  Scenario Outline: Verify that QC1 member should be able to send CEP form PDF to DSU without QC2 process
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250460 |  | AdverseEvents |

  @250461
  Scenario Outline: Verify that data displayed in the CEP form pdf should be matched with the salesforce system AE data record and attached PDF form alignment should be same as CEP form template should be same
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250461 |  | AdverseEvents |

  @250462
  Scenario Outline: Verify that System should automatically change AE status from QC 1 In-Progress to CEP Sent to Pfizer
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button
    Then Go back to AE page ,check whether the AE status 'QC1 in Progress' is changed to CEP Sent to Pfizer

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250462 |  | AdverseEvents |

  @250463
  Scenario Outline: Verify that System automatically checks the Check Box “CEP Form Sent to Pfizer” on Case.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250463 |  | AdverseEvents |

  @250464
  Scenario Outline: Verify that CEP form file name  attached in the mail should be same as case number
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250464 |  | AdverseEvents |

  @250465
  Scenario Outline: Verify that QC team should be able to update the AER# number in the case page
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button
    Then Go back to case page ,check whether the CEP form Sent to Pfizer checkbox in checked AE information section in case page1
    Then Check whether the AER number can be entered in the AER number field

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250465 |  | AdverseEvents |

  @250467
  Scenario Outline: Verify that agent should be able to spell check all entered field values
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter the incorrect text and verify whether spell check in raised with the possible values

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250467 |  | AdverseEvents |

  @250468
  Scenario Outline: Verify that only QC1 and QC2 team should be able to send a mail to DSU and agent should not be able to send any mails to DSU
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250468 |  | AdverseEvents |

  @250469
  Scenario Outline: AE Date Sent to DSU field should be automatically update once the AE status changed to CEP Sent to Pfizer.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button
    Then Check whether the 'AE Date Sent to DSU' is automaticaly populated once the email is generated

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250469 |  | AdverseEvents |

  @250466
  Scenario Outline: Verify that the email recipient should be USA.AEReporting@Pfizer.com with the subject number CEP 5570 LRN <casenumber>
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250466 |  | AdverseEvents |

  @250476
  Scenario Outline: QC1 team should be able to Edit the AE information, Preview and Save the CEP Form in PDF with updated version
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button

    #Then Close the window and click on the edit button and edit the information in the AE page
    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250476 |  | AdverseEvents |

  @250477
  Scenario Outline: Verify that QC1 team should have ability to download and attach the CEP Form PDF to the email.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250477 |  | AdverseEvents |

  @250478
  Scenario Outline: Verify that System is be able to change the copy with version, and date for history after the update in the CEP form email sent to DSU and save in the preview button
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button
    Then Click on the 'Refresh' button and click on 'Save' button from preview

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250478 |  | AdverseEvents |

  @250479
  Scenario Outline: QC1 team should be able to locate the initial Email in Pfizer Safety Event Mailbox where this DL is Bcc’d using the LRN number manually and should be able to forward the same email to DSU’s Email ID manually
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250479 |  | AdverseEvents |

  @250480
  Scenario Outline: Verify that agent assigned all adverse case should display in the QC1 member Queue
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_250480 |  | AdverseEvents |

  @253124
  Scenario Outline: QC1 team should be able to locate the initial Email in Pfizer Safety Event Mailbox where this DL is Bcc’d using the LRN number manually and should be able to forward the same email to DSU’s Email ID manually
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_253124 |  | AdverseEvents |

  @253124
  Scenario Outline: Verify that once the QC1 and QC2 team member clicked on " Email CEP Form to DSU " button, " Email CEP Form to DSU " button should be disable ie QC1/QC2 team should be able to click only one time before the pop up message
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_253124 |  | AdverseEvents |

  @255513
  Scenario Outline: Change AE status Not an AE Verify that system is automatically uncheck Safety Event checkbox and AE Warm transfer to Pfizer Unsuccessful
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the 'AE Status' dropdown field and select 'Not an AE' value and click on the save button

    #Then Go back to case page, check whether 'AE Warm transfer to Pfizer - Unsuccessful' is unchecked1
    Examples: 
      | TC_ID               |  | TestDataSheet |
      | Adverseevent_255513 |  | AdverseEvents |

  @229590
  Scenario Outline: Verify that QC1 member should be able to assign them self or any QC1 member to an AE case by selecting QC1 field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_229590 |  | AdverseEvents |

  @229591
  Scenario Outline: Verify that AE status should be automatically changed to QC1 In-Progress
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_229591 |  | AdverseEvents |

  @229593
  Scenario Outline: Verify that agent assigned adverse case should display in the QC1 member Queue
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_229593 |  | AdverseEvents |

  @229592
  Scenario Outline: Verify that AE status should be automatically changed to QC1 In-Progress
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_229592 |  | AdverseEvents |

  @229594
  Scenario Outline: Verify that system is automatically uncheck “Safety Event” checkbox and “AE Warm transfer to Pfizer - Unsuccessful
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click on the 'AE Warm Transfer Unsuccessfull Reason' drop down field1

    #Then Check wether the checkbox is unchecked
    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_229594 |  | AdverseEvents |

  @229595
  Scenario Outline: Verify that QC1 should be able to edit all the CEP information and save.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_229595 |  | AdverseEvents |

  @229600
  Scenario Outline: Verify that QC1 should be able to change AE status to "Pending QC2 " and Save
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    #    And Click on First Patient
    #     Then check the 'Safety Event' and 'AE Warm Transfer to Pfizer- Unsucessful' Checkbox
    #    Then Verify that agent should be able to capture the note from the caller in Call Notes section in the case page in Salesforce
    #    Then Click on the 'AE Warm Transfer to Pfizer- unsuccesful' checkbox
    #    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_229600 |  | AdverseEvents |

  @229601
  Scenario Outline: Verify that all the fields present in the CEP form should be tracked in the history tracking
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    #    And Click on First Patient
    #     Then check the 'Safety Event' and 'AE Warm Transfer to Pfizer- Unsucessful' Checkbox
    #    Then Verify that agent should be able to capture the note from the caller in Call Notes section in the case page in Salesforce
    #    Then Click on the 'AE Warm Transfer to Pfizer- unsuccesful' checkbox
    #    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_229601 |  | AdverseEvents |

  @229226
  Scenario Outline: Verify that System automatically checks the Check Box “CEP Form Sent to Pfizer” on Case
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC2 field
    Then Check whether the AE status is changed to 'QC 2 in Progress'
    Then Click on the 'AE Status' dropdown field and select 'CEP Sent to Pfizer' value and click on the save button
    Then Go back to case page ,check whether the CEP form Sent to Pfizer checkbox in checked AE information section in case page

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_228226 |  | AdverseEvents |

  @228227
  Scenario Outline: Verfiy AE Date Sent to DSU field should be automatically update once the AE status changed from QC2 in Progress to CEP Sent to Pfizer.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button
    Then Click on the Edit hyperlink of AE page and enter the name in the QC1 field
    Then Check whether the AE status is changed to 'QC 1 in Progress'
    Then Go to the AE Page Click on the 'Email CEP Form to DSU' button

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_228227 |  | AdverseEvents |

  @250442
  Scenario Outline: Verify that agent should be able to enter more than 255 character in “CEP Form Narrative” filed
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter moret than 255 characters in CEP form Narrative Filled

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_250442 |  | AdverseEvents |

  @225617
  Scenario Outline: Verify that agent should be able to check the Safety Event and "AE Warm transfer to Pfizer - Successful Checkboxes in Salesforce and Save."
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Inbound Call
    And Click on First Patient and Verify Checkbox

    #    Then Click on the Case Number
    #    Then In the Adverse Event Information section, click on the edit button
    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225617 |  | PrescriptionPageValidations |

  @225618
  Scenario Outline: Verfiy that the agent is able to add activity log 'Safety Event Report-Warm transfer to Pfizer'
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Click on View Logs Button
    Then Click on 'Add New Log' button
    Then Verify the Safety Event Report Warm transfer to Pfizer values is displayed in the 'Activity code' dropdown field
    Then Click on the 'Save Log' button

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225618 |  | PrescriptionPageValidations |

  @225620
  Scenario Outline: Verify that agent should be able to enter the AE Reference Number provide by DSU Representative in the Activity log in the AE Reference field.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Click on View Logs Button
    Then Click on 'Add New Log' button
    Then Verify the Safety Event Report Warm transfer to Pfizer values is displayed in the 'Activity code' dropdown field
    Then Verfiy that Ae Reference number is entered in the AE reference field in the Activity log section
    Then Click on the 'Save Log' button

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225620 |  | PrescriptionPageValidations |

  @225621
  Scenario Outline: Verify that agent should be able to notate the account with the name of the DSU representative in the activity log.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Click on View Logs Button
    Then Click on 'Add New Log' button
    Then Verify the Safety Event Report Warm transfer to Pfizer values is displayed in the 'Activity code' dropdown field
    Then Verfiy that Ae Reference number is entered in the AE reference field in the Activity log section
    Then Enter the comments in the comments section
    Then Click on the 'Save Log' button

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225621 |  | PrescriptionPageValidations |

  @225622
  Scenario Outline: Verify that agent should be able to capture the note from the caller in Call Notes section in the case page in Salesforce.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    #And Click on First Patient1
    And Click on First Patient and Verify Checkbox

    #    Then check the 'Safety Event' and 'AE Warm Transfer to Pfizer- Unsucessful' Checkbox
    #    Then Verify that agent should be able to capture the note from the caller in Call Notes section in the case page in Salesforce
    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225622 |  | PrescriptionPageValidations |

  @225623
  Scenario Outline: Verfify that agents should be able to select 'Safety Event' and 'AE Warm Transfer to Pfizer-Unsuccessfull' checkboxes
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1

    #    Then check the 'Safety Event' and 'AE Warm Transfer to Pfizer- Unsucessful' Checkbox
    #    Then Verify that agent should be able to capture the note from the caller in Call Notes section in the case page in Salesforce
    #    Then Uncheck the 'Safety Event' and 'AE Warm Transfer to Pfizer- Unsucessful' Checkbox
    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225623 |  | PrescriptionPageValidations |

  @225624
  Scenario Outline: Verfiy  Agent Should be able to capture the reason for Warm transfer failure ie DSU refused call, Long hold time, Call disconnected, AE Identified during Audit
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click on the 'AE Warm Transfer Unsuccessfull Reason' drop down field1

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225624 |  | PrescriptionPageValidations |

  @225625
  Scenario Outline: Verify that agent should get the warning message: "Please check Safety Event and AE Warm Transfer To Pfizer - Unsuccessful to Save AE Information"
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Click on the Save Button in the AE page with entering all information

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225625 |  | PrescriptionPageValidations |

  @225626
  Scenario Outline: Verify that agents should be able to update the CEP Form information in Adverse Event Object
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225626 |  | PrescriptionPageValidations |

  @225627
  Scenario Outline: Verify that default status should be AE Identified
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225627 |  | PrescriptionPageValidations |

  @225628
  Scenario Outline: Verify that agent should be able to change the AE status to QC1 Pending and click on save
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter all the information in the AE page and click on the save button
    Then Verfiy that the AE status field is 'AE identified' in the AE page
    Then Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225628 |  | PrescriptionPageValidations |

  @225630
  Scenario Outline: Verify that agent should be able to  create a new Activity Log by selecting “Safety Event report – unsuccessful transfer – unsuccessful transfer to Pfizer” from the Activity Code drop down menu and Click on Save Log.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Click on View Logs Button
    Then Click on 'Add New Log' button
    Then Verify the Safety Event Report Warm transfer to Pfizer values is displayed in the 'Activity code' dropdown field
    Then Verfiy that Ae Reference number is entered in the AE reference field in the Activity log section
    Then Enter the comments in the comments section
    Then Click on the 'Save Log' button

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225630 |  | PrescriptionPageValidations |

  @225633
  Scenario Outline: Verify that agent should be able to spell check all entered field values
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter the incorrect text and verify whether spell check in raised with the possible values

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225633 |  | PrescriptionPageValidations |

  @225635
  Scenario Outline: Verify that agent should be able to capture the notes from the caller in  SalesForce
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1

    #Then check the 'Safety Event' and 'AE Warm Transfer to Pfizer- Unsucessful' Checkbox
    #Then Verify that agent should be able to capture the note from the caller in Call Notes section in the case page in Salesforce
    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225635 |  | PrescriptionPageValidations |

  @225636
  Scenario Outline: Verify that there separate Adverse Event tab should be present under case
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1

    #Then Verfiy that one Adverse Event Tab is displayed in the case page in the top left most corner and other at bottom left corner
    #    Then Verfiy that one Adverse Event Tab is displayed in the case page in the top left most corner and other at bottom left corner
    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225636 |  | PrescriptionPageValidations |

  @225637
  Scenario Outline: Verify 'AE Reporter Telephone No' field accepting only on the numbers in the 'Reporter Name & contact' section in the AE Page
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    #     Then check the 'Safety Event' and 'AE Warm Transfer to Pfizer- Unsucessful' Checkbox
    #    Then Verify that agent should be able to capture the note from the caller in Call Notes section in the case page in Salesforce
    #    Then Click on the 'AE Warm Transfer to Pfizer- unsuccesful' checkbox
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Enter the alpha numeric in the 'AE Reporter Telephone no' in the Reporter name and Contact section in the AE page and click on Save button

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225637 |  | PrescriptionPageValidations |

  @225638
  Scenario Outline: Verify that the Patient Info-label should be display correctly as in AE page
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    #     Then check the 'Safety Event' and 'AE Warm Transfer to Pfizer- Unsucessful' Checkbox
    #    Then Verify that agent should be able to capture the note from the caller in Call Notes section in the case page in Salesforce
    #    Then Click on the 'AE Warm Transfer to Pfizer- unsuccesful' checkbox
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Verify that the Patient Info label should be display correctly as in AE page

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225638 |  | PrescriptionPageValidations |

  @225651
  Scenario Outline: Verify that agents should be able to verify the Callers information i.e. whether Caller is Patient/HCP
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient1
    #     Then check the 'Safety Event' and 'AE Warm Transfer to Pfizer- Unsucessful' Checkbox
    #    Then Verify that agent should be able to capture the note from the caller in Call Notes section in the case page in Salesforce
    #    Then Click on the 'AE Warm Transfer to Pfizer- unsuccesful' checkbox
    Then Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new
    Then Verify whether in the AE caller type field should display Patient HCP value

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225651 |  | PrescriptionPageValidations |

  @225846
  Scenario Outline: Verify that case status should be in close
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Click on View Logs Button
    Then Click on 'Add New Log' button
    Then Verify the Safety Event Report Warm transfer to Pfizer values is displayed in the 'Activity code' dropdown field
    Then Verfiy that Ae Reference number is entered in the AE reference field in the Activity log section
    Then Enter the comments in the comments section
    Then Click on the 'Save Log' button

    #Then Click on the case number and verify that the case is closed
    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225846 |  | PrescriptionPageValidations |

  @225618
  Scenario Outline: Navigate to Patient account page > Click on 'View logs' Tab > Verify 'Add New Log' Button is available Under 'Event Log' section
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Click on View Logs Button
    Then Click on 'Add New Log' button
    Then Verify the Safety Event Report Warm transfer to Pfizer values is displayed in the 'Activity code' dropdown field
    Then Click on the 'Save Log' button

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225618 |  | PrescriptionPageValidations |

  @225618
  Scenario Outline: Clicked on 'Add New Log' > Verify the User is able to see 'Cancel' Button under 'Edit' Button before saving record
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Click on View Logs Button
    Then Click on 'Add New Log' button
    Then Verify the User is able to see 'Cancel' Button under 'Edit' Button before saving record

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225618 |  | PrescriptionPageValidations |

  @225618
  Scenario Outline: Click on 'Cancel' Button > Verify User is able to Cancel/Undo the Activity Log by clicking on the 'Cancel' Button under the Edit button before saving the log.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Click on View Logs Button
    Then Click on 'Add New Log' button
    Then Verify the User is able to see 'Cancel' Button under 'Edit' Button before saving record
    Then Verify User is able to Cancel or Undo the Activity Log by clicking on the 'Cancel' Button

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225618 |  | PrescriptionPageValidations |

  @225621
  Scenario Outline: Click on 'Add New Log' Button > Do not select any value in 'Activity Code' Drop down > Verify User is  able to Enter  information in Comments if there is a value selected in the 'Activity Code' drop-down.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Click on View Logs Button
    Then Click on 'Add New Log' button
    Then Verify User is not able to enter information in Comments

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225621 |  | PrescriptionPageValidations |

  @225621
  Scenario Outline: Do not select any value in 'Activity Code' > Verify User is not able to enter information in Comments if there is a  no value selected in the Activity Code drop-down
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Click on View Logs Button
    Then Click on 'Add New Log' button
    Then Verify User is not able to enter information in Comments

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225621 |  | PrescriptionPageValidations |

  @225621
  Scenario Outline: Verify the Message stating ' Please Enter Activity Code' is getting displayed if User clicks on 'Save Log' Button without Entering any Value in 'Activity Code'
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Click on View Logs Button
    Then Click on 'Add New Log' button
    Then Click on the 'Save Log' button without entering any values

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225621 |  | PrescriptionPageValidations |

  @225621
  Scenario Outline: Verify that User is not able to see 'Cancel' Button under 'Edit' Button after Saving the Record > Verify that User should not be able to cancel the Activity Log after saving the log.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Click on View Logs Button
    Then Click on 'Add New Log' button
    Then Verify the Safety Event Report Warm transfer to Pfizer values is displayed in the 'Activity code' dropdown field
    Then Verfiy that Ae Reference number is entered in the AE reference field in the Activity log section
    Then Enter the comments in the comments section
    Then Click on the 'Save Log' button

    Examples: 
      | TC_ID                     |  | TestDataSheet               |
      | callerinsalesforce_225621 |  | PrescriptionPageValidations |
