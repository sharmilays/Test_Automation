@SupervisorOverRidesEligibility
Feature: Supervisor over-rides eligibility


@166028
  Scenario Outline: Verify that 'Supervisor has to create Expedited Request' validation is displaying in OVM window on Checking Expedited shipping check box  
  	
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
    And Select 'Expedited shipping' checkbox
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
   And Verify error message In 'Products Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Supervisor Override' Button in new window and Click on Ok Button
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      				 |TestDataSheet|
	|SupervisorOverRides_166028| |SupervisorOverRides| 

@166031
  Scenario Outline: Verify that "Tygacil can't be dispensed by Medvantx" validation is displayinf in OVM window and Supervisor Override button when Fulfillment Method = MedvanTx  
  	
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
    And Select the 'Fullfillment Method' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
   And Verify error message In 'Products Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Supervisor Override' Button in new window and Click on Ok Button
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_166031| |SupervisorOverRides       | 
	
	
		
@166032
  Scenario Outline: Verify that "Tygacil can't be shipped to Patient" validation is displaying and Supervisor Override button in OVM window when Ship To = Patient  
  	
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
    And Select the 'Ship To' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
   And Verify error message In 'Products Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Supervisor Override' Button in new window and Click on Ok Button
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_166032| |SupervisorOverRides       | 
	
	
	@166033
  Scenario Outline: Verify that "Group A product cant be shipped to patient" validation and supervisor override button is displaying in OVM window when Ship To = Patinet  
  	
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
    And Select the 'Ship To' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
   And Verify error message In 'Products Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Supervisor Override' Button in new window and Click on Ok Button
    Then Close All the All Tabs
  
        
    Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_166033| |SupervisorOverRides       | 
	
			
@166034
  Scenario Outline: Verify that "Group A product cant be dispensed by Medvantx" validation and supervisor override button is displaying in OVM window when Fulfillment Method = Medvantx  
  	
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
    And Select the 'Fullfillment Method' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
   And Verify error message In 'Products Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Supervisor Override' Button in new window and Click on Ok Button
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_166034| |SupervisorOverRides       | 
	
@166036
  Scenario Outline: Verify that Supervisor Override button is not displaying in OVM window when Ship To = Practitioner and Fulfillment method is Memphis  
  	
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
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
   And Verify error message In 'Products Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_166036| |SupervisorOverRides       | 	
	
@166037
  Scenario Outline: Verify that "Qty entered is over the maximum qty allowed for the product" validation and Supervisor override button in OVM window when Pill Qty > Maximum Product Qty
  	
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
   And Verify error message In 'Products Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Supervisor Override' Button in new window and Click on Ok Button
    Then Close All the All Tabs
   
    
     Examples:
	|TC_ID|      |TestDataSheet|
    |SupervisorOverRides_166037| |SupervisorOverRides       | 	
    
  @175361_01
  Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'No document attached to Prescription Product'
  	
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
    And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
     Then Close All the All Tabs
   
    
     Examples:
	|TC_ID|      |TestDataSheet|
    |SupervisorOverRides_175361_01| |SupervisorOverRides       | 	
    
 @175361_02
  Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Fulfillment method is missing'  
  	
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
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_02| |SupervisorOverRides       | 
	
	@175361_03
  Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Prescriber Signature Date Missing'  
  	
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
    And Select 'Prescriber Consonent Sign' CheckBox
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license    
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered   
    And Select the 'Fullfillment Method' type 
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_03| |SupervisorOverRides       | 
	
	
@175361_04			
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Missing Original Prescription for Lyrica'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_04| |SupervisorOverRides       | 	
	
	@175361_05
Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Group C Product cant be dispensed by MedvanTx'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
     Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
     And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK  
     And Verify error message In 'Products Information' block
     And Click on 'PAP Determine Outcom' Button
     Then Verify Valid Practitioner Pop Up>Click on OK 
    # And Click on 'Supervisor Override' Button in new window and Click on Ok Button
     Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
  
  Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_05| |SupervisorOverRides       |
	
@175361_06
Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Patient Age should be over 18 years old for Prevnar 13'  
  	
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
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
     And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK  
     And Verify error message In 'Application Prescription Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
   #And Click on 'Supervisor Override' Button in new window and Click on Ok Button
     Then Verify 'Supervisor Override' Button is not displayed
   Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_06| |SupervisorOverRides       |
	
	
	
	@175361_07
  Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Patient Insurance Coverage Information not provided'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
   Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_07| |SupervisorOverRides       | 
	
@175361_08
  Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Quantity is Missing'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
   Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_08| |SupervisorOverRides       | 
	
	@175361_09				
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Missing govt id for Lyrica'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_09| |SupervisorOverRides       | 	
	
