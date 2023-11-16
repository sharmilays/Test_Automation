@MarkingApplication.feature
Feature: Marking Application without Prescriber Details

  @229196
  Scenario Outline: Verify that 'Missing Prescription Information' check box should be present on Application creation page below 'Patient or Patient Representative Signature' check box
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    #Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then Verify 'Missing Prescription Information' Check Box

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_229196 |  | MarkingApplication |

  @229197
  Scenario Outline: Verify that 'Document Received Date' date field should be present on Application creation page below 'Patient or Patient Representative Signature Date' field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then Verify 'Document Received Date' Check Box is Displayed

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_229197 |  | MarkingApplication |

  @229198
  Scenario Outline: Verify that user should be able to check 'Missing Prescription Information' check box
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then Verify 'Missing Prescription Information' Check Box
    And Check the 'Missing Prescription Information' Check Box then Verify its checked

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_229198 |  | MarkingApplication |

  @230444
  Scenario Outline: Verify that user should be able to enter date manually in 'Document Received Date' date field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then Verify 'Document Received Date' Check Box is Displayed
    Then Verify User is able to Enter the date in 'Document Received Date' Feild

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230444 |  | MarkingApplication |

  @230445
  Scenario Outline: Verify that user is able to save the application with 'Missing Prescription Information' check box checked
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    And Check the 'Missing Prescription Information' Check Box then Verify its checked
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230445 |  | MarkingApplication |

  @230446
  Scenario Outline: Verify that user is able to save the application without checking 'Missing Prescription Information' check box
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then Verify 'Document Received Date' Check Box is Displayed
    Then Verify User is able to Enter the date in 'Document Received Date' Feild
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230446 |  | MarkingApplication |

  @230447
  Scenario Outline: Verify that user is able to save the application without entering date in  'Document Received Date' date field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then Verify 'Document Received Date' Check Box is Displayed
    Then Verify User is able to Enter the date in 'Document Received Date' Feild
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230447 |  | MarkingApplication |

  @230448
  Scenario Outline: Create Application-->User navigates to Application details page-->Verify that 'Missing Prescription Information' check box field should be present below 'E-verification(income) Opt-In or opt–out' field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then Verify 'Document Received Date' Check Box is Displayed
    Then Verify User is able to Enter the date in 'Document Received Date' Feild
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then Verify that 'Missing Prescription Information' check box is displayed below 'E verification income Opt In or opt out' field

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230448 |  | MarkingApplication |

  @230449
  Scenario Outline: Create Application-->User navigates to Application details page-->Verify that 'Document Received Date' field should be present below 'Service Offering Name' field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then Verify 'Document Received Date' Check Box is Displayed
    Then Verify User is able to Enter the date in 'Document Received Date' Feild
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then Verify 'Document Received Date' field is present below 'Service Offering Name' field

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230449 |  | MarkingApplication |

  @230450
  Scenario Outline: Create Application without checking  'Missing Prescription Information'  check box-->User navigates to Application details page-->Verify that 'Missing Prescription Information' check box field should be unchecked
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then Verify 'Document Received Date' Check Box is Displayed
    Then Verify User is able to Enter the date in 'Document Received Date' Feild
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then Verify that 'Missing Prescription Information' check box is Uncheacked below 'E verification income Opt In or opt out' field

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230450 |  | MarkingApplication |

  @230451
  Scenario Outline: Create Application-->User navigates to Application details page-->Verify that 'Document Received Date' field should be present below 'Service Offering Name' field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then Verify 'Document Received Date' Check Box is Displayed
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then Verify 'Document Received Date' field is Blank below 'Service Offering Name' field

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230451 |  | MarkingApplication |

  @230452
  Scenario Outline: Create Application after checking  'Missing Prescription Information'  check box-->User navigates to Application details page-->Verify that 'Missing Prescription Information' check box field should be checked
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    And Check the 'Missing Prescription Information' Check Box then Verify its checked
    And Select any Income document type > Click on 'Save' Button
    Then Verify 'Document Received Date' field is Blank below 'Service Offering Name' field
    Then Verify that 'Missing Prescription Information' check box is cheacked below 'E verification income Opt In or opt out' field

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230452 |  | MarkingApplication |

  @230459
  Scenario Outline: Create Application after entering date in 'Document Received Date' field  -->User navigates to Application details page-->Verify that entered date should display in  'Document Received Date' field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then Verify 'Document Received Date' Check Box is Displayed
    Then Verify User is able to Enter the date in 'Document Received Date' Feild
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then Verify 'Document Received Date' field is present below 'Service Offering Name' field

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230459 |  | MarkingApplication |

  @230480
  Scenario Outline: Create application with 'Missing Prescription Information' check box checked-->Navigate to Application Details page-->Verify that 'Approval Status' status should change from 'In Progress'  to 'Incomplete'
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    And Check the 'Missing Prescription Information' Check Box then Verify its checked
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    And Verify Approval Status in Application Page

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230480 |  | MarkingApplication |

  @230506
  Scenario Outline: Create application with 'Missing Prescription Information' check box checked-->Navigate to patient details page--> Verify that Chevron plate indicator color should be 'Yellow'
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    And Check the 'Missing Prescription Information' Check Box then Verify its checked
    And Select any Income document type > Click on 'Save' Button
    And Verify Approval Status in Application Page
    Then Navigate to patient details page
    And Verify that Chevron plate indicator color should be 'Yellow'

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230506 |  | MarkingApplication |

  @230265
  Scenario Outline: Click on 'Edit' button to Edit Application--> User navigates to Application edit page--> Uncheck the 'Missing Prescription Information' check box and click on 'Save' button--> Verify that 'Approval Status' should remain 'Incomplete'.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Click on 'Supporting documents' > click on First Document
    #    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    And Check the 'Missing Prescription Information' Check Box then Verify its checked
    And Select any Income document type > Click on 'Save' Button
    And Verify Approval Status in Application Page
    Then Click on Edit Page button
    And UnCheck the 'Missing Prescription Information'
    And Select any Income document type > Click on 'Save' Button
    And Verify Approval Status in Application Page

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230265 |  | MarkingApplication |

  @230275
  Scenario Outline: Verify that the prescriber’s detail missing logs should not be generated
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    And Check the 'Missing Prescription Information' Check Box then Verify its checked
    And Select any Income document type > Click on 'Save' Button
    And Verify Approval Status in Application Page
    Then Click on Applicant Name Link
    And Click on View Logs Button
    Then Verify prescriber’s detail missing logs is not be generated

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230275 |  | MarkingApplication |

  @230276
  Scenario Outline: Verify that as the prescriber’s detail missing, document letter should not be generated.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button 
    Then Select 'Reenrollment' and 'PAP Appeal Document' Type of Document
    Then Enter 'Application Signature Date' in Date Box
    And Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    And Check the 'Missing Prescription Information' Check Box then Verify its checked
    And Select any Income document type > Click on 'Save' Button
    And Verify Approval Status in Application Page
    Then Click on Applicant Name Link
    Then Click on Letters Tab
    And Verify document letter is not generated

    #  Then Close All the All Tabs
    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | MarkingApplication_230276 |  | MarkingApplication |
