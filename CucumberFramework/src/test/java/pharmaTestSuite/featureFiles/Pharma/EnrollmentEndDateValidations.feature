@EnrollmentEndDateValidation
Feature: Enrollment End Date Validations

@167824
Scenario Outline: Verify if the Patient doesn't have any insurance then the enrollment end date is exactly one year from the date of Application creation( Current date) 
  	
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
   And Click on 'PAP Determine Outcom' Button
   Then Verify Viagra product is added 
   Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Create Order' Button in new window and Click on Ok Button
     Then Verify Difference between 'Enrollment Date' and 'Enrollment End Date' must be exactly one year
	   Examples:
	|TC_ID|      |TestDataSheet|
	|EnrollmentEndDateValidations_167824| |EnrollmentEndDateValidations|
	
	@167853
	Scenario Outline: Verify if the Patient doesn't have any insurance then the enrollment end date is exactly one year from the date of Application creation( Current date) 
  	
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Viagra product is added 
   Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Create Order' Button in new window and Click on Ok Button
    #Then OVM window must get closed and user must be redirected to Application page
    Then Verify 'Enrollment End Date' must be end of year    
	   Examples:
	|TC_ID|      |TestDataSheet|
	|EnrollmentEndDateValidations_167853| |EnrollmentEndDateValidations|
  	
   