@175361_10
  Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Group A product cant be dispensed by Medvantx'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
     And Click on 'PAP Determine Outcom' Button
     Then Verify Valid Practitioner Pop Up>Click on OK 
     Then Verify 'Supervisor Override' Button is not displayed
     Then Close All the All Tabs
  
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_10| |SupervisorOverRides       | 
	
@175361_11
	Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Vaccine Lot# is missing for Group C Product'  
  	
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
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
     And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK  
     And Verify error message In 'Application Prescription Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
   Then Verify 'Supervisor Override' Button is not displayed
   Then Close All the All Tabs
   
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_11| |SupervisorOverRides       | 
	
@175361_12
	Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Denied because patient is not treated as Outpatient'  
     
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
    Then Verify All the details got entered        
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK    
    Then Verify 'Supervisor Override' Button is not displayed
    
     Examples:
	|TC_ID|      |TestDataSheet|
    |SupervisorOverRides_175361_12| |SupervisorOverRides       | 
	
@175361_13
	Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Patient Age must be between 19-25 years old to order Trumenba'  
  	
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
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page
    And Set Focus to Default Window      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
   Then Verify 'Supervisor Override' Button is not displayed
   Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_13| |SupervisorOverRides       | 
	       
@175361_14
	Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Insurance information is missing for Group C medication'
  	
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
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
     And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_14| |SupervisorOverRides       | 	       
	
	
	@175361_15
  Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Supervisor has to create Expedited Request'  
  	
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
    And Select 'Expedited shipping' checkbox
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
   And Verify error message In 'Products Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Supervisor Override' Button in new window and Click on Ok Button
    Then Close All the All Tabs
  
        
             Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_15| |SupervisorOverRides       | 
	
	
		
	@175361_16		
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Missing Original Prescription  id for Lyrica CR'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_16| |SupervisorOverRides       | 	
	
	
  @175361_18
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Missing govt id for  Lyrica CR'  
  	
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
    Then click on 'Search state license' and select license
    Then Veriify Section to Enter product Information is Displayed    
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered    
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_18| |SupervisorOverRides       | 	
	
	
	@175361_19
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Group D Product cant be dispensed by Memphis Distribution center'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_19| |SupervisorOverRides       | 	
	
	
	@175361_20
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'RX Date Missing'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Clear 'RX Date' date feild
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_20| |SupervisorOverRides       | 	
	
	@175361_21
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Missing HCP DEA ( only for Lyrica)'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_21| |SupervisorOverRides       | 	
	
	@175361_22
  Scenario Outline: Verify supervisor override button is showing up in case Supervisor override is not allowed with 'Supervisor has to create Expedited Request'  
  	
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
    And Select 'Expedited shipping' checkbox
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    And Click on 'Supervisor Override' Button in new window and Click on Ok Button
    Then Close All the All Tabs
  
        
             Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_22| |SupervisorOverRides       | 
	
	@175361_23
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Product Not in Program'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_23| |SupervisorOverRides       | 	
	
	@175361_24
  Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'No document attached to Prescription Product'
  	
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
    And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
     Then Close All the All Tabs
   
    
     Examples:
	|TC_ID|      |TestDataSheet|
    |SupervisorOverRides_175361_24| |SupervisorOverRides       | 	
    
  @175361_25
	Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'More than 3 Refills not allowed for Trumenba'  
  	
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
   Then Verify 'Supervisor Override' Button is not displayed
   Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_25| |SupervisorOverRides       | 
	
	@175361_27                                            
	Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Missing Patient Age between 19-25 years old for Trumenba'  
  	
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
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
   And Click on 'PAP Determine Outcom' Button In Product Information
   Then Verify Valid Practitioner Pop Up>Click on OK 
   Then Verify 'Supervisor Override' Button is not displayed
   Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_27| |SupervisorOverRides       | 
	       	
