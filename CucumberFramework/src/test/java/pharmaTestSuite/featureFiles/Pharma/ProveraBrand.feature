@ProveraBrandfeature
Feature: Add new NDC's for Provera in CRM & IVR

  @185564
  Scenario Outline: Pfizer: CRM Agent/Supervisor/Admin Login> New Application enrolled>Prescription added>Add Provera product via CRM>Verify that agent should be able to see/Select the new NDC’s active for Provera
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

    Examples: 
      | TC_ID          |  | TestDataSheet |
      | Provera_185564 |  | Provera       |

  @185565
  Scenario Outline: Pfizer: CRM Agent/Supervisor/Admin Login> New Application enrolled>Prescription added>Add Provera product via CRM>Verify that new NDC’s added will be mapped to LOE group
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
    Then Verify Product Group

    Examples: 
      | TC_ID          |  | TestDataSheet |
      | Provera_185565 |  | Provera       |

  @185566
  Scenario Outline: Pfizer: CRM Agent/Supervisor/Admin Login> New Application enrolled>Prescription added>Add Provera  product via CRM>Verify that the product should be defaulted to be shipped via Memphis & to HCP
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

    #Then Verify product 'FullFillment Method' and 'Ship to' Drop Down Values
    Examples: 
      | TC_ID          |  | TestDataSheet |
      | Provera_185566 |  | Provera       |

  @185567
  Scenario Outline: Pfizer: CRM Agent/Supervisor/Admin Login> New Application enrolled>Prescription added>Add Provera product via CRM>Verify that on application prescription the refills should be defaulted to 4
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
    Then Verify product Refill Drop Down Value

    Examples: 
      | TC_ID          |  | TestDataSheet |
      | Provera_185567 |  | Provera       |

  @185570
  Scenario Outline: Pfizer: CRM Agent/Supervisor/Admin Login> New Application enrolled>Prescription added>Add Provera product via CRM> Selected Tablet-10mg-100 Pckg > Click on Save button > Verify user is able to see all the details added under prodcut information
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

    Examples: 
      | TC_ID          |  | TestDataSheet |
      | Provera_185570 |  | Provera       |

 


  @185568
  Scenario Outline: Pfizer: CRM Agent > New Application>Add Provera product via CRM>PAP Determine outcome>OVM outcome is denied>LOE Appeal is approved>Verify that on provera product will be available only when an LOE appeal is approved.
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
    #And Verify 'Products Information Description' Error Message Denied Click On 'Save Outcome' Button
    Then Click on 'Save Outcome' button
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
    #Then Verify Case is Dispalyed in Table or Split View
    When Select Global Search
    Then select Application>>Field>>Value>>Search
    And Click on Search
    Then Click on ApplicationNumber
    And Click on PAP Appeal Tab
    Then Select type of Appeal
    And Select check box in Application Products
    # And Verify  User must be redirected to Application Page
  #  Then Verify Appeal information page is opened with the Reason for Denial should display
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button

    Examples: 
      | TC_ID          |  | TestDataSheet |
      | Provera_185568 |  | Provera       |

  @185569
  Scenario Outline: Pfizer: CRM Agent > New Application>Add Provera product via CRM>PAP Determine outcome>OVM outcome is denied>LOE Appeal is approved> Initial Order created for Provera > Verify user is able to do Refill
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
    # And Verify 'Products Information Description' Error Message Denied Click On 'Save Outcome' Button
    # And Verify  User must be redirected to Application Page
    Then Click on 'Save Outcome' button
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
    When Select Global Search
    Then select Application>>Field>>Value>>Search
    And Click on Search
    Then Click on ApplicationNumber
    And Click on PAP Appeal Tab
    Then Select type of Appeal
    And Select check box in Application Products
   # Then Verify Appeal information page is opened with the Reason for Denial should display
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on View order
    Then get the PatientId and OrderID
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    When Select Global Search
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
    #  Then Click on Order Product Detail IH
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
    Then Click on View Order
    And Select Second order created
    And Verify Order Details with Refill, Custom Order Button
    Then Verify release date calculation is according to 75 percent criteria
    Then Click on Refill button
    Then Accept OK button>>Click on place Refill Button

    Examples: 
      | TC_ID          |  | TestDataSheet |
      | Provera_185569 |  | Provera       |
 

    @185577
  Scenario Outline: Pfizer: CRM Agent Login>Ship to Practitioner > Initial order created & shipped for Provera product via CRM Pfizer: Portal HCP Login>Verify that HCP should be able to place a Provera  refill via portal
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
    #And Verify 'Products Information Description' Error Message Denied Click On 'Save Outcome' Button
    # And Verify  User must be redirected to Application Page
    Then Click on 'Save Outcome' button
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
    When Select Global Search
    Then select Application>>Field>>Value>>Search
    And Click on Search
    Then Click on ApplicationNumber
    And Click on PAP Appeal Tab
    Then Select type of Appeal
    And Select check box in Application Products
    #Then Verify Appeal information page is opened with the Reason for Denial should display
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
   # Then Click on Refersh Button
   # Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on View order
    Then get the PatientId and OrderID
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    When Select Global Search
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
    And open Browser and enter portal url
    When Enter portal username and password
    And Click On portal Login Button
    And Refresh the Login Page
    And Click On Patient order>Search Patient
    And Click on Patient Order Refill
    And Click on 'Place Order' Button
    Then Verify Refill is Success

    Examples: 
      | TC_ID          |  | TestDataSheet |
      | Provera_185577 |  | Provera       |

  @185578
  Scenario Outline: Pfizer: CRM Agent Login>Ship to Practitioner > Initial order created & shipped for Provera product via CRM Pfizer: Portal HCP Login>Verify that HCP should be able to place a Provera  refill via portal
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
    And Select the 'Ship To' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    # And Verify 'Products Information Description' Error Message Denied Click On 'Save Outcome' Button
    #And Verify  User must be redirected to Application Page
    Then Click on 'Save Outcome' button
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
    When Select Global Search
    Then select Application>>Field>>Value>>Search
    And Click on Search
    Then Click on ApplicationNumber
    And Click on PAP Appeal Tab
    Then Select type of Appeal
    And Select check box in Application Products
    #Then Verify Appeal information page is opened with the Reason for Denial should display
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on View order
    Then get the PatientId and OrderID
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    When Select Global Search
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
    Then Click on View order
    Then Then Logout from the PFIZER
    And open Browser and enter portal url
    When Enter portal username and password
    And Click On portal Login Button
    And Refresh the Login Page
    And Click On Patient order>Search Patient
    Then Verify Refill button is Disabled

    Examples: 
      | TC_ID          |  | TestDataSheet |
      | Provera_185578 |  | Provera       |

  @185579
  Scenario Outline: Pfizer: CRM Agent Login> Initial order created & shipped for Provera product via CRM Pfizer: Portal HCP Login>Verify that Product name is displayed along with superscript and generic name for both the new NDC’s added.
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Verify 'Products Information Description' Error Message Denied Click On 'Save Outcome' Button
    And Verify  User must be redirected to Application Page
    And Click on PAP Appeal Tab
    Then Verify Appeal information page is opened with the Reason for Denial should display
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on View order
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
    Then Click on Order Product Detail IH
    Then Click on Order Product Shipping Link
    Then Click on Application ID link
    Then Click on View order
    Then Then Logout from the PFIZER
    And open Browser and enter portal url
    When Enter portal username and password
    And Click On portal Login Button
    And Refresh the Login Page
    And Click On Patient order>Search Patient
    Then Verify 'Product name' and 'NDC'

    Examples: 
      | TC_ID          |  | TestDataSheet |
      | Provera_185579 |  | Provera       |

  @185580
  Scenario Outline: Ship to Practitioner >Add 10/5 mg – 100 Pckg >Initial order created & shipped for Provera product via CRM  Pfizer: Portal HCP Login> Rx date Expired > Verify that HCP should not be able to place a refill via portal for Provera
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
    #  And Verify 'Products Information Description' Error Message Denied Click On 'Save Outcome' Button
    # And Verify  User must be redirected to Application Page
    Then Click on 'Save Outcome' button
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
    When Select Global Search
    Then select Application>>Field>>Value>>Search
    And Click on Search
    Then Click on ApplicationNumber
    And Click on PAP Appeal Tab
    Then Select type of Appeal
    And Select check box in Application Products
    #Then Verify Appeal information page is opened with the Reason for Denial should display
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on View order
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
    #Then Click on Order Product Detail IH
    Then Click on Order Product Shipping Link
    Then Click on Application ID link
    Then Click on View order
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
    Then Click on View order
    And Select Second order created1
    Then click on Prescription id link
    Then copy the RX ID from prescription page
    And click on search salesforce tab and paste that Rx Date
    Then click on that Rx Date value
    And Click on Rx date pencil edit button
    Then Change Rx date to 365 days before system date and click on save button
    And open Browser and enter portal url
    When Enter portal username and password
    And Click On portal Login Button
    And Refresh the Login Page
    And Click On Patient order>Search Patient
    Then Verify Refill button is Disabled

    Examples: 
      | TC_ID          |  | TestDataSheet |
      | Provera_185580 |  | Provera       |

  @185581
  Scenario Outline: Ship to Practitioner >Add 10/5 mg – 100 Pckg >Initial order created & shipped for Provera product via CRM  Pfizer: Portal HCP Login>Verify that HCP should be able to place a Provera  refill via portal if he meet the refill date Eligibility criteria
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
    #  And Verify 'Products Information Description' Error Message Denied Click On 'Save Outcome' Button
    # And Verify  User must be redirected to Application Page
    Then Click on 'Save Outcome' button
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
    When Select Global Search
    Then select Application>>Field>>Value>>Search
    And Click on Search
    Then Click on ApplicationNumber
    And Click on PAP Appeal Tab
    Then Select type of Appeal
    And Select check box in Application Products
   # Then Verify Appeal information page is opened with the Reason for Denial should display
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on View order
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
    #Then Click on Order Product Detail IH
    Then Click on Order Product Shipping Link
    Then Click on Application ID link
    Then Click on View order
    And Select Second order created
    Then Verify release date calculation is according to 75 percent criteria
    Then Then Logout from the PFIZER
    And open Browser and enter portal url
    When Enter portal username and password
    And Click On portal Login Button
    And Refresh the Login Page
    And Click On Patient order>Search Patient
    And Click on Patient Order Refill
    And Click on 'Place Order' Button
    Then Verify Refill is Success

    Examples: 
      | TC_ID          |  | TestDataSheet |
      | Provera_185581 |  | Provera       |

  @185582
  Scenario Outline: Verify that HCP should not be able to place a Provera  refill via portal if he does not meet the refill date Eligibility criteria.
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
    Then Click on 'Save Outcome' button
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
    When Select Global Search
    Then select Application>>Field>>Value>>Search
    And Click on Search
    Then Click on ApplicationNumber
    And Click on PAP Appeal Tab
    Then Select type of Appeal
    And Select check box in Application Products
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on View order
    Then get the PatientId and OrderID
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    And Select Order ID>>enter Order value
    And Click on Search
    When Click on Order ID link
    Then Verify Order Product IH page opens
    Then Enter the order ship date
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
    Then Click on View order
    And Select Second order created
    Then Then Logout from the PFIZER
    And open Browser and enter portal url
    When Enter portal username and password
    And Click On portal Login Button
    And Refresh the Login Page
    And Click On Patient order>Search Patient
    Then Verify Refill button is Disabled

    Examples: 
      | TC_ID          |  | TestDataSheet |
      | Provera_185582 |  | Provera       |