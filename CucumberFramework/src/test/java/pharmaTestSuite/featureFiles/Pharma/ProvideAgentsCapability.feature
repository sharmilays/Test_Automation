@ProvideAgentsCapabilityfeature
Feature: Provide agents capability to re-enroll patients(uninsured & under insured) while keeping existing application active

  @187369
  Scenario Outline: RX Pathways PAP> Verify the FPL table guidelines 2019 for State AK for all HH size and HH income combinations.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    #Then Verify User should able to login in pfizer
    #When Select Case
    #Then Verify Case is Dispalyed in Table or Split View
    #Then Select Documnet Intake
    #And Click on First Patient and perform inbound call
    #Then Click On Search Patient
    #And Verify Add Patient Page appears
    #Then Click on Add Patient
    #And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    #Then Verify User should be redirected to another Page to create Application
    #Then Navigate to the Patient details page > Click on Applications 'New'
    #And Verify  User should be navigated to next page to enter application information
    #Then Select 'Select Service Offering' to Enrollment
    #And Verify Section to Enter Application Information and PAP Information must get displayed
    #Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    #And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    #Then Verify  All the details Should get selected
    #And In PAP Information section Select 'US Resident' as 'Y'
    #Then Verify  Option must get selected as Y
    #Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    #Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    #And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page
    #Then In Application Page > Click on 'Application insurances' >  'New'
    #Then Verify Application Insurance Page must get displayed
    #And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    #Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    #And Verify User must be redirected to Patient Page
    #Then Click on Application number under the 'Applications'
    #And Verify  User must be redirected to Application Page
    #And Click on 'Application Prescriptions' > 'New' 
    #Then Verify User must be redirected to Application Prescription page
    #Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    #And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    #And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    #Then Verify Checkbox is selected and date is set
    #And Click on 'Search State License' and Add 'State Licence'
    #And Click On 'Add Product' Button
    #Then Veriify Section to Enter product Information is Displayed
    #And Select Product Name Form Strength SIG and Pill Qty
    #Then Verify All the details got entered
    #And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    #And Click on Attach Button
    #Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    #And Click on 'PAP Determine Outcom' Button
    #Then Verify Valid Practitioner Pop Up>Click on OK
    #And Navigate to New Tab
    #And Verify whether the overincome message is displayedornot

    Examples: 
      | TC_ID      |  | TestDataSheet |
      | PAP_187369 |  | PAP           |

  @187360
  Scenario Outline: RX Pathways PAP> Verify the FPL table guidelines 2019 for US for all HH size and HH income combinations.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    And Click on 'Search State License' and Add 'State Licence'
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Navigate to New Tab
    And Verify whether the overincome message is displayedornot

    Examples: 
      | TC_ID      |  | TestDataSheet |
      | PAP_187360 |  | PAP           |

  @187392
  Scenario Outline: RX Pathways PAP> Verify the FPL table guidelines 2019 for State AK for all HH size and HH income combinations.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    And Click on 'Search State License' and Add 'State Licence'
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Navigate to New Tab
    And Verify whether the overincome message is displayedornot

    Examples: 
      | TC_ID      |  | TestDataSheet             |
      | PAP_187392 |  | PfizerProductMatrixReview |

  @185823
  Scenario Outline: Pfizer: Portal HCP Login>Verify that HCP should be able to place the added product  refill via portal
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
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    #common steps upto here
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    # Then verify create order button is present and verify finaaloutcome status
    And Click on 'Create Order' Button in new window and Click on Ok Button
    #Then Verify the status of final Income
    #shipping
    Then Click on view orders
    Then get the PatientId and OrderID
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    And wait for page load
    And Select Order ID>>enter Order value
    And Click on Search
    When Click on Order ID link
    Then Verify Order Product IH page opens
    Then Enter the order ship date 68days back
    Then Click on Save
    Then Click on Order Product Detail IH
    And Update the status In Order Product IH Details
    Then Click on Save
    Then Go back to Order Product IH page
    Then Click on Order product shipping > New
    Then Enter Days Supply
    And Enter Shipped to status
    Then Click on Save again
    Then Click on Order Product Detail IH
    Then Click on Order Product Shipping Link
    Then Click on Application ID link
    Then Click on View Order
    Then Then Logout from the PFIZER
    And wait for tenseconds
    And open Browser and enter portal url
    When Enter portal username and password
    And Click On portal Login Button
    And Refresh the Login Page
    And Click On Patient order>Search Patient
    And Click on Patient Order Refill
    And Click on 'Place Order' Button
    Then Verify Refill is Success

    Examples: 
      | TC_ID                            |  | TestDataSheet             |
      | PfizerProductMatrixReview_185823 |  | PfizerProductMatrixReview |

  @185824
  Scenario Outline: Pfizer: Portal HCP Login>Verify that Product name is displayed along with superscript and generic name for  the new NDC’s added.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter anotherusername and anotherpassword
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    #common steps upto here
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    #Then verify create order button is present and verify finaaloutcome status
    #And Click on 'Create Order' Button in new window and Click on Ok Button
    #Then Verify the status of final Income
    #Then Verify 'Products Information Description' Error Message Denied Click On 'Save Outcome' Button
    #Then Verify  User must be redirected to Application Page
    And Navigate to New Tab
    Then click on saveoutcome
    Then Switch to previoustabs
    #Then Then Logout from the PFIZER
    And wait for tenseconds
    # And   open Browser and enter url
    # When Enter anotherusername and anotherpassword
    # And  Click On Login Button
    #And  wait for page load
    #Then click on History Tab
    # And Click on FirstTab
    # And Click on Apllicationno
    #And click on Minimize
    #Then Click on Add Patient
    #Then search the patient
    # Then Click on PatientId
    #And Click on Apllicationno
    And Click on PAP Appeal Tab
    # Then Verify Appeal information page is opened with the Reason for Denial should display
    #Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Select the reason and add the mandatory detials and save
    #Then Click on Refersh Button
    #Then Verify Appeal got saved
    #Then Go to Application Prescription Page
    Then click on ApplicationPrecriptionid
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    #shipping
    Then Click on view orders
    Then get the PatientId and OrderID
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    And wait for page load
    And Select Order ID>>enter Order value
    And Click on Search
    When Click on Order ID link
    Then Verify Order Product IH page opens
    Then Enter the order ship date 68days between
    Then Click on Save
    Then Click on Order Product Detail IH
    And Update the status In Order Product IH Details
    Then Click on Save
    Then Go back to Order Product IH page
    Then Click on Order product shipping > New
    Then Enter Days Supply
    And Enter Shipped to status
    Then Click on Save again
    Then Click on Order Product Detail IH
    Then Click on Order Product Shipping Link
    Then Click on Application ID link
    Then Click on View Order
    Then Then Logout from the PFIZER
    And wait for tenseconds
    And open Browser and enter portal url
    When Enter portal username and password
    And Click On portal Login Button
    #And Refresh the Login Page
    And Click On Patient order>Search Patient
    Then Check whether the generic name is displaying

    Examples: 
      | TC_ID                            |  | TestDataSheet             |
      | PfizerProductMatrixReview_185824 |  | PfizerProductMatrixReview |

  @185826
  Scenario Outline: Pfizer: Portal HCP Login>Verify that HCP should not be able to place a refill via portal if he does not meet the refill date Eligibility criteria
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
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    #common steps upto here
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    #Then verify create order button is present and verify finaaloutcome status
    #And Click on 'Create Order' Button in new window and Click on Ok Button
    #Then Verify the status of final Income
    #Then Verify 'Products Information Description' Error Message Denied Click On 'Save Outcome' Button
    #Then Verify  User must be redirected to Application Page
    And Navigate to New Tab
    Then click on saveoutcome
    Then Switch to previoustabs
    Then Then Logout from the PFIZER
    And wait for tenseconds
    And open Browser and enter url
    When Enter anotherusername and anotherpassword
    And Click On Login Button
    #Then click on History Tab
    # And Click on FirstTab
    # And Click on Apllicationno
    #And click on Minimize
    #Then Click on Add Patient
    #Then search the patient
    Then Click on PatientId
    And Click on Apllicationno
    And Click on PAP Appeal Tab
    # Then Verify Appeal information page is opened with the Reason for Denial should display
    #Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Select the reason and add the mandatory detials and save
    #Then Click on Refersh Button
    #Then Verify Appeal got saved
    #Then Go to Application Prescription Page
    Then click on ApplicationPrecriptionid
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    #shipping
    Then Click on view orders
    Then get the PatientId and OrderID
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    And wait for page load
    And Select Order ID>>enter Order value
    And Click on Search
    When Click on Order ID link
    Then Verify Order Product IH page opens
    Then Enter the order ship date 68days between
    Then Click on Save
    Then Click on Order Product Detail IH
    And Update the status In Order Product IH Details
    Then Click on Save
    Then Go back to Order Product IH page
    Then Click on Order product shipping > New
    Then Enter Days Supply
    And Enter Shipped to status
    Then Click on Save again
    Then Click on Order Product Detail IH
    Then Click on Order Product Shipping Link
    Then Click on Application ID link
    Then Click on View Order
    Then Then Logout from the PFIZER
    And wait for tenseconds
    And open Browser and enter portal url
    When Enter portal username and password
    And Click On portal Login Button
    And Refresh the Login Page
    And Click On Patient order>Search Patient
    Then Refill button should be disabled

    Examples: 
      | TC_ID                            |  | TestDataSheet             |
      | PfizerProductMatrixReview_185826 |  | PfizerProductMatrixReview |

  @106612
  Scenario Outline: Verify on application prescription page agent should be able to select the check box “Prescriber Signature” and enter the date on the field “Prescriber Signature Date” based on the enrollment form received.
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
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'

    #Then Verify on application prescription page agent should be able to select the check box “Prescriber Signature” and enter the date on the field “Prescriber Signature Date” based on the enrollment form received
    Examples: 
      | TC_ID                              |  | TestDataSheet               |
      | PrescriptionPageValidations_106612 |  | PrescriptionPageValidations |

  @106614
  Scenario Outline: Verify on application prescription page agent should be able to mark the fields “Prescriber Signature” and “Prescriber Signature Date” as blank.
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
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Click on 'Search State License' and Add 'State Licence'
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Verify OVM validation Screen And Agent is not able to create an Order

    Examples: 
      | TC_ID                              |  | TestDataSheet               |
      | PrescriptionPageValidations_106614 |  | PrescriptionPageValidations |

  @106615
  Scenario Outline: Verify agent is able to see the incomplete reason is displayed as “Missing Prescriber Consent Signature Date”
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
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Click on 'Search State License' and Add 'State Licence'
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Navigate to New Tab
    Then Verify agent is able to see the incomplete reason is displayed as “Missing Prescriber Consent Signature”

    Examples: 
      | TC_ID                              |  | TestDataSheet               |
      | PrescriptionPageValidations_106615 |  | PrescriptionPageValidations |

  @106616
  Scenario Outline: Verify agent is able to see the incomplete reason is displayed as “Missing Prescriber Consent Signature Date”
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
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Click on 'Search State License' and Add 'State Licence'
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Navigate to New Tab
    Then Verify agent is able to see the incomplete reason is displayed as “Missing Prescriber Consent Signature”

    Examples: 
      | TC_ID                              |  | TestDataSheet               |
      | PrescriptionPageValidations_106616 |  | PrescriptionPageValidations |

  @106617
  Scenario Outline: Verify that agent is not able to “Create an Order” or “Submit for a supervisor override”.
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
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Click on 'Search State License' and Add 'State Licence'
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Verify OVM validation Screen And Agent is not able to create an Order

    Examples: 
      | TC_ID                              |  | TestDataSheet               |
      | PrescriptionPageValidations_106617 |  | PrescriptionPageValidations |

  @106618
  Scenario Outline: Verify that the application is marked as incomplete
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
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Navigate to New Tab
    Then Verify the Application Incomplete Status

    Examples: 
      | TC_ID                              |  | TestDataSheet               |
      | PrescriptionPageValidations_106618 |  | PrescriptionPageValidations |

  @106620
  Scenario Outline: Verify that Prescriber Signature and Prescriber Signature Date will be auto populated from the previous prescription present as it is the same practitioner
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
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button and Verify the Popup Information
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify the popup
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    Then Verify Checkbox is selected and date is set

    Examples: 
      | TC_ID                              |  | TestDataSheet               |
      | PrescriptionPageValidations_106620 |  | PrescriptionPageValidations |

  @106621
  Scenario Outline: Verify that the fields “Prescriber Signature” and “Prescriber Signature Date” is blank  >  should be populated by the agent based on the new prescriber consent received and will not be carried over from the previous application prescription
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
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button and Verify the Popup Information
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify the popup
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    Then please Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button
    Then Verify Checkbox is not selected

    Examples: 
      | TC_ID                              |  | TestDataSheet               |
      | PrescriptionPageValidations_106621 |  | PrescriptionPageValidations |

  @168058
  Scenario Outline: Verify that user should not be able to place refill order when the release date for the new refill order is greater than the RX expiry date (365 days from Rx date for group LOE)
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter anotherusername and anotherpassword
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then get the RXID
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Navigate to New Tab
    Then click on saveoutcome
    Then Switch to previoustabs
    And wait for tenseconds
    And Click on PAP Appeal Tab
    Then Select the reason and add the mandatory detials and save
    Then click on ApplicationPrecriptionid
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on view orders
    Then get the PatientId and OrderID
    #Then switch to salesforceclassic
    #Then Change the rxdate
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    And Select Order ID>>enter Order value
    And Click on Search
    When Click on Order ID link
    Then Click on Order Product Detail IH
    And Update the status In Order Product IH Details
    Then Click on Save
    Then Go back to Order Product IH page
    Then Click on Order product shipping > New
    Then Enter Days Supply
    And Enter Shipped to status
    Then Click on Save again
    #Then Click on Order Product Detail IH
    Then Click on Order Product Shipping Link
    Then Click on Application ID link
    Then Click on View Order
    Then Then Logout from the PFIZER
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    #    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    When Select Global Search
    Then select PatientID>>Field>>Value>>Search
    And Click on Search
    And Click on First>>PatientID link
    #    Then Click on Application number under the 'Applications'
    Then Click on View Order
    And Select Second order created
    Then Click on Refill button
    Then Accept OK>>Click on place Refill Button
    Then Verify the error message

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | RXdurationbyGroup_168058 |  | RXdurationbyGroup |

  @168053
  Scenario Outline: Verify that user should not be able to place refill order when the release date for the new refill order is greater than the RX expiry date (365 days from RX date)
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
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    #common steps upto here
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    And Enter refilquantity
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    #Then Select 'Original RX' and 'GovernmentID'
    Then Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then get the RXID
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on view orders
    Then get the PatientId and OrderID
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    And Select Order ID>>enter Order value
    And Click on Search
    When Click on Order ID link
    Then Click on Order Product Detail IH
    And Update the status In Order Product IH Details
    Then Click on Save
    Then Go back to Order Product IH page
    Then Click on Order product shipping > New
    Then Enter Days Supply
    And Enter Shipped to status
    Then Click on Save again
    Then Click on Order Product Shipping Link
    Then Click on Application ID link
    Then Click on View Order
    Then Then Logout from the PFIZER
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    When Select Global Search
    Then select PatientID>>Field>>Value>>Search
    And Click on Search
    And Click on First>>PatientID link
    Then Click on Application number under the 'Applications'
    Then Click on View Order
    And Select Second order created
    Then Click on Refill button
    Then Accept OK>>Click on place Refill Button
    Then Verify the error message

    Examples: 
      | TC_ID                    |  | TestDataSheet     |
      | RXdurationbyGroup_168053 |  | RXdurationbyGroup |

  @222351
  Scenario Outline: Verify that outcome is incomplete and diff verbiage will be displayed
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
    Then Read The Patient ID From TextFile
    Then Select PatientID>Enter Patient ID>Click on Search
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Fetch Enrollment End Date
    Then Click on View order
    Then get the PatientId and OrderID
    Then Close All the All Tabs
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    And Select Order ID>>enter Order value
    And Click on Search
    When Click on Order ID link
    Then Click on Order Product Detail IH
    And Update the status In Order Product IH Details
    Then Click on Save
    Then Go back to Order Product IH page
    Then Click on Order product shipping > New
    Then Enter Days Supply
    And Enter Shipped to status
    Then Click on Save again
    Then Click on Order Product Detail IH
    Then Click on Order Product Shipping Link
    Then Click on Application ID link
    Then Click on View Order
    Then Then Logout from the PFIZER
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Select PatientID>Enter Patient ID>Click on Search
    And Click On 'Attach Case'>Select 'ReEnrollment'> Click on 'Attach Case' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Re-Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'N' For ReEnrollment
    Then Verify  Option must get selected as N For ReEnrollment
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Verify 'not US Resident' Error Message in OVM Window
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify 'Prescription Will be Queued' Error Message is not Displayed
    And Click on Application ID
    Then Verify Approval Status in the Application Page

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | ReEnrollment_222351 |  | ReEnrollment  |

  @222334
  Scenario Outline: Verify that prescriber consent sign and date should not populated
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
    Then Read The Patient ID From TextFile
    Then Select PatientID>Enter Patient ID>Click on Search
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Fetch Enrollment End Date
    Then Click on View order
    Then get the PatientId and OrderID
    Then Close All the All Tabs
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    And Select Order ID>>enter Order value
    And Click on Search
    When Click on Order ID link
    Then Click on Order Product Detail IH
    And Update the status In Order Product IH Details
    Then Click on Save
    Then Go back to Order Product IH page
    Then Click on Order product shipping > New
    Then Enter Days Supply
    And Enter Shipped to status
    Then Click on Save again
    Then Click on Order Product Detail IH
    Then Click on Order Product Shipping Link
    Then Click on Application ID link
    Then Click on View Order
    Then Then Logout from the PFIZER
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Select PatientID>Enter Patient ID>Click on Search
    And Click On 'Attach Case'>Select 'ReEnrollment'> Click on 'Attach Case' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Re-Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'N' For ReEnrollment
    Then Verify  Option must get selected as N For ReEnrollment
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    Then Verify 'Prescriber Consent Sign Date' is not Auto Populated

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | ReEnrollment_222334 |  | ReEnrollment  |

  @222330
  Scenario Outline: Verify that view logs are generated for both enrollments
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    When Select Application
    Then Select Desired View
    And Click on First Application ID in Desired View
    And Fetch Enrollment End Date
    Then Click on Applicant Name Link
    And Fetch Patient ID Number
    And Create 'Supporting Documents'
    Then Then Logout from the PFIZER
    #
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Select PatientID>Enter Patient ID>Click on Search
    And Click On 'Attach Case'>Select 'ReEnrollment'> Click on 'Attach Case' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Re-Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Fetch Application ID from Header
    Then Click on Applicant Name Link
    And Click on View Logs Button
    Then Verify Event logs For Both the Applications are displayed

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | ReEnrollment_222330 |  | ReEnrollment  |

  @222274
  Scenario Outline: Verify that release date of the re-enrollment order should satisfy 75% criteria for same NDC across enrollments
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    When Select Application
    Then Select Desired View
    And Click on First Application ID in Desired View
    And Fetch Enrollment End Date
    Then Click on Applicant Name Link
    And Fetch Patient ID Number
    And Create 'Supporting Documents'
    Then Then Logout from the PFIZER
    #
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Select PatientID>Enter Patient ID>Click on Search
    And Click On 'Attach Case'>Select 'ReEnrollment'> Click on 'Attach Case' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Re-Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on View order
    And Select Second order created
    Then Verify release date calculation is according to 75 percent criteria

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | ReEnrollment_222274 |  | ReEnrollment  |

  @222258
  Scenario Outline: Verify that  No Re-enrollments allowed for Group C
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    When Select Application
    Then Select Desired View
    And Click on First Application ID in Desired View
    And Fetch Enrollment End Date
    Then Click on Applicant Name Link
    And Fetch Patient ID Number
    And Create 'Supporting Documents'
    Then Then Logout from the PFIZER
    #
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Select PatientID>Enter Patient ID>Click on Search
    And Click On 'Attach Case'>Select 'ReEnrollment'> Click on 'Attach Case' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Re-Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    And Select Refills quantity
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page
    And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify 'No Enrollment for Group C product' Error Message is displayed

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | ReEnrollment_222258 |  | ReEnrollment  |

  @222255
  Scenario Outline: Verify that Exisitng enrollment rules apply the same for Re-enrollments for group LOE
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    When Select Application
    Then Select Desired View
    And Click on First Application ID in Desired View
    And Fetch Enrollment End Date
    Then Click on Applicant Name Link
    And Fetch Patient ID Number
    And Create 'Supporting Documents'
    Then Then Logout from the PFIZER
    #
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Select PatientID>Enter Patient ID>Click on Search
    And Click On 'Attach Case'>Select 'ReEnrollment'> Click on 'Attach Case' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Re-Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify Final outcome is denied because of LOE product in OVM Window
    And Navigate to Application page and click on PAP Appeal
    Then Verify User is able to create the LOE Appeal
    And Navigate to OVM Window and Verify that the user is able to Create an Order

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | ReEnrollment_222255 |  | ReEnrollment  |

  @222248
  Scenario Outline: Verify that status of re-enrollment should be active and enrollment should be inactive when Enrollment application is expired
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    When Select Application
    Then Select Desired View
    And Click on First Application ID in Desired View
    And Fetch Enrollment End Date
    Then Click on Applicant Name Link
    And Fetch Patient ID Number
    And Create 'Supporting Documents'
    Then Then Logout from the PFIZER
    #
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Select PatientID>Enter Patient ID>Click on Search
    And Click On 'Attach Case'>Select 'ReEnrollment'> Click on 'Attach Case' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Re-Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then verify that Active application Checkbox is checked
    Then Click on Applicant Name Link
    And Select Previous Application ID
    Then Verify Active Application CheckBox is Unchecked

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | ReEnrollment_222248 |  | ReEnrollment  |

  @222244
  Scenario Outline: Verify that Exisitng enrollment rules apply the same for Re-enrollments for group D(Govt Id )
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    When Select Application
    Then Select Desired View
    And Click on First Application ID in Desired View
    And Fetch Enrollment End Date
    Then Click on Applicant Name Link
    And Fetch Patient ID Number
    And Create 'Supporting Documents'
    Then Then Logout from the PFIZER
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Select PatientID>Enter Patient ID>Click on Search
    And Click On 'Attach Case'>Select 'ReEnrollment'> Click on 'Attach Case' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Re-Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then click on 'Search state license' and select license
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Verify that agent is able to select the checkbox Pharmacist Review Required
    And Select Value for pharmacist Review Reason
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify 'Prescription Flagged' Error Message is Displayed
    And FetCh Application Prescription ID
    Then Close All the All Tabs
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    Then Click on dropDown Next to H@w text and Select Prescription Product
    And Click on Prescription Product Drop Down and select Pending review list
    Then Verify Prescription is listed in list and Mark as Completed
    Then Then Logout from the PFIZER
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    Then Click on dropDown Next to H@w text and Select Prescription Product Name
    And Click on 'Prescription Product' Drop Down and Select Review Completed
    And Click on Prescription ID from Review Completed List
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify 'Prescription Flagged' Error Message is not Displayed
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify 'Missing Govt Id For Lyrica' is Displayed

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | ReEnrollment_222244 |  | ReEnrollment  |

  @222249
  Scenario Outline: Re-enrollment queue>Due date is in future>Verify that Future re-enrollment checkbox is checked in re-enrollment application page
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
    Then Read The Patient ID From TextFile
    Then Select PatientID>Enter Patient ID>Click on Search
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'Yes' radio button > Click on 'save' Button
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Fetch Enrollment End Date
    Then Close All the All Tabs
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Select PatientID>Enter Patient ID>Click on Search
    And Click On 'Attach Case'>Select 'ReEnrollment'> Click on 'Attach Case' Button
    Then Verify User should be redirected to another Page to create Application
    #    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Re-Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then verify that Future ReEnrollment Checkbox is checked
    Then Click on Applicant Name Link
    And Select Previous Application ID
    Then Verify Future ReEnrollment CheckBox is Unchecked

    Examples: 
      | TC_ID               |  | TestDataSheet |
      | ReEnrollment_222249 |  | ReEnrollment  |

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
    Then Click on the 'AE Warm Transfer Unsuccessfull Reason' drop down field

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

  @228226
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
    Then Enter moret than 255 characters in CEP form Narrative Filled

    Examples: 
      | TC_ID                |  | TestDataSheet |
      | AdverseEvents_250442 |  | AdverseEvents |
