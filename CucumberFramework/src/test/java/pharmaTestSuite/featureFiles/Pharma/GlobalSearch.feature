@GlobalSearch
Feature: Global Search Validations

  @191692
  Scenario Outline: Verify the radio button present on Global search Page and 'Field' drop down values of respective radio buttons.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Verify 'Field' drop down values for 'Patient' radio button
    Then Verify 'Field' drop down values for 'Practitioner' radio button
    Then Verify 'Field' drop down values for 'Facility' radio button
    Then Verify 'Field' drop down values for 'Order' radio button
    Then Verify 'Field' drop down values for 'Application' radio button
    Then Verify 'Field' drop down values for ' Prescription'radio button
    Then Verify 'Field' drop down values for ' External Inquiry'radio button
    Then Verify 'Field' drop down values for 'PO Number' radio button
    Then Then Logout from the PFIZER

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_191692 |  | GlobalSearch  |

  @191924
  Scenario Outline: Verify that field level validations are working properly for 'Patient' search criteria field.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Patient' Radio Button
    And Verify 'Patient' radio button is selected
    And click on search button in global Page
    And Verify 'Please select field' message error Popup
    Then Select a value in feild dropdown
    And click on search button in global Page
    And Verify 'Please enter value' message error Popup
    Then Enter the text in value feild
    And click on search button in global Page
    Then Verify No alert pop is displayed
    Then Then Logout from the PFIZER

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_191924 |  | GlobalSearch  |

  @191956
  Scenario Outline: Verify that field level validations are working properly for 'Practitioner' search criteria field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Practitioner' Radio Button
    And Verify 'Practitioner' radio button is selected
    And click on search button in global Page
    And Verify 'Please select field' message error Popup
    Then Select a value in feild dropdown
    And click on search button in global Page
    And Verify 'Please enter value' message error Popup
    Then Enter the text in value feild
    And click on search button in global Page
    Then Verify No alert pop is displayed

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_191956 |  | GlobalSearch  |

  @192071
  Scenario Outline: Verify that field level validations are working properly for 'Facility' search criteria field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Facility' Radio Button
    And Verify 'Facility' radio button is selected
    And click on search button in global Page
    And Verify 'Please select field' message error Popup
    Then Select a value in feild dropdown
    And click on search button in global Page
    And Verify 'Please enter value' message error Popup
    Then Enter the text in value feild
    And click on search button in global Page
    Then Verify No alert pop is displayed
    Then Then Logout from the PFIZER

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_192071 |  | GlobalSearch  |

  @192082
  Scenario Outline: Verify that field level validations are working properly for 'Order' search criteria field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Order' Radio Button
    And Verify 'Order' radio button is selected
    And click on search button in global Page
    And Verify 'Please select field' message error Popup
    Then Select a value in feild dropdown
    And click on search button in global Page
    And Verify 'Please enter value' message error Popup
    Then Enter the text in value feild
    And click on search button in global Page
    Then Verify No alert pop is displayed
    Then Then Logout from the PFIZER

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_192082 |  | GlobalSearch  |

  @192083
  Scenario Outline: Verify that field level validations are working properly for 'Application' search criteria field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Application' Radio Button
    And Verify 'Application' radio button is selected
    And click on search button in global Page
    And Verify 'Please select field' message error Popup
    Then Select a value in feild dropdown
    And click on search button in global Page
    And Verify 'Please enter value' message error Popup
    Then Enter the text in value feild
    And click on search button in global Page
    Then Verify No alert pop is displayed
    Then Then Logout from the PFIZER

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_192083 |  | GlobalSearch  |

  @192084
  Scenario Outline: Verify that field level validations are working properly for 'Prescription' search criteria field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Prescription' Radio Button
    And Verify 'Prescription' radio button is selected
    And click on search button in global Page
    And Verify 'Please select field' message error Popup
    Then Select a value in feild dropdown
    And click on search button in global Page
    And Verify 'Please enter value' message error Popup
    Then Enter the text in value feild
    And click on search button in global Page
    Then Verify No alert pop is displayed
    Then Then Logout from the PFIZER

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_192084 |  | GlobalSearch  |

  @192085
  Scenario Outline: Verify that field level validations are working properly for ' External Inquiry' search criteria field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'External Inquiry' Radio Button
    And Verify 'External Inquiry' radio button is selected
    And click on search button in global Page
    And Verify 'Please select field' message error Popup
    Then Select a value in feild dropdown
    And click on search button in global Page
    And Verify 'Please enter value' message error Popup
    Then Enter the text in value feild
    And click on search button in global Page
    Then Verify No alert pop is displayed
    Then Then Logout from the PFIZER

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_192085 |  | GlobalSearch  |

  @192088
  Scenario Outline: Verify that field level validations are working properly for 'PO number' search criteria field.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'PO number' Radio Button
    And Verify 'PO number' radio button is selected
    And click on search button in global Page
    And Verify 'Please select field' message error Popup
    Then Enter the 'Invalid PO Number' in value feild
    And click on search button in global Page
    Then Verify 'Invalid PO Number' pop up is displayed
    Then Enter the text in value feild
    And click on search button in global Page
    Then Verify No Alert pop is Appeared and result is Dispalyed
    Then Then Logout from the PFIZER

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_192088 |  | GlobalSearch  |

  @192095
  Scenario Outline: Verify that result should display as per the combination in Search fields and operator selected
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    And Verify 'Patient' radio button is selected
    Then Select a value in feild dropdown
    And Select 'equals' from operator dropdown
    And Enter the equal text in value feild
    Then click on search button in global Page
    Then Verify Patient Result displayed based on 'equals'
    And Select 'starts with' from operator dropdown
    And Enter the Start with text in value feild
    Then click on search button in global Page
    Then Verify Patient Result displayed based on 'starts with'
    Then Then Logout from the PFIZER

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_192095 |  | GlobalSearch  |

  @183305
  Scenario Outline: Verify that 'PO Number' Radio button is present or not
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify 'PO Number' Radio Button is Present

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_183305 |  | GlobalSearch  |

  @183307
  Scenario Outline: Validate Filter Fields should include the following search criteria : PO Number, Patient First Name, Patient Last Name and Patient ID
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify 'PO Number' Radio Button is Present
    And Verify Search Criteria has PO Number,Patient FName,LName and ID

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_183307 |  | GlobalSearch  |

  @183309
  Scenario Outline: Verify that first field of 'Field' search criteria should be 'PO Number' and should be grayed out or not editable
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify 'PO Number' Radio Button is Present
    And Verify first field of 'Field' search criteria is 'PO Number' and not editable

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_183309 |  | GlobalSearch  |

  @183310
  Scenario Outline: Verify that Operator search criteria is grayed out and is set to 'equals' by default for 'PO Number' search field criteria
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify 'PO Number' Radio Button is Present
    And Verify Operator search criteria is grayed out and is set to 'equals' by default

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_183310 |  | GlobalSearch  |

  @183312
  Scenario Outline: Verify that on entering special character user should get proper validation message
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify 'PO Number' Radio Button is Present
    And Enter 'PO Number' Search Value and Click On Search
    Then Verify proper alert validation message

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_183312 |  | GlobalSearch  |

  @183317
  Scenario Outline: Verify the attributes present in search results
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify 'PO Number' Radio Button is Present
    And Enter 'PO Number' Search Value and Click On Search
    Then Verify All the fields Resulted of PO Number

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_183317 |  | GlobalSearch  |

  @183318
  Scenario Outline: Verify that on clicking ,hyperlinks present in results  should navigate to respective screens
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify 'PO Number' Radio Button is Present
    And Enter 'PO Number' Search Value and Click On Search
    And Click on Patient ID Link
    Then Verify user is navigated to Patient's information Screen
    And Click on Order Id
    Then Verify user is navigated to order information Screen
    And Click on Practitioner Id
    Then Verify user is navigated to Practitioner information Screen

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_183318 |  | GlobalSearch  |

  @183319
  Scenario Outline: Verify that clicking on Search button without providing 'PO Number' no search result should display or Error validation should occur
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify 'PO Number' Radio Button is Present
    And Enter 'PO Number' Search Value and Click On Search
    Then Verify proper alert validation message

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_183319 |  | GlobalSearch  |

  @183320
  Scenario Outline: Verify that result should display as per the combination in Search fields and operator selected
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify 'PO Number' Radio Button is Present
    And Enter 'PO Number', First Name and click on Search
    Then Verify Result is according to First Name and PO Number
    And Enter 'PO Number', First Name,Last Name and click on Search
    Then Verify Result is according to First Name,Last Name and PO Number
    And Enter 'PO Number', First Name,Last Name,Patient ID and click on Search
    Then Verify Result is according to First Name,Last Name,Patient ID and PO Number
    And Enter 'PO Number', Last Name and click on Search
    Then Verify Result is according to Last Name and PO Number
    And Enter 'PO Number', Last Name,Patient ID and click on Search
    Then Verify Result is according to Last Name,Patient ID and PO Number
    And Enter 'PO Number', Pateint ID and click on Search
    Then Verify Result is according to Pateint ID and PO Number

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_183320 |  | GlobalSearch  |

  @183321
  Scenario Outline: Verfiy that 'No search result found' should display when user enters data not related to entred PO number
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify 'PO Number' Radio Button is Present
    And Enter 'PO Number', First Name and click on Search
    Then Verify 'No Matching Result' Message

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_183321 |  | GlobalSearch  |

  @185846
  Scenario Outline: Verify that field level validations are working properly for PO number search criteria field.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify 'PO Number' Radio Button is Present
    And Enter Null 'PO Number' Search Value and Click On Search
    Then Verify proper alert validation message
    And Enter Invaid 'PO Number' Search Value and Click On Search
    Then Verify proper alert validation message
    And Enter 'PO Number' Search Value and Click On Search
    Then Verify No alert pop up is appeared

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | GlobalSearch_185846 |  | GlobalSearch  |

  @243433
  Scenario Outline: Login As CRM Agent/Supervisor/-->Click on drop down present next to 'H@WService' text-->Verify that 'Knowledge' link should be present below 'Global Search' link
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    Then Verify 'Knowledge' link is present in the drop down

    Examples: 
      | TC_ID                       |  | TestDataSheet        |
      | StandardGlobalSearch_243433 |  | StandardGlobalSearch |

  @243434
  Scenario Outline: Login As CRM Agent/Supervisor/-->Click on drop down present next to 'H@WService' text-->Verify that on clicking 'Knowledge'' link user should navigate to 'Knowledge' page
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    And Click On 'Knowledge' Link
    Then Verify User is Navigated to 'knowledge' page

    Examples: 
      | TC_ID                       |  | TestDataSheet        |
      | StandardGlobalSearch_243434 |  | StandardGlobalSearch |

  @243435
  Scenario Outline: Login As CRM Agent/Supervisor/-->Click on drop down present next to 'H@WService' text-->Click on 'Knowledge' link user navigates to 'Knowledge' page-->Verify that 'Published Articles' link should be one of the values in list view
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    And Click On 'Knowledge' Link
    Then Verify User is Navigated to 'knowledge' page
    Then Verify 'Piblished Articles' is displayed in list

    Examples: 
      | TC_ID                       |  | TestDataSheet        |
      | StandardGlobalSearch_243435 |  | StandardGlobalSearch |

  @243438
  Scenario Outline: Click on 'Published Articles' link present in list view to navigate to published articles page--> Verify that 'Best practices of Global Search' link should be present
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    And Click On 'Knowledge' Link
    Then Verify User is Navigated to 'knowledge' page
    And Click On 'Published Articles' Link
    Then Verify 'Best Practices of Global Search' is Present in the list

    Examples: 
      | TC_ID                       |  | TestDataSheet        |
      | StandardGlobalSearch_243438 |  | StandardGlobalSearch |

  @243439
  Scenario Outline: Click on  'Best practices of Global Search' link to navigate to 'Best practices of Global Search' page--> Verify that page title should be 'Best practices of Global Search'
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    And Click On 'Knowledge' Link
    Then Verify User is Navigated to 'knowledge' page
    And Click On 'Published Articles' Link
    Then Verify 'Best Practices of Global Search' is Present in the list
    And Click On 'Best Practices of Global Search'
    Then Verify page title is 'Best Practices of Global Search'

    Examples: 
      | TC_ID                       |  | TestDataSheet        |
      | StandardGlobalSearch_243439 |  | StandardGlobalSearch |

  @243440
  Scenario Outline: Click on 'Published Articles' link present in list view to navigate to published articles page--> Click on  'Best practices of Global Search' link to navigate to 'Best practices of Global Search' page--> Verify that URL name should be 'Global-Search'
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    And Click On 'Knowledge' Link
    Then Verify User is Navigated to 'knowledge' page
    And Click On 'Published Articles' Link
    Then Verify 'Best Practices of Global Search' is Present in the list
    And Click On 'Best Practices of Global Search'
    Then Verify URL Name is 'Global Search'

    Examples: 
      | TC_ID                       |  | TestDataSheet        |
      | StandardGlobalSearch_243440 |  | StandardGlobalSearch |