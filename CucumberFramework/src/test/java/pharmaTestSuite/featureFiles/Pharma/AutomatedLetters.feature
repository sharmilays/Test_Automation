@AutomatedLettersfeature
Feature: Automated Letters

  @304840
  Scenario Outline: Regression
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
    Then Click on Applicant Name Link
    And Click on View Logs Button
    Then Verify the outcome status as pending

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304840 |  | AutomatedLetters |

  @304841
  Scenario Outline: Regression(Reg_TC02)
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
    Then Click on 'Save Outcome' button
    And Verify  User must be redirected to Application Page
    Then Click on Applicant Name Link
    And Click on View Logs Button
    Then Verify the outcome status as pending

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304841 |  | AutomatedLetters |

  @304842
  Scenario Outline: Regression(Reg_TC03)
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Verify  User must be redirected to Application Page
    And In Application page Verify the Approval status

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304842 |  | AutomatedLetters |

  @304843
  Scenario Outline: Regression(Reg_TC04)
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Verify  User must be redirected to Application Page
    And In Application page Verify the Approval status

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304843 |  | AutomatedLetters |

  @304844
  Scenario Outline: Regression(Reg_TC05)
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Verify  User must be redirected to Application Page
    And In Application page Verify the Approval status

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304844 |  | AutomatedLetters |

  @304847
  Scenario Outline: Regression(Reg_TC08)
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Verify  User must be redirected to Application Page
    And In Application page Verify the Approval status

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304847 |  | AutomatedLetters |

  @304848
  Scenario Outline: Regression(Reg_TC09)
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Verify  User must be redirected to Application Page
    And In Application page Verify the Approval status

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304848 |  | AutomatedLetters |

  @304849
  Scenario Outline: Regression(Reg_TC10)
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Verify  User must be redirected to Application Page
    And In Application page Verify the Approval status

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304849 |  | AutomatedLetters |

  @304850
  Scenario Outline: Regression(Reg_TC11)
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
    Then Navigate to the Patient details page > Click on Saving Program 'New'
    Then Click on Insurance No radio Button
    Then Select Household Size as '1' > Household income 1000 > check 'yearly' radio button
    And click on add product for Saving Program
    Then Select product Name from dropdown
    Then Click on Save Button for saving Program
    Then Verify the Enrollment Status

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304850 |  | AutomatedLetters |

  @304897
  Scenario Outline: Regression(Reg_TC58)
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify that enrollment outcome is denied

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304897 |  | AutomatedLetters |

  @304899
  Scenario Outline: Regression(Reg_TC58)
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
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then Enter all required feilds in 'Group C'
    And Click on 'PAP Determine Outcom' Button After save
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify that Enrollment outcome is Incomplete

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304899 |  | AutomatedLetters |

  @304880
  Scenario Outline: Regression(Reg_TC41)
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
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then Enter all required feilds in 'Group C'
    And Click On 'Add Product' Button
    And Select product name and Form Strength for second product line
    Then Select the pill Quantity less than 280 in second product line
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button in second product line
    And Click on Attach Button in Second product line
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify that enrollment outcome is denied

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304880 |  | AutomatedLetters |

  @304882
  Scenario Outline: Regression(Reg_TC43)
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Verify  User must be redirected to Application Page
    Then Click on View order
    And Select Second order created
    And Click on cancel order Button
    And Select Second order created
    And Click on Custom order Button
    And Click on Replacement Order Button
    And Select a value from Reason Dropdown
    Then Click on Save and proceed Button
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304882 |  | AutomatedLetters |

  @304865
  Scenario Outline: Reg_TC26
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
    And In PAP Information section Select 'US Resident' as 'N' from drop down
    Then Verify  Option must get selected as N
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
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then Enter the mandatory fields in Group C section
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify the error message displayed for the not US Resident in OVM window
    Then Navigate to 'View Logs' then verify the status

    Examples: 
      | TC_ID           |  | TestDataSheet    |
      | Reg_TC26_304865 |  | AutomatedLetters |

  @304868
  Scenario Outline: Reg_TC29
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
    Then Verify Fulfillment Method and Ship To Field
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify the error message displayed for the Patient insurance not covered
    Then Navigate to 'View Logs' then verify the status

    Examples: 
      | TC_ID           |  | TestDataSheet    |
      | Reg_TC29_304868 |  | AutomatedLetters |

  @304870
  Scenario Outline: Reg_TC31
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
    Then Verify  Option must get selected as N
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
    And Select the 'Ship To' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify the error message displayed for the 'Product Not on Program'
    Then Navigate to 'View Logs' then verify the status

    Examples: 
      | TC_ID           |  | TestDataSheet    |
      | Reg_TC31_304870 |  | AutomatedLetters |

  @304871
  Scenario Outline: Reg_TC32
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
    Then Verify  Option must get selected as N
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
    Then Select 'Original RX' 'GovernmentID' Click on 'save' Button1
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then verify the Approval status as 'Approved'

    Examples: 
      | TC_ID           |  | TestDataSheet    |
      | Reg_TC32_304871 |  | AutomatedLetters |

  @304872
  Scenario Outline: Reg_TC33
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
    Then Verify  Option must get selected as N
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
    Then Select 'Original RX' 'GovernmentID' Click on 'save' Button1
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    #Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click On 'Add Product' Button2
    And Select Product Name Form Strength SIG and Pill Qty1
    #And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button1
    And Click on Attach Button1
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then verify the Approval status as 'Approved'

    Examples: 
      | TC_ID           |  | TestDataSheet    |
      | Reg_TC33_304872 |  | AutomatedLetters |

  @304873
  Scenario Outline: Reg_TC34
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
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button2
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Fulfillment Method and Ship To Field
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify the error message displayed for the Patient insurance not covered
    Then Navigate to 'View Logs' then verify the status

    Examples: 
      | TC_ID           |  | TestDataSheet    |
      | Reg_TC34_304873 |  | AutomatedLetters |

  @304874
  Scenario Outline: Reg_TC35
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
    Then Verify Fulfillment Method and Ship To Field
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify the error message displayed for the Patient insurance not covered
    Then Navigate to 'View Logs' then verify the status

    Examples: 
      | TC_ID           |  | TestDataSheet    |
      | Reg_TC35_304874 |  | AutomatedLetters |

  @304875
  Scenario Outline: Reg_TC36
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
    Then Verify Fulfillment Method and Ship To Field
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify the error message displayed for the Patient insurance not covered
    Then Navigate to 'View Logs' then verify the status

    Examples: 
      | TC_ID           |  | TestDataSheet    |
      | Reg_TC36_304875 |  | AutomatedLetters |

  @304902
  Scenario Outline: Reg_TC63
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
    Then Verify  Option must get selected as N
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
    Then Select 'Original RX' 'GovernmentID' Click on 'save' Button1
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify the error message displayed for the LOE product
    Then verify the Approval status as 'Denied'

    Examples: 
      | TC_ID           |  | TestDataSheet    |
      | Reg_TC63_304902 |  | AutomatedLetters |

  @304903
  Scenario Outline: Reg_TC64
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
    Then Verify  Option must get selected as N
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
    Then Select 'Original RX' 'GovernmentID' Click on 'save' Button1
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify the error message displayed for the LOE product
    Then verify the Approval status as 'Denied'

    Examples: 
      | TC_ID           |  | TestDataSheet    |
      | Reg_TC64_304903 |  | AutomatedLetters |

  @304906
  Scenario Outline: Regression_TC67
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
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then fetch the Application Number created
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Click on PAP Appeal Tab
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Click on Refersh Button
    Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
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
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Application' Radio Button
    Then Enter ApplicationID from DropDown
    And Click on Search
    When Click on First ID link
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
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then verify that ReEnrollment application is displayed
    Then Verify the Approval Status of Application

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304906 |  | AutomatedLetters |

  @304907
  Scenario Outline: Regression_TC68
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
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then fetch the Application Number created
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Click on PAP Appeal Tab
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Click on Refersh Button
    Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
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
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Application' Radio Button
    Then Enter ApplicationID from DropDown
    And Click on Search
    When Click on First ID link
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
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then verify that ReEnrollment application is displayed
    Then Verify the Approval Status of Application

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304907 |  | AutomatedLetters |

  @304883
  Scenario Outline: Regression_TC44
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
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then fetch the Application Number created
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
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
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Application' Radio Button
    Then Enter ApplicationID from DropDown
    And Click on Search
    When Click on First ID link
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
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then verify that ReEnrollment application is displayed
    Then Verify the Approval Status of Application

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304883 |  | AutomatedLetters |

  @304884
  Scenario Outline: Regression_TC45
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
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then fetch the Application Number created
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
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
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Application' Radio Button
    Then Enter ApplicationID from DropDown
    And Click on Search
    When Click on First ID link
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
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then verify that ReEnrollment application is displayed
    Then Verify the Approval Status of Application

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304884 |  | AutomatedLetters |

  @304904
  Scenario Outline: Regression_TC65
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
    Then Read The Patient ID From ReEnrollmentTextFile
    #Then Select PatientID>Enter Patient ID>Click on Search
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
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then fetch the Application Number created
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Click on PAP Appeal Tab
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Click on Product checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Click on Refersh Button
    Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
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
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Application' Radio Button
    Then Enter ApplicationID from DropDown
    And Click on Search
    When Click on First ID link
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
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then verify that ReEnrollment application is displayed
    Then Verify the Approval Status of Application

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304904 |  | AutomatedLetters |

  @304905
  Scenario Outline: Regression_TC66
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
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then fetch the Application Number created
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
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
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Application' Radio Button
    Then Enter ApplicationID from DropDown
    And Click on Search
    When Click on First ID link
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
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then verify that ReEnrollment application is displayed
    Then Verify the Approval Status of Application

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304905 |  | AutomatedLetters |

  @304887
  Scenario Outline: Regression_TC48
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
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then fetch the Application Number created
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
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
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Application' Radio Button
    Then Enter ApplicationID from DropDown
    And Click on Search
    When Click on First ID link
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
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then In RenrollmentApplication Page > Click on 'Application insurances' >  'New'
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then verify that ReEnrollment application is displayed
    Then Verify the Approval Status of Application

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304887 |  | AutomatedLetters |

  @171065
  Scenario Outline: Verify that No Reenrollments allowed for Group C
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
    And Select Product Name Form Strength SIG and Pill Qty
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page
    And Click on 'PAP Determine Outcom' Button In Product Information
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
    And Select Product Name Form Strength SIG and Pill Qty
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page
    And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify 'No Enrollment for Group C product' Error Message is displayed

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_171065 |  | AutomatedLetters |

  @304853
  Scenario Outline: Reg_TC14
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
    Then Click On Search Patient Tab
    And Verify Add Patient Page appears
    Then Read The Patient ID From TextFile
    Then Select PatientID>Enter Patient ID>Click on Search
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page
    And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Verify  User must be redirected to Application Page
    And In Application page Verify the Approval status

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304853 |  | AutomatedLetters |

  @304860
  Scenario Outline: Reg_TC21
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
    Then Click On Search Patient Tab
    And Verify Add Patient Page appears
    Then Read The Patient ID From TextFile
    Then Select PatientID>Enter Patient ID>Click on Search
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Verify  User must be redirected to Application Page
    And In Application page Verify the Approval status

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304860 |  | AutomatedLetters |

  @304861
  Scenario Outline: Reg_TC22
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
    Then Click On Search Patient Tab
    And Verify Add Patient Page appears
    Then Read The Patient ID From TextFile
    Then Select PatientID>Enter Patient ID>Click on Search
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Verify  User must be redirected to Application Page
    And In Application page Verify the Approval status

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304861 |  | AutomatedLetters |

  @304862
  Scenario Outline: Reg_TC23
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
    Then Click On Search Patient Tab
    And Verify Add Patient Page appears
    Then Read The Patient ID From TextFile
    Then Select PatientID>Enter Patient ID>Click on Search
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Verify  User must be redirected to Application Page
    And In Application page Verify the Approval status

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304862 |  | AutomatedLetters |

  @304878
  Scenario Outline: Reg_TC39
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
    Then Click On Search Patient Tab
    And Verify Add Patient Page appears
    Then Read The Patient ID From TextFile
    Then Select PatientID>Enter Patient ID>Click on Search
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
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Select the 'Ship To' type

    Examples: 
      | TC_ID                   |  | TestDataSheet    |
      | AutomatedLetters_304878 |  | AutomatedLetters |