@175361_28                                                                
	Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Prescriber Signature Missing'  
  	
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
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered      
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
   And Click on 'PAP Determine Outcom' Button In Product Information
   Then Verify Valid Practitioner Pop Up>Click on OK 
   Then Verify 'Supervisor Override' Button is not displayed
   Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_28| |SupervisorOverRides       | 
	
	@175361_29                                                                 
	Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Patient Household Income missing'  
  	
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
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
   And Click on 'PAP Determine Outcom' Button In Product Information
   Then Verify Valid Practitioner Pop Up>Click on OK 
   Then Verify 'Supervisor Override' Button is not displayed
   Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_29| |SupervisorOverRides       | 
	
	@175361_30                                                            
	Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Contact Phone is Missing at Prescription'  
  	
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
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
   And Click on 'PAP Determine Outcom' Button In Product Information
   Then Verify Valid Practitioner Pop Up>Click on OK 
   Then Verify 'Supervisor Override' Button is not displayed
   Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_30| |SupervisorOverRides       | 
	
	@175361_31                                                      
	Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Denied because patient is not US Resident'  
  	
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
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
   And Click on 'PAP Determine Outcom' Button In Product Information
   Then Verify Valid Practitioner Pop Up>Click on OK 
   Then Verify 'Supervisor Override' Button is not displayed
   Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_31| |SupervisorOverRides       |
	
	
	@175361_32                                                      
	Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Group C Product cant be shipped to Patient'  
  	
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
     And Select the 'Ship To' type     
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
   And Click on 'PAP Determine Outcom' Button In Product Information
   Then Verify Valid Practitioner Pop Up>Click on OK 
   Then Verify 'Supervisor Override' Button is not displayed
   Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_32| |SupervisorOverRides       |  
	
	

	@175361_33
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Missing Date of Birth for Group D Products (MM/DD/YY)'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_33| |SupervisorOverRides       | 	
	
	
	@175361_34
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'LOE Product not in Program'  
   	
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
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK 
        Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
       
    
	
     Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_34| |SupervisorOverRides       |  
	

	
		
	 @175361_35
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Patient/Representative Signature Missing'  
   	
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
    Then UnCheck 'Patient or Patient Representative Signature' Checkbox
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
        Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
       
    
	
     Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_35| |SupervisorOverRides       |  
	
	
	
	@175361_36
  Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Ship To - Practitioner or Patient  Missing'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    And wait for page load    
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
   And Verify error message In 'Products Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_36| |SupervisorOverRides       | 
	
	
	
	
		
	@175361_37                                                     
	Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Patient Household Income Type missing'  
  	
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
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
   And Click on 'PAP Determine Outcom' Button In Product Information
   Then Verify Valid Practitioner Pop Up>Click on OK 
   Then Verify 'Supervisor Override' Button is not displayed
   Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_37| |SupervisorOverRides       |
	 
	 @175361_38
Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Missing Patient Age over 18 years old for Prevnar 13'  
  	
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
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
     And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK  
     And Verify error message In 'Application Prescription Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
   #And Click on 'Supervisor Override' Button in new window and Click on Ok Button
   Then Verify 'Supervisor Override' Button is not displayed
   Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_38| |SupervisorOverRides       | 
	
	@175361_39
	Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'No Refills allowed for Prevnar 13'  
  	
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
     And Verify error message In 'Application Prescription Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
   And Click on 'Supervisor Override' Button in new window and Click on Ok Button
   Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_39| |SupervisorOverRides       | 

@175361_40
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Group D Product cant be shipped to Practitioner'
  	
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
    And Select the 'Ship To' type
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_40| |SupervisorOverRides       | 	
	
@175361_41
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Tygacil cant be dispensed by Medvantx'
  	
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
    And Select the 'Fullfillment Method' type
    Then Select 'Presumptive' Checkbox
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    And Click on 'Supervisor Override' Button in new window and Click on Ok Button
    Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_41| |SupervisorOverRides       | 

@175361_42
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Tygacil cant be shipped to Patient'  
  	
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
    And Select the 'Ship To' type
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_42| |SupervisorOverRides       | 	
		
		
		
	@175361_43
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'No Product Selected'  
  	
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
    And Select the 'Ship To' type
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_43| |SupervisorOverRides       | 	
	
	
	@175361_44
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Not Client Product'  
  	
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
    And Select the 'Ship To' type
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    Then Select value from 'Goverment Id' and 'Original Rx' Dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_44| |SupervisorOverRides       | 	
	
	
	
	
	@175361_45
  Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Patient DOB is required for orders shipping to Medvantx'
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
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then Verify Checkbox is selected and date is set
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select the 'Fullfillment Method' type
    And Select the 'Ship To' type
    #Then Select 'Presumptive' Checkbox
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Click on PAP Appeal Tab
    Then Verify Appeal Information Page > Select Appeal Type > Save
    #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify OrderShippingErrorMsg In OVM Window
    Then Close All the All Tabs

    Examples: 
      | TC_ID                         |  | TestDataSheet       |
      | SupervisorOverRides_175361_45 |  | SupervisorOverRides |
	
	
	
	@175361_46
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Patient Household size missing'  
  	
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
    And Select the 'Fullfillment Method' type
    #Then Select 'Presumptive' Checkbox
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
     And Verify Error Msg OF HouseHoldIncome
    Then Close All the All Tabs
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_46| |SupervisorOverRides       | 
	
	@175361_47
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Patient Household size missing'  
  	
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
    And Select the 'Fullfillment Method' type
   Then UnCheck the 'Shipping Address' Valid CheckBox
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_47| |SupervisorOverRides       | 
	
	
	
	@175361_48
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Patient treated as Outpatient field is missing'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_48| |SupervisorOverRides       | 		
	
