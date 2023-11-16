@LOEAppealsfeature
Feature: LOE Appeals to be carry forwarded

 @213467
  Scenario Outline: Verify appeals team will be able to create the appeal when the patient/hcp sends in the related appeal documentation.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
    And Handle Alert pop Up
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #   Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment and attach second document
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
    Then fetch the Application Number created
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    Then Close All the All Tabs
    Then Then Logout from the PFIZER
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    Then open the developer Console
    Then Click on ok
    And Click on Debug menu in Developers console
    Then Click on Console Apex Window text
    And Edit the Enrollment Start Date and End date in Devlopers console
    And click on Execute
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    Then Search for the applicaton number and enter the details
    Then Click on Applicant Name Link
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page
    #Then In Application Page > Click on 'Application insurances' >  'New' for Reenrollment
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    #And Select the 'Ship To' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_213467 |  | LOEAppeals    |

  @213468
  Scenario Outline: Verify that agent is able to mark the inbound case with document type "PAP Appeal Document".
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
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
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    Then Close All the All Tabs
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Select PatientID>Enter Patient ID>Click on Search
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_213468 |  | LOEAppeals    |

  @213469
  Scenario Outline: Verify that marked inbound cases are listed under “Appeals Cases” list view
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
    And Handle Alert pop Up
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #   Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment and attach second document
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
    Then fetch the Application Number created
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    Then open the developer Console
    And Click on Debug menu in Developers console
    Then Click on Console Apex Window text
    And Edit the Enrollment Start Date and End date in Devlopers console
    And click on Execute
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    Then Search for the applicaton number and enter the details
    Then Click on Applicant Name Link
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page
    #Then In Application Page > Click on 'Application insurances' >  'New' for Reenrollment
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    #And Select the 'Ship To' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Verify  User must be redirected to Application Page
    Then Then Logout from the PFIZER
    And Login as Appeal Specialist Team
    When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
    Then Verify that the Created Case is displayed under Appeal cases
    Then Click on the searched case number

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_213469 |  | LOEAppeals    |

  @213470
  Scenario Outline: Verify that Appeals Specialist Team is able to pick up the cases from this queue and review the PAP Documents submitted by the patient/HCP
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
    And Handle Alert pop Up
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #   Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment and attach second document
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
    Then fetch the Application Number created
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    Then open the developer Console
    And Click on Debug menu in Developers console
    Then Click on Console Apex Window text
    And Edit the Enrollment Start Date and End date in Devlopers console
    And click on Execute
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    Then Search for the applicaton number and enter the details
    Then Click on Applicant Name Link
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page
    #Then In Application Page > Click on 'Application insurances' >  'New' for Reenrollment
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    #And Select the 'Ship To' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Verify  User must be redirected to Application Page
    Then Then Logout from the PFIZER
    And Login as Appeal Specialist Team
    When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
    Then Verify that the Created Case is displayed under Appeal cases
    Then Click on the searched case number

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_213470 |  | LOEAppeals    |

  @213490
  Scenario Outline: Verify that agent is able to create an Appeal in Re-enrollment application
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
    And Handle Alert pop Up
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #   Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment and attach second document
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
    Then fetch the Application Number created
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    Then open the developer Console
    Then Click on ok
    And Click on Debug menu in Developers console
    Then Click on Console Apex Window text
    And Edit the Enrollment Start Date and End date in Devlopers console
    And click on Execute
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    Then Search for the applicaton number and enter the details
    Then Click on Applicant Name Link
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page
    #Then In Application Page > Click on 'Application insurances' >  'New' for Reenrollment
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    #And Select the 'Ship To' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_213490 |  | LOEAppeals    |

  @213491
  Scenario Outline: Pfizer Login > Application is enrolled > Added Insurance) > Application is denied > Agent try to file appeal within 12 months from the application denial date > Verify appeal team is able to create an Appeal
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
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
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_213491 |  | LOEAppeals    |

  @213492
  Scenario Outline: Pfizer Login > Application is enrolled > Added Insurance) > Application is denied > Agent try to file appeal within 12 months from the application denial date > Verify appeal team is able to create an Appeal
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
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
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_213492 |  | LOEAppeals    |

  @213494
  Scenario Outline: Pfizer Login > Added LOE product in Enrollment Application > Appeal approved for the same in Enrollment application > Agent process diffrent LOE Product > Verify that the existing LOE Appeal is not carry forwarded to the re-enrollment
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
    And Handle Alert pop Up
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #   Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment and attach second document
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
    Then fetch the Application Number created
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Verify  User must be redirected to Application Page
    Then Click on Applicant Name Link
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
    #Then Verify Application must get created and Application number must get displayed in Application Page
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Verify 'Final Outcome is Incomplete' Error Message in OVM Window

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_213494 |  | LOEAppeals    |

  @213473
  Scenario Outline: Verify that Appeals Specialist Team is able to pick up the cases from this queue and review the PAP Documents submitted by the patient/HCP
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
    And Handle Alert pop Up
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #   Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment and attach second document
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
    Then fetch the Application Number created
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    Then open the developer Console
    Then Click on ok
    And Click on Debug menu in Developers console
    Then Click on Console Apex Window text
    And Edit the Enrollment Start Date and End date in Devlopers console
    And click on Execute
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    Then Search for the applicaton number and enter the details
    Then Click on Applicant Name Link
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page
    #Then In Application Page > Click on 'Application insurances' >  'New' for Reenrollment
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    #And Select the 'Ship To' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Verify  User must be redirected to Application Page
    Then Then Logout from the PFIZER
    And Login as Appeal Specialist Team
    When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
    Then Verify that the Created Case is displayed under Appeal cases
    Then click on the account name
    And Handle Alert pop Up
    Then Click on Application number under the 'Applications'
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    # Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_213473 |  | LOEAppeals    |

  @213487
  Scenario Outline: Verify that agent is able to mark the inbound case with document type PAP Appeal Document
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
    Then Verify  Option must get selected as N
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Verify 'Final Outcome is Incomplete' Error Message in OVM Window
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    Then Click on Applicant Name Link
    Then click on Application number
    And Click on PAP Appeal Tab
    Then Verify User is able to create the LOE Appeal sucessfully
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Select PatientID>Enter Patient ID>Click on Search
    And Click on 'Attach Case' Button  > select PAP Apeel document > click on 'Attach' Button

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_213487 |  | LOEAppeals    |

  @216770
  Scenario Outline: Verify that the Reason for denial is not going away after saving PAP appeal
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
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
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    Then Click on Applicant Name Link
    Then click on Application number
    And Click on PAP Appeal Tab
    Then select Enrollment Appeal from Dropdown and verify the Following fields
    Then Select Reason for PAP Appeal as 'US Residency' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify that Reason for denial is still displayed

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_216770 |  | LOEAppeals    |

  @217163
  Scenario Outline: Verify reason for Denial is coming for Over income if the application got denied because of over income as well as the LOE product is added
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
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
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Verify 'Household Income over the program eligibility' Error Message in OVM Window

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_217163 |  | LOEAppeals    |

  @217164
  Scenario Outline: Verify agent is not able to create order for LOE product if appeal approved for US residency
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
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
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    Then Click on Applicant Name Link
    Then click on Application number
    And Click on PAP Appeal Tab
    Then select Enrollment Appeal from Dropdown and verify the Following fields
    Then Select Reason for PAP Appeal as 'US Residency' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify that Reason for denial is still displayed

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_217164 |  | LOEAppeals    |

  @217165
  Scenario Outline: Verify agent is able to do LOE Appeal since the approval status is approved because of older prescription
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
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
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    Then Click on Applicant Name Link
    Then click on Application number
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    #Then Click on Refersh Button
    Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_217165 |  | LOEAppeals    |

  @216768
  Scenario Outline: Verify all the fields are arranged properly
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    Then Verify that all Field are arranged properly

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_216768 |  | LOEAppeals    |

  @213488
  Scenario Outline: Verify that marked inbound cases are listed under Appeals Cases list view
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
    And Handle Alert pop Up
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #   Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment and attach second document
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
    Then fetch the Application Number created
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button after attach
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    Then open the developer Console
    Then Click on ok
    And Click on Debug menu in Developers console
    Then Click on Console Apex Window text
    And Edit the Enrollment Start Date and End date in Devlopers console
    And click on Execute
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    Then Search for the applicaton number and enter the details
    #        And Verify  User must be redirected to Application Page
    Then Click on Applicant Name Link
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_213488 |  | LOEAppeals    |

  @213471
  Scenario Outline: Verify that "Appeals Cases" list view is only accessible by the Appeals team
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
    And Handle Alert pop Up
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #   Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment and attach second document
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
    Then fetch the Application Number created
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button after attach
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    Then open the developer Console
    Then Click on ok
    And Click on Debug menu in Developers console
    Then Click on Console Apex Window text
    And Edit the Enrollment Start Date and End date in Devlopers console
    And click on Execute
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    Then Search for the applicaton number and enter the details
    #        And Verify  User must be redirected to Application Page
    Then Click on Applicant Name Link
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_213471 |  | LOEAppeals    |

  @213463
  Scenario Outline: Verify that the existing LOE Appeal is carry forwarded to the re-enrollment
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
    And Handle Alert pop Up
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #   Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment and attach second document
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
    Then fetch the Application Number created
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    Then open the developer Console
    Then Click on ok
    And Click on Debug menu in Developers console
    Then Click on Console Apex Window text
    And Edit the Enrollment Start Date and End date in Devlopers console
    And click on Execute
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    Then Search for the applicaton number and enter the details
    # And Verify  User must be redirected to Application Page
    Then Click on Applicant Name Link
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
    #Then Verify Application must get created and Application number must get displayed in Application Page
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify Final Outcome is 'Approved' and existing LOE Appeal is carry forwarded to ReEnrollment

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_213463 |  | LOEAppeals    |

  @311032
  Scenario Outline: Enrollment_TC_14
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    #Then Login Using PAP cridentials
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    #And Click on First Patient
    And please Click On First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    #And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    #And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    # Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then wait for fiveseconds
    And Do Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Navigate to New Tab
    Then Click on Save Outcome Button
    #Then Then Logout from the PFIZER
    # And   open Browser and enter url
    #Then Login Using PAP cridentials
    #And  Click On Login Button
    And Navigate to Previous Tab
    Then Then Logout from the PFIZER
    #Given open Browser and enter url
    Then Login Using PAP cridentials
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then select appeal cases and click on acountname
    And Click on PAP APEEAL
    And Check The Fields

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311032 |  | LOEAppeals    |

  @311033
  Scenario Outline: Enrollment_TC_15
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    #And Click on First Patient
    And please Click On First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    #And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    #And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    # Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then wait for fiveseconds
    And Do Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Navigate to New Tab
    Then Click on Save Outcome Button
    #Then Then Logout from the PFIZER
    # And   open Browser and enter url
    #Then Login Using PAP cridentials
    #And  Click On Login Button
    And Navigate to Previous Tab
    Then Then Logout from the PFIZER
    #Given open Browser and enter url
    Then Login Using PAP cridentials
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then select appeal cases and click on acountname
    And Click on PAP APEEAL
    Then check The dropdown status

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311033 |  | LOEAppeals    |

  @311034
  Scenario Outline: Enrollment_TC_14
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    #Then Login Using PAP cridentials
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    #And Click on First Patient
    And please Click On First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    #And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    #And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    # Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then wait for fiveseconds
    And Do Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Navigate to New Tab
    Then Click on Save Outcome Button
    #Then Then Logout from the PFIZER
    # And   open Browser and enter url
    #Then Login Using PAP cridentials
    #And  Click On Login Button
    And Navigate to Previous Tab
    Then Then Logout from the PFIZER
    #Given open Browser and enter url
    Then Login Using PAP cridentials
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then select appeal cases and click on acountname
    And Click on PAP APEEAL
    Then Check the Reasons

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311034 |  | LOEAppeals    |

  @311035
  Scenario Outline: Enrollment_TC_17
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    #Then Login Using PAP cridentials
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    #And Click on First Patient
    And please Click On First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    #And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    #And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    # Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then wait for fiveseconds
    And Do Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Navigate to New Tab
    Then Click on Save Outcome Button
    #Then Then Logout from the PFIZER
    # And   open Browser and enter url
    #Then Login Using PAP cridentials
    #And  Click On Login Button
    And Navigate to Previous Tab
    Then Then Logout from the PFIZER
    #Given open Browser and enter url
    Then Login Using PAP cridentials
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then select appeal cases and click on acountname
    And Click on PAP APEEAL
    Then Check the Documents

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311035 |  | LOEAppeals    |

  @311036
  Scenario Outline: Enrollment_TC_17
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    #Then Login Using PAP cridentials
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    #And Click on First Patient
    And please Click On First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    #And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    #And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    # Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then wait for fiveseconds
    And Do Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Navigate to New Tab
    Then Click on Save Outcome Button
    #Then Then Logout from the PFIZER
    # And   open Browser and enter url
    #Then Login Using PAP cridentials
    #And  Click On Login Button
    And Navigate to Previous Tab
    Then Then Logout from the PFIZER
    #Given open Browser and enter url
    Then Login Using PAP cridentials
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then select appeal cases and click on acountname
    And Click on PAP APEEAL
    Then select Avalaible Documents

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311036 |  | LOEAppeals    |

  @311037
  Scenario Outline: Enrollment_TC_19
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    #And Click on First Patient
    And please Click On First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    #And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    #And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    # Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then wait for fiveseconds
    And Do Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Navigate to New Tab
    Then Click on Save Outcome Button
    #Then Then Logout from the PFIZER
    # And   open Browser and enter url
    #Then Login Using PAP cridentials
    #And  Click On Login Button
    And Navigate to Previous Tab
    Then Then Logout from the PFIZER
    #Given open Browser and enter url
    Then Login Using PAP cridentials
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then select appeal cases and click on acountname
    #Then Select global search and go to application page
    And Click on PAP APEEAL
    Then Enter all the fields

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311037 |  | LOEAppeals    |

  @311219
  Scenario Outline: Generic_TC_01
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
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
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed
    And Verify  User must be redirected to Patient Page
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
    And Select Refills quantity
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    #Then Then Logout from the PFIZER
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
    When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
    Then click on the account name
    And Handle Alert pop Up
    Then Click on Application number under the 'Applications'
    And please Navigate to Application page and please click on PAP Appeal
    Then verify the buttons are present

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311219 |  | LOEAppeals    |

  @311220
  Scenario Outline: Generic_TC_02
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    #When Enter username and password
    Then Login Using PAP cridentials
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    # And please Click On First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    #And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    #And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    # Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Do Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Navigate to New Tab
    Then Click on Save Outcome Button
    #Then Then Logout from the PFIZER
    # And   open Browser and enter url
    #Then Login Using PAP cridentials
    #And  Click On Login Button
    And Navigate to Previous Tab
    Then Then Logout from the PFIZER
    #Given open Browser and enter url
    Then Login Using PAP cridentials
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then select appeal cases and click on acountname
    #Then Select global search and go to application page
    And Click on PAP APEEAL
    Then Verify the dropdown is present

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311220 |  | LOEAppeals    |

  @311221
  Scenario Outline: Generic_TC_03
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
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
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select the 'Ship To' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    # Then Then Logout from the PFIZER
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
    When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
    Then click on the account name
    And Handle Alert pop Up
    Then Click on Application number under the 'Applications'
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify the dropdown is present with Values

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311221 |  | LOEAppeals    |

  @311222
  Scenario Outline: Generic_TC_04
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    Then Login Using PAP cridentials
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then select appeal cases and click on View Logs
    And switch on to frame
    And click On Add new Log
    Then Check the Values in Dropdown

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311222 |  | LOEAppeals    |

  @311223
  Scenario Outline: Generic_TC_03
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    Then Login Using PAP cridentials
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then select appeal cases and click on acountname
    And Click on PAP APEEAL
    Then Verify save button is disabled

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311223 |  | LOEAppeals    |

  @311063
  Scenario Outline: Enrollment_TC_45
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
    And Handle Alert pop Up
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    #Then Select PatientID>Enter Patient ID>Click on Search
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment and attach second document
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    # Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then fetch the Application Number created
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    Then Close All the All Tabs
    Then Then Logout from the PFIZER
    And Login as Appeal Specialist Team
    When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
    Then click on the account name
    And Handle Alert pop Up
    Then Click on Application number under the 'Applications'
    And please Navigate to Application page and please click on PAP Appeal
    Then select Enrollment Appeal from Dropdown and verify the Following fields
    Then Select Reason for PAP Appeal as 'US Residency' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    #Then fill in the details
    #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    Then open the developer Console
    #Then Click on ok
    And Click on Debug menu in Developers console
    Then Click on Console Apex Window text
    And Edit the Enrollment Start Date and End date in Devlopers console Expire Enrollment
    And click on Execute
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    Then Search for the applicaton number and enter the details
    Then Click on Applicant Name Link
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Re-Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    # Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify that enrollment outcome is denied

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311063 |  | LOEAppeals    |

  @311064
  Scenario Outline: Enrollment_TC_46
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
    And Handle Alert pop Up
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    #Then Select PatientID>Enter Patient ID>Click on Search
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment and attach second document
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    # Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then fetch the Application Number created
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    Then Close All the All Tabs
    Then Then Logout from the PFIZER
    And Login as Appeal Specialist Team
    When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
    Then click on the account name
    And Handle Alert pop Up
    Then Click on Application number under the 'Applications'
    And please Navigate to Application page and please click on PAP Appeal
    Then select Enrollment Appeal from Dropdown and verify the Following fields
    Then Select Reason for PAP Appeal as 'US Residency' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    #Then fill in the details
    #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    Then open the developer Console
    #Then Click on ok
    And Click on Debug menu in Developers console
    Then Click on Console Apex Window text
    And Edit the Enrollment Start Date and End date in Devlopers console Expire Enrollment
    And click on Execute
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    Then Search for the applicaton number and enter the details
    Then Click on Applicant Name Link
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Re-Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    # Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify that enrollment outcome is denied

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311064 |  | LOEAppeals    |

  @311065
  Scenario Outline: Enrollment_TC_47
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient Inbound fax
    And Handle Alert pop Up
    Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    #Then Select PatientID>Enter Patient ID>Click on Search
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    #Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment and attach second document
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    # Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then fetch the Application Number created
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    Then Close All the All Tabs
    Then Then Logout from the PFIZER
    And Login as Appeal Specialist Team
    When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
    Then click on the account name
    And Handle Alert pop Up
    Then Click on Application number under the 'Applications'
    And please Navigate to Application page and please click on PAP Appeal
    Then select Enrollment Appeal from Dropdown and verify the Following fields
    Then Select Reason for PAP Appeal as 'US Residency' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    #Then fill in the details
    #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    Then open the developer Console
    Then Click on ok
    And Click on Debug menu in Developers console
    Then Click on Console Apex Window text
    And Edit the Enrollment Start Date and End date in Devlopers console Expire Enrollment
    And click on Execute
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    And Refresh the Login Page
    Then Verify User should able to login in pfizer
    Then Search for the applicaton number and enter the details
    Then Click on Applicant Name Link
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Re-Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    # Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify that enrollment outcome is denied
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And Click on PAP Appeal Tab
    Then select Enrollment Appeal from Dropdown and verify the Following fields
    Then Select Reason for PAP Appeal as 'US Residency' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311065 |  | LOEAppeals    |

 @311061
  Scenario Outline: :Enrollment_TC_43
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    #Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    Then clicks on save
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button after attach
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then select Home Delivery Appeal from Dropdown and verify the error msg

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311061 |  | LOEAppeals    |

  @311062
  Scenario Outline: :Enrollment_TC_44
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    #Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button after attach
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then select Home Delivery Appeal from Dropdown and verify the error msg

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311062 |  | LOEAppeals    |

  @311082@AppealNov23
  Scenario Outline: Product_TC_16
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    #Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click On 'Add Product' Button again
    And Select Product Name Form Strength SIG and Pill Qty for Second Product
    And Select Second AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Click on Save Button
    # And Switch to prescription page Frame
    And Click on Attach Button in Second product line
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Verify Agent is not able to create an Order


    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311082 |  | LOEAppeals    |

  @311083@AppealNov23
  Scenario Outline: Product_TC_17
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    #Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311083 |  | LOEAppeals    |

  @311084@AppealNov23
  Scenario Outline: Product_TC_18
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    #Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311084 |  | LOEAppeals    |

  @311085@AppealNov23
  Scenario Outline: Product_TC_19
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    #Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    Then Verify the following fields under Appeal info >Available reason>Available documents

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311085 |  | LOEAppeals    |

  @311086@AppealNov23
  Scenario Outline: Product_TC_20
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    #Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    #Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then get ApplicationId
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
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button

    # Then Verify the Reasons
    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311086 |  | LOEAppeals    |

  @311087@AppealNov23
  Scenario Outline: Product_TC_21
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    #Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    #Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then get ApplicationId
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
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311087 |  | LOEAppeals    |

  @311088@AppealNov23
  Scenario Outline: Product_TC_22
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    #Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    #Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then get ApplicationId
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
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311088 |  | LOEAppeals    |

  @311089@AppealNov23
  Scenario Outline: Product_TC_23
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    #Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    #Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
    Then Click on Application number under the 'Applications'
    And Verify  User must be redirected to Application Page
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then get ApplicationId
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
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button

    #Then Do Enter all the fields
    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311089 |  | LOEAppeals    |

  @311090@AppealNov23
  Scenario Outline: :Product_TC_24
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    #Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311090 |  | LOEAppeals    |

  @311091@AppealNov23
  Scenario Outline: :Product_TC_25
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    #Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Click on Add Patient
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status
    And Select Outreach as Outbound Call
    # Then Add notes in activity Notes
    Then Click on Appeal save button
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then verify 'Create Order' Button is Not Present

    Examples: 
      | TC_ID             |  | TestDataSheet |
      | LOEAppeals_311091 |  | LOEAppeals    |



