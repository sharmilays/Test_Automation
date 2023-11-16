# Ashirbad - Fixed on 10th August
@CallBackQueueTask
Feature: Call Back Queue Task

  @174853
  Scenario Outline: Verify that user is able to click on "Log A Callback" option under new case created
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_174853 |  | CallBackQueueTask |

  @174884_174885
  Scenario Outline: Verify that the user is able to "Add new Call Back" And Verify "all the fields are present" in Log A Call
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Click on Add Button and verify all fields

    Examples: 
      | TC_ID                           |  | TestDataSheet     |
      | CallBackQueueTask_174884_174885 |  | CallBackQueueTask |

  @174886
  Scenario Outline: Verify user is able to Call back as an Agent, Supervisor, Call Escalation Supervisor and Pharamacist
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Click on Add Button and verify 'CallBack By drop down' options

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_174886 |  | CallBackQueueTask |

  @174887
  Scenario Outline: Verify Call back activity will not auto assigned to Lowest user that is pfizer pfizer user
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Click on Add Button and verify all fields
    Then Select Agent call back from Subject dropdown
    And Verify assigned to field to Agenet PAP

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_174887 |  | CallBackQueueTask |

  @174907
  Scenario Outline: Verify subject field consists of all call back process
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Click on Add Button and verify 'Subject drop down' options

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_174907 |  | CallBackQueueTask |

  @175004
  Scenario Outline: Verify user is able to do different Call attempts (Call Attempt 1, call Attempt 2, Call Attempt 3) only when the call status is "In Progress"
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Enter values in fields
    Then Click on Status drop down and select In Progress
    Then Enter Date and Time in Call Attempt1
    And Click on save and verify yser should able to save

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_175004 |  | CallBackQueueTask |

  @175039
  Scenario Outline: Verify that the new task is created with Open Status
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Enter values in fields
    And Click on save and verify yser should able to save
    And Verify task should be created with Open Status

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_175039 |  | CallBackQueueTask |

  @175047
  Scenario Outline: Verify that the new task created is Displaying under Open Activities Related list
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Enter values in fields
    And Click on save and verify yser should able to save
    And Verify new task under Open Activities

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_175047 |  | CallBackQueueTask |

  @175048
  Scenario Outline: Verify that task is related to case
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Enter values in fields
    And Click on save and verify yser should able to save
    And Verify task is related to case

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_175048 |  | CallBackQueueTask |

  @175050
  Scenario Outline: Verify that task is attached to respective Account
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Enter values in fields
    And Click on save and verify yser should able to save
    And Verify task is related to case
    Then Click on Account name and verify call back button

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_175050 |  | CallBackQueueTask |

  @175051
  Scenario Outline: Verify that Open activities related list compact fields contains Status, assigned to, Due date fields
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Enter values in fields
    And Click on save and verify yser should able to save
    And Verify new task under Open Activities
    And Verify Status, AssignedTo and DueDate Fields should present

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_175051 |  | CallBackQueueTask |

  @175146
  Scenario Outline: Verify that once the call back request has been completed the agents will not see them under the list of open activities
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Enter values in fields
    Then Click on Status drop down and select Completed
    And Click on save and verify yser should able to save
    And Verify new task under Activity History

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_175146 |  | CallBackQueueTask |

  @175182
  Scenario Outline: Verify that once the completed task should be moved from open activities to Activity History
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Enter values in fields
    And Click on save and verify yser should able to save
    And Verify new task under Open Activities
    Then Click on Agent Call back in open activities and enter disposition and change status to complete
    Then Navigate to case page and verify task under Activity history

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_175182 |  | CallBackQueueTask |

  @175020
  Scenario Outline: Verify that the disposition reason is mandatory in order to complete the task
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Enter values in fields
    And Click on save and verify yser should able to save
    Then Click on Agent Call back in open activities and change status to complete
    Then Verify Disposition reason is mandatory message should come

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_175020 |  | CallBackQueueTask |

  @175143
  Scenario Outline: Verify that the history is captured for the call attempts
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Enter values in fields
    And Click on save and verify yser should able to save
    Then Click on Agent Call back in open activities and change status to In Progress
    Then Update Call Attempts and verify Task History

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_175143 |  | CallBackQueueTask |

  @175146
  Scenario Outline: Verify that the user is able to Add new Call Back
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    And Click on New button
    And Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button
    Then Verify Case Edit page is opened for New case
    And Enter All mandatory feilds in Case edit page
    Then Close The AdverseEventPage
    Then Verify user should able to click on Log A Call Back and verify add button and click on it
    And Click on Add Button and verify all fields
    And Enter values in fields
    And Click on save and verify yser should able to save
    And Verify new task under Open Activities
    Then Click on Agent Call back in open activities and enter disposition and change status to complete
    Then Navigate to case page and verify task under Activity history

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | CallBackQueueTask_175146 |  | CallBackQueueTask |