@175361_49
  Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Qty entered is over the maximum qty allowed for the product'
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
    And Select the 'Fullfillment Method' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify 'Supervisor Override' Button is not displayed
    
    Examples: 
      | TC_ID                         |  | TestDataSheet       |
      | SupervisorOverRides_175361_49 |  | SupervisorOverRides |
	
	@175361_50
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Missing Drug Allergies Details when Patient has drug allergies'  
  	
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
    And Select the 'Fullfillment Method' type
    Then Select value from 'Drug Allergies' dropdown
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_50| |SupervisorOverRides       | 	
	
	
	
	@175361_51
  Scenario Outline:  Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Group C Products requires acceptance of Terms and Conditions'  
  	
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
    And Select the 'Fullfillment Method' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_51| |SupervisorOverRides       | 	
	
	@175361_52
Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'Date of Administration is missing for Group C Product'  
  	
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
    Then Enter all required feilds in 'Group C'
    Then Enter the Date in 'Date of Administration' Date Box
    Then Click On Save Button in Patient Page    
     And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK  
     And Verify error message In 'Application Prescription Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
   #And Click on 'Supervisor Override' Button in new window and Click on Ok Button
   Then Verify 'Supervisor Override' Button is not displayed
   Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_52| |SupervisorOverRides       |
	
	@173404
	 Scenario Outline:Verify use is able to Override and create an Order
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
    Then Verify All the details got entered        
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK 
     And Click on 'Supervisor Override' Button in new window and Click on Ok Button
     
     
     Then Login as Supervisor
     Then  Verify User should able to login in pfizer
     When Select Home
     Then Click on View All task
     Then Click on Todays task
     Then Click on Related prescrption Link
       And Click on 'Create Order' Button and Click on Ok Button
       
       
       
       And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
#    And Refresh the Login Page
    Then  Verify User should able to login in pfizer
    When  Select Global Search
    Then select PatientID>>Field>>Value>>Search same patient id
   And   Click on Search
   And  Click on First>>PatientID link
    Then Click on View Order
  
       
	
	   Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_173404| |SupervisorOverRides      |
	
	@166030
  Scenario Outline: Verify that "No Refills allowed for Prevnar 13" validation is displaying and Supervisor Override button is displaying in OVM window when Refills are not equal to zero in OVM window   
  	
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
     And Verify error message In 'Products Information' block
     And Click on 'PAP Determine Outcom' Button
     Then Verify Valid Practitioner Pop Up>Click on OK 
     And Click on 'Supervisor Override' Button in new window and Click on Ok Button
     Then Close All the All Tabs
    
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_166030| |SupervisorOverRides       |
	
	@166029
	Scenario Outline: Verify that "Patient Age should be over 18 years old for Prevnar 13" validation and Supervisor override button is displaying in OVM window when Are you over 18 years? = NO 
  	
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
   #Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
     And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK  
     And Verify error message In 'Application Prescription Information' block
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK 
   And Click on 'Supervisor Override' Button in new window and Click on Ok Button
   Then Close All the All Tabs
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_166029| |SupervisorOverRides| 

@166035
  Scenario Outline: Verify that "Group C Product cant be dispensed by MedvanTx" validation and Supervisor Override button is displaying in OVM Window should when Fulfillment Method = MedvanTx  
  	
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
    And Select the 'Fullfillment Method' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
     Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
     And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK  
     And Verify error message In 'Products Information' block
     And Click on 'PAP Determine Outcom' Button
     Then Verify Valid Practitioner Pop Up>Click on OK 
     And Click on 'Supervisor Override' Button in new window and Click on Ok Button
     Then Close All the All Tabs
  
  
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_166035| |SupervisorOverRides       | 

@175361_17
 Scenario Outline: Verify supervisor override button is not showing up in case Supervisor override is not allowed with 'App/Rx Signature Missing'  
  	
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
    Then Verify 'Supervisor Override' Button is not displayed
    Then Close All the All Tabs
  
        
             Examples:
	|TC_ID|      |TestDataSheet|
	|SupervisorOverRides_175361_17| |SupervisorOverRides       | 
	