@213483@LOEAppealQA
  Scenario Outline: Pfizer Login > Added LOE product in Enrollment Application > Appeal approved for the same in Enrollment application > Agent process diffrent LOE Product > Verify that the existing LOE Appeal is not carry forwarded to the re-enrollment 
  	
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'    
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
      And Handle Alert pop Up
    Then Verify All the details got entered        
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK    
    And Verify error message In 'Products Information' block
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK  
    And Click on 'Save OutCome' Button
	And Verify  User must be redirected to Application Page
   And Click on PAP Appeal Tab
   Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
   Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK   
   

    
     Examples:
	|TC_ID|      |TestDataSheet|
	|LOEAppeals_213483| |LOEAppeals| 
	
	
	@213484@LOEAppealQA
  Scenario Outline: Verify that the Re-enrollment application status is "Denied"  
  	
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
     Then Select 'Select Service Offering' to Enrollment and attach second document
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
    Then fetch the Application Number created  
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
       And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
      And Handle Alert pop Up
    Then Verify All the details got entered        
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'  
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
	  And Verify  User must be redirected to Application Page
    And Click on PAP Appeal Tab
    Then Verify Appeal information page is opened with the Reason for Denial should display
     And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
     And Click on 'Create Order' Button in new window and Click on Ok Button

    
        And Verify  User must be redirected to Application Page
       
            Then Click on Applicant Name Link  
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
    #Then Verify Application must get created and Application number must get displayed in Application Page    
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
    And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered        
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK 
    Then Verify that enrollment outcome is denied  

    
     Examples:
	|TC_ID|      |TestDataSheet|
	|LOEAppeals_213484| |LOEAppeals| 
	
	
	
	
		@213485@LOEAppealQA
  Scenario Outline: Diffrent LOE Product > Existing LOE Appeal is not carry forwarded to the re-enrollment > Verify that appeal agent is able to create new appeal for the product added  
 
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
     And Click on First Patient and perform inbound call
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
     And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
     Then Select 'Select Service Offering' to Enrollment and attach second document
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
    Then fetch the Application Number created  
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
       And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
      And Handle Alert pop Up
    Then Verify All the details got entered        
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'  
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK 
        And Click on 'Save OutCome' Button 
      And Verify  User must be redirected to Application Page
   And Click on PAP Appeal Tab
    Then Verify Appeal information page is opened with the Reason for Denial should display
     And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
     And Click on 'Create Order' Button in new window and Click on Ok Button
    

    
        And Verify  User must be redirected to Application Page
       
            Then Click on Applicant Name Link  
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
    #Then Verify Application must get created and Application number must get displayed in Application Page    
   Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
       And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Do Select Product Name Form Strength SIG and Pill Qty
 And Handle Alert pop Up
   #Then Verify All the details got entered        
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And please Navigate to Application page and please click on PAP Appeal
    #Then Verify Appeal information page is opened with the Reason for Denial should display
    #And Click on Product checkbox
    #Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    

    
     Examples:
	|TC_ID|      |TestDataSheet|
	|LOEAppeals_213485| |LOEAppeals| 
	
	
	
@213486
  Scenario Outline: Verify that the patient/HCP is required to re-appeal every year for the following PAP Appeal reasons  
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
     And Click on First Patient and perform inbound call
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
     And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
   Then Select 'Select Service Offering' to Enrollment and attach second document
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
    Then  Verify Application Insurance Page must get displayed
       And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
      And Handle Alert pop Up
    Then Verify All the details got entered    
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
   Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'   
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK   
     And Click on 'Save OutCome' Button
	  And Verify  User must be redirected to Application Page
   And Click on PAP Appeal Tab 
   Then select Enrollment Appeal from Dropdown and verify the Following fields
 Then Select Reason for PAP Appeal as 'Out Patient' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK   
      
    And Click on 'Create Order' Button in new window and Click on Ok Button 
    
   And Verify  User must be redirected to Application Page
      
      Then Click on Applicant Name Link  
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page    
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
       And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    And Handle Alert pop Up
    Then Verify All the details got entered      
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
   
   And Verify 'Final Outcome is Incomplete' Error Message in OVM Window  

    
     Examples:
	|TC_ID|      |TestDataSheet|
	|LOEAppeals_213486| |LOEAppeals| 

	@213465
  Scenario Outline: Verify that the application status is "Denied"  
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
     And Click on First Patient and perform inbound call
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
     And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment and attach second document
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
    Then fetch the Application Number created  
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
       And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
    
      And Handle Alert pop Up
    Then Verify All the details got entered        
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
	  And Verify  User must be redirected to Application Page
      
      Then Click on Applicant Name Link  
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page    
    #Then In Application Page > Click on 'Application insurances' >  'New' for Reenrollment
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
       And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
 And Handle Alert pop Up
    Then Verify All the details got entered      
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
   
   And Verify 'Final Outcome is Incomplete' Error Message in OVM Window  

    
     Examples:
	|TC_ID|      |TestDataSheet|
	|LOEAppeals_213465| |LOEAppeals| 	
	
	
	
	
			
		
	@213466
  Scenario Outline: Verify that agent is not able to create an Order for the same product  
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
     And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment and attach second document
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
    Then fetch the Application Number created  
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
       And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
      And Handle Alert pop Up
    Then Verify All the details got entered        
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
	  And Verify  User must be redirected to Application Page
      
      Then Click on Applicant Name Link  
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
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page    
    #Then In Application Page > Click on 'Application insurances' >  'New' for Reenrollment
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
       And Under Insurance Information > Select 'No' radio button > Click on 'save' Button 
    Then Verify Pop up with Message 'Insurance details have been saved' Must get displayed 
    And Verify  User must be redirected to Patient Page
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
 And Handle Alert pop Up
    Then Verify All the details got entered     
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Verify Agent is not able to create an Order  

    
     Examples:
	|TC_ID|      |TestDataSheet|
	|LOEAppeals_213466| |LOEAppeals| 	 
