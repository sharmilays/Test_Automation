	@HomeDeliveryFeatues
	Feature: HomeDelivery
	
	@311179
	Scenario Outline: Verify user			
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
    ##Then Click on 'Supporting documents' > click on First Document
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
    And Verify User must be redirected to Patient Page
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
    Then Ship to patient
 	  And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
 
    
   	Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311179||Delivery|
	
	
	@311180
		Scenario Outline:Verify user			
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
    ##Then Click on 'Supporting documents' > click on First Document
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
    And Verify User must be redirected to Patient Page
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
    Then Ship to patient
  	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
  	Then Select Appeal Status
       Then Click on Appeal save button
    Then Go to Application Prescription Page
   And Click on 'PAP Determine Outcom' Button after attach
    Then Verify Valid Practitioner Pop Up>Click on OK
     And Click on 'Create Order' Button in new window and Click on Ok Button
   	Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311180||Delivery|
	
	@311181
		Scenario Outline:Verify user			
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
   Then Ship to patient
 	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify that Supervisor Override button should not be present
    
    
   	Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311181||Delivery|

		@311183
		Scenario Outline:Verify user			
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
    ##Then Click on 'Supporting documents' > click on First Document
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
   Then Ship to patient
  	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
     Then Select Appeal Status
       Then Click on Appeal save button
       Then Verify Specialist is able to create an Home Delivery Appeal and system should not throw an error message
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311183||Delivery|
	
			@311184
		Scenario Outline:Verify user			
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
    Then Ship to patient
  	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
     Then Select type of Appeal as Enrollment
    Then Verify that system should display error message like 'Only Denied Application is eligible for PAP Appeal'
      
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311184||Delivery|
	
		@311185
		Scenario Outline:Verify user			
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
   Then Ship to patient
  	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
   	Then Select Appeal Status
       Then Click on Appeal save button
      And Click on 'Application Prescriptions' and link
      And Click on 'PAP Determine Outcom' Button after attach
    Then Verify Valid Practitioner Pop Up>Click on OK
     And Click on 'Create Order' Button in new window and Click on Ok Button
     And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Verify it displays 'Cannot create an appeal on this application'
       
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311185||Delivery|
	
		@311186
		Scenario Outline:Verify user			
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
    Then Ship to patient
  	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Verify that 'Reason of PAP Appeal' should consist all values
 	 Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311186||Delivery|


		@311187
		Scenario Outline:Verify user			
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
    Then Ship to patient
  	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
   	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
    Then Click on ApplicationNumber
    And Click on PAP Appeal Tab 
    Then Select type of Appeal
    Then Verify that user is able select reason for PAP Appeal based on document received patient HCP
      
 	 Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311187||Delivery|
	
		@399999
		Scenario Outline:Verify user	
		 Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 		
	 Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
   	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
    Then Click on ApplicationNumber
    And Click on PAP Appeal Tab 
    Then Select type of Appeal
    Then Verify that user is able select reason for PAP Appeal based on document received patient HCP
      
 	 
 	 Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_399999||Delivery|
	
			@311188
		Scenario Outline:Verify user			
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
    Then Ship to patient
  	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button   
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Verify that user is able select Available Documents after appeal
      
 	 
 	 Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311188||Delivery|	
	
	
			@311189
		Scenario Outline:Verify user			
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
   Then Ship to patient
 	 And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Verify that user is able select one of the status
      
 	 Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311189||Delivery|
	
	
	
		@311190
		Scenario Outline:Verify user			
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
   Then Ship to patient
  	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
     Then Select Appeal Status
      Then Check the Client Appeal checkbox
      Then Verify that changes should not be saved
      
 	 Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311190||Delivery|
	
		@311191
		Scenario Outline:Verify user			
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
    Then Ship to patient
  	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
    Then Click on ApplicationNumber
    And Click on PAP Appeal Tab 
    Then Select type of Appeal
    Then Select reasons for appeal
    Then Select Appeal Status
    Then Click on Appeal save button
      
 	 Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311191||Delivery|
	
	
			@311192
		Scenario Outline:Verify user			
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
   Then Ship to patient
 	 And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
     Then Select Appeal Status
      Then Verify Outreach dropdown should display
      
 	 Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311192||Delivery|
	
	@311193
		Scenario Outline:Verify user			
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
    Then Ship to patient
  	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
    Then Click on ApplicationNumber
    And Click on PAP Appeal Tab 
    Then Select type of Appeal
    Then Select reasons for appeal
    Then Select Appeal Status
    Then Outreach drop down value should consist of following values None, Outbound call and Other
      
 	 Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311193||Delivery|
		
	@311194
		Scenario Outline:Verify user			
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
   Then Ship to patient
 	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
     Then Select Appeal Status
      And Select Outreach as Outbound Call
      Then Add notes in activity Notes
      Then Click on Appeal save button
      Then Click on Applicants Name Link
      Then Click on View Logs button
      Then Verify that selected outreach value and activity notes is populating in the activity log
      
      
 	 Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311194||Delivery|
			
	@311195
		Scenario Outline:Verify user			
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
   Then Ship to patient
 	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
     Then Select Appeal Status
      And Select Outreach as Outbound Call
     Then Click on Appeal save button
     Then Click on Applicants Name Link
     Then Click on View Logs button
     Then Verify that selected outreach value is populating in the activity log
      
      
 	 Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311195||Delivery|
			
	@311197
		Scenario Outline:Verify user			
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
    Then Ship to patient
  	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
     Then Select Appeal Status
      And Select Outreach as Outbound Call
      Then Add notes in activity Notes
      Then Click on Appeal save button
      Then Click on Applicants Name Link
      Then Click on View Logs button
      Then Click on Add new log button
      Then Verify that 'Activity Code' drop down should consist of 'Appeal Notes' value for appeals agent
      
 	 Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311197||Delivery|
			
	@311198
		Scenario Outline:Verify user			
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
    Then Ship to patient
  	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
     Then Select Appeal Status
      And Select Outreach as Outbound Call
      Then Add notes in activity Notes
      Then Click on Appeal save button
      Then Click on Applicants Name Link
      Then Click on View Logs button
      Then Click on Add new log button
      Then Verify that 'Appeal Notes' value should display below 'Appeals Incomplete Letter Sent'
      
 	 Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311198||Delivery|

	@311196
		Scenario Outline:Verify user			
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
   Then Ship to patient
 	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
     Then Select Appeal Status
      And Select Outreach as Outbound Call
      Then Click on Appeal save button
      Then  Then Logout from the PFIZER
      And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
     When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      Then Click on Applicants Name Link 
       Then Click on View Logs button
       Then Verify that all the other outbound outreaches made should be tracked at the activity log manually by appeals agent
       
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311196||Delivery|
	
	@Delhivry99
	Scenario Outline:Verify user			
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
    Then Ship to patient
   	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
     Then Select Appeal Status
      And Select Outreach as Outbound Call
      Then Click on Appeal save button
      Then Click on Applicants Name Link
      Then Click on View Logs button
      Then Click on Add new log button
      Then Click On Save Log Button
      Then  Then Logout from the PFIZER
      And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
     When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      Then Click on Applicants Name Link 
       Then Click on View Logs button
       Then Click on Add new log button
      Then Verify that 'Activity Code' drop down should not consist of 'Appeal Notes' value for appeals agent
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery__311199||Delivery|
	
	@Delhivry200
		Scenario Outline:Verify user			
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
    Then Ship to patient
 	  And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
     Then Select Appeal Status
      And Select Outreach as Outbound Call
      Then Click on Appeal save button
      Then  Then Logout from the PFIZER
      And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
     When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      Then Click on Applicants Name Link 
       Then Click on View Logs button
      Then Verify that manual auto populated Appeals Notes should display to agent
      
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery__311200||Delivery|

@tre
Scenario Outline: HomeDelivery_TC_41
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url
    Then Login Using PAP cridentials  
   # When Enter username and password
    And  Click On Login Button
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
    And Verify  User should be navigated to next page to enter application information
    Then  Select 'Select Service Offering' to Enrollment
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
    #Then Verify All the details got entered 
    #Then Verify the FullfillmentMethod Medvatx Dropdown and Ship To Patient
    And Select the 'Ship To' type       
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
 # Then Then Logout from the PFIZER
  #Given open Browser and enter url
  #Then Login Using PAP cridentials
  #And  Click On Login Button
   # Then Verify User should able to login in pfizer
    #When Select Case
    #Then Verify Case is Dispalyed in Table or Split View
    #Then select appeal cases and click on acountname
    
  And Click on PAP APEEAL
  #Then Check the Documents
Then fill the details  
 Then click on app prescription
  And Do Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Navigate to New Tab
    Then Click on Save Outcome Button 
    #Then Then Logout from the PFIZER
     # And   open Browser and enter url 
   #Then Login Using PAP cridentials
   #And  Click On Login Button
  And Navigate to Previous Tab
   And Click on PAP APEEAL
   Then verify the error

  Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_TC_41| |HomeDelivery|
	
	
	
		@311201
		Scenario Outline:Verify user			
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
    Then Ship to patient
   	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
      Then Select Appeal Status
       Then Click on Appeal save button
      And Click on 'Application Prescriptions' and link 
      And Click on 'PAP Determine Outcom' Button after attach
    Then Verify Valid Practitioner Pop Up>Click on OK
     And Click on 'Create Order' Button in new window and Click on Ok Button
      And Click on PAP Appeal Tab 
       Then Select type of Appeal
     Then Verify that only one Home delivery appeal can be done per patient
       
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311201||Delivery|
	
@311205
		Scenario Outline:Verify user			
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
    Then Ship to patient
 	  And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
      Then Select Appeal Status
      Then Click on Appeal save button
      Then Click on Appeal link
      Then Verify that should become read only once appeals record is saved     
      
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311205||Delivery|
		
		@311206
		Scenario Outline:Verify user			
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
    Then Ship to patient
 	  And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
     Then Verify that 'Home Delivery Appeal' should be one of value of 'What type of Appeal is this' drop down
      
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311206||Delivery|
		
		@311207
		Scenario Outline:Verify user			
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
   Then Ship to patient
 	 And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
       Then Select type of Appeal
     Then Verify that 'Home Delivery Appeal' should consist all accordions
      
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311207||Delivery|	
		
		@311208
		Scenario Outline:Verify user			
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
    #And Select AppRX Checkbox>Set RX Date
   #Then Verify the FullfillmentMethod Medvatx Dropdown and Ship To Patient
   Then Ship to patient
 	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
 
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
   # And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    #Then Click on 'Save Outcome' button
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	#Then Verify Case is Dispalyed in Table or Split View
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
       Then Select type of Appeal
       Then Verify that Enrollment Information Accordion should consist components
       
      
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311208||Delivery|	
	
	
	
	
			
		@311209
		Scenario Outline:Verify that Appeal Information Accordion should consist components			
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
    #And Select AppRX Checkbox>Set RX Date
   #Then Verify the FullfillmentMethod Medvatx Dropdown and Ship To Patient
   Then Ship to patient
 	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
 
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
   # And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    #Then Click on 'Save Outcome' button
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	#Then Verify Case is Dispalyed in Table or Split View
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
       Then Select type of Appeal
    Then Verify that Appeal Information Accordion should consist components
    
      
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311209||Delivery|	
	
	
	
	
			@311210
		Scenario Outline: HomeDelivery_TC_102
				
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
   Then Ship to patient
 	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
 
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Application Number Click on PAP Appeal Tab
       Then Select type of Appeal
       Then Verify that Appeal Status Information Accordion should consist components 
    
           
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311210||Delivery|	
	
	
	
	
			
	@311211
		Scenario Outline:HomeDelivery_TC_103
	
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
   Then Ship to patient
 	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
 
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Application Number Click on PAP Appeal Tab
      Then Select type of Appeal
      Then Select reasons for appeal
     Then Select Appeal Status
      And Select Outreach as Outbound Call
      Then Add notes in activity Notes
      Then Click on Appeal save button
      Then Click on Applicants Name Link
      Then Click on View Logs button
      Then Verify that Activity Notes Text field value should be populated
      
      # Then Click on Add new log button
      # Then Verify that 'Activity Code' drop down should consist of 'Appeal Notes' value for appeals agent
  
  
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311211||Delivery|	    

	
	@311229
		Scenario Outline:Generic_TC_11
	
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
   Then Ship to patient
 	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
 
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
     When Select Case
    Then Verify 'PAP Appeals' list is removed from the list
      
        Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311229||Delivery|
	
	
	
	@311228
	Scenario Outline:Generic_TC_10	
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
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information    
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'    
    And Select any Income document type > Click on 'Save' Button
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
	And Click on 'PAP Determine Outcom' Button after attach
 	Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
    Then Verify question mark symbol is not precending Reason for PAP Appeal in Appeal Information Section        
      
        Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311228||Delivery|
	
	
	
	
	
		
			@311230
	 Scenario Outline:Generic_TC_12
	
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
   Then Ship to patient
 	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    Then Login with Appeal specialist team credentials
    
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Application Number Click on PAP Appeal Tab
      Then Select type of Appeal
      Then Select reasons for appeal
      Then Select Appeal Status
      Then Click on Appeal save button
      Then Click on Appeal Hyperlink
      Then Verify type of appeal drop down is read only once an appeal record is saved
       
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311230||Delivery|


		@311213
	Scenario Outline:HomeDelivery_TC_105			
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
   Then Ship to patient
 	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Application Number Click on PAP Appeal Tab
      Then Select type of Appeal
      Then Select reasons for appeal
     Then Select Appeal Status
      Then Verify that Level2 Appeals Accordion should consist of 'Client Appeal' checkbox

 	 Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311213||Delivery|
	

	
	Scenario Outline: HomeDelivery_TC_Sourav
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url
    Then Login Using PAP cridentials  
   # When Enter username and password
    And  Click On Login Button
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
    Then  Select 'Select Service Offering' to Enrollment
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
      Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Select Product Name Form Strength SIG and Pill Qty
    #Then Verify All the details got entered 
    #Then Verify the FullfillmentMethod Medvatx Dropdown and Ship To Patient
    And Select the 'Ship To' type       
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
  #Then Then Logout from the PFIZER
  #Given open Browser and enter url
  #Then Login Using PAP cridentials
 # And  Click On Login Button
  #  Then Verify User should able to login in pfizer
   # When Select Case
    #Then Verify Case is Dispalyed in Table or Split View
    #Then select appeal cases and click on acountname
    
  And Click on PAP APEEAL
 # Then Check the Documents
Then fill in the details
 Then click on app prescription
 And  switch on to frame
 And Click On 'Add Product' Button
    And please Select Product Name Form Strength SIG and Pill Qty
    #And Do Select the 'Ship To' type 
    #And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button in Second product line
    Then  Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then wait for fiveseconds      
    And Do Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK 
#Then  Verify the message and create order button shouldnot be present
And Navigate to New Tab
#Then verify createorderbutton is not displaying
Then check create order button is not dosplaying and error msg
	
	Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311177| |HomeDelivery|
	
	
	
    @311178a
	Scenario Outline: HomeDelivery_TC_70
	 Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
   When Enter username and password
   And  Click On Login Button
#  Then Login Using PAP cridentials
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
    And Verify  User should be navigated to next page to enter application information
    Then  Select 'Select Service Offering' to Enrollment
    #And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
   # Then Verify  Option must get selected as Y
     Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'    
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then wait for fiveseconds     
    And Do Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Navigate to New Tab
    Then Click on Save Outcome Button
  And Navigate to Previous Tab
  #Then Then Logout from the PFIZER
  #Given open Browser and enter url
  #Then Login Using PAP cridentials
 # And  Click On Login Button
  #  Then Verify User should able to login in pfizer
   # When Select Case
    #Then Verify Case is Dispalyed in Table or Split View
    #Then select appeal cases and click on acountname
  And Click on PAP Appeal Tab 
      Then Select type of Appeal
    Then Select Reason for PAP Appeal as 'US Residency'
    Then Select Appeal status
     Then Click on Appeal Save Button
 Then click on app prescription
 And  switch on to frame
 And Click On 'Add Product' Button
    And Select Product Name Form Strength SIG and Pill Qty1
   And Please select the Ship To type
   And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button1
    And Click on Attach Button in Second product line
    Then  Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then wait for fiveseconds     
    And Do Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
 Then Click on 'Save Outcome' button
 And Click on PAP Appeal Tab 
   And Select type of Appeal as home delievery
         Then Select reasons for appeal
      Then Select Appeal status
     Then Click on Appeal Save Button          
	Then click on app prescription
 And  switch on to frame
 Then wait for fiveseconds     
    And Do Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
   # And Click on 'Create Order' Button in new window and Click on Ok Button
   And Navigate to New Tab
	
	
	Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311178| |HomeDelivery|
		
		
		@311182
Scenario Outline:HomeDelivery_TC_74
	 Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
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
    And Select Product Name Form Strength SIG and Pill Qty
    And Select the 'Ship To' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    Then wait for fiveseconds    
     And Do Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK 
   And Click on 'Save OutCome' Button
   And Verify  User must be redirected to Application Page
     And please Navigate to Application page and please click on PAP Appeal
        And Select Home delivery Appeal from dropdown
      Then Select Appeal Status as Approved
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
   And Click on 'Create Order' Button in new window and Click on Ok Button
   
	Then Click on View Order
	#When Click On Order ID
	Then get the PatientId and OrderID
    Then Close All the All Tabs
    
    Then Login to CRM using valid admin credentials
   Then  Verify User should able to login in pfizer
    And Select Order ID>>enter Order value
    And  Click on Search
   When  Click on Order ID link
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
     Then Select the Created Order-ID>> 'Applications'
    Then Click on Refill button
  # And Handle Alert pop Up
    Then Accept OK>>Click on place Refill Button
  And Click on 'PAP Determine Outcom' Button After save
    Then Verify Valid Practitioner Pop Up>Click on OK

	Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311182| |HomeDelivery|


@311220pass
Scenario Outline:Generic_TC_02
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
    #Then Verify  Option must get selected as Y    
    Then Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'    
    And Select any Income document type > Click on 'Save' Button
    #Then Verify Application must get created and Application number must get displayed in Application Page
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
    #Then get patientId
    #And Click on 'PAP Determine Outcom' Button
	And Click on 'PAP Determine Outcom' Button after attach
 	Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	#Then Verify Case is Dispalyed in Table or Split View
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      And Select check box in Application Products
      #Then select LOE Appeal under Available Reasons field 
	Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status
       Then Verify Outreach dropdown should display
	
	Examples:
    |TC_ID|      |TestDataSheet|
	|LOEAppeals_311220| |LOEAppeals|
	
	
	@311224
	Scenario Outline:Generic_TC_06

	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
   When Enter username and password
   And  Click On Login Button
   Then Verify User should able to login in pfizer
   When Select Case
   Then Verify Case is Dispalyed in Table or Split View
   Then Select Documnet Intake
   And Click on First Patient
   And Handle Alert pop Up
   Then fetch the Case number created
   Then Click On Search Patient
   And Verify Add Patient Page appears
   Then Read The Patient ID From TextFile
   Then Select PatientID>Enter Patient ID>Click on Search
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
   And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
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
   #And Select Home delivery Appeal from dropdown
  # Then Enter all the required fields
   Then Do Enter all the fields
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK
  	And Click on 'Create Order' Button in new window and Click on Ok Button
	 And Verify  User must be redirected to Application Page
	 And click on lolappeal id
   Then do the necessary changes and Save
    
     
  #Then Login with Appeal specialist team credentials
    #Then Verify User should able to login in pfizer
   #When Select Case
    #Then Verify Case is Dispalyed in Table or Split View
    #Then select appeal cases and click on acountname						
  #And Click on PAP APEEAL
  #Then Do Enter all the fields
    #Then Go to Application Prescription Page
    #And Click on 'PAP Determine Outcom' Button 
    #Then Verify Valid Practitioner Pop Up>Click on OK
#	And Click on 'Create Order' Button in new window and Click on Ok Button
#	And Verify  User must be redirected to Application Page
  #And click on lolappeal id
  #Then do the necessary changes and Save
	
Examples:
    |TC_ID|      |TestDataSheet|
	|LOEAppeals_311224| |LOEAppeals|


@tre
	Scenario Outline:Product_TC_42
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
    Then Verify  Option must get selected as N
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
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK    
    Then Click on 'Save Outcome' button
    
      Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	#Then Verify Case is Dispalyed in Table or Split View
  	 When  Select Global Search
    Then select Application>>Field>>Value>>Search
     And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      And Verify the errormsg
      
	Examples:
     |TC_ID|      |TestDataSheet|
	|LOEAppeals_311108| |LOEAppeals|




	
	

	
	
@311199
		Scenario Outline:Verify user			
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
    ##Then Click on 'Supporting documents' > click on First Document
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
    #And Select AppRX Checkbox>Set RX Date
   #Then Verify the FullfillmentMethod Medvatx Dropdown and Ship To Patient
   Then Ship to patient
 	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
 
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
   # And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    #Then Click on 'Save Outcome' button
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	#Then Verify Case is Dispalyed in Table or Split View
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
     Then Select Appeal Status
      And Select Outreach as Outbound Call
	  # Then Add notes in activity Notes
      Then Click on Appeal save button
      Then Click on Applicants Name Link
      Then Click on View Logs button
      Then Click on Add new log button
      Then Click On Save Log Button
      Then  Then Logout from the PFIZER
      And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
     When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      Then Click on Applicants Name Link 
       Then Click on View Logs button
       Then Click on Add new log button
      Then Verify that 'Activity Code' drop down should not consist of 'Appeal Notes' value for appeals agent
      
      Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311199||Delivery|
	
	@311200
		Scenario Outline:Verify user			
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
    ##Then Click on 'Supporting documents' > click on First Document
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
    #And Select AppRX Checkbox>Set RX Date
   #Then Verify the FullfillmentMethod Medvatx Dropdown and Ship To Patient
   Then Ship to patient
 	And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
 
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button after attach     
   # And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify in OVM display 'Group A Product cannot be shipped to patient'
    #Then Click on 'Save Outcome' button
    Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	#Then Verify Case is Dispalyed in Table or Split View
  	When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
      Then Select reasons for appeal
     Then Select Appeal Status
      And Select Outreach as Outbound Call
	  # Then Add notes in activity Notes
      Then Click on Appeal save button
      Then  Then Logout from the PFIZER
      And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
     When  Select Global Search
    Then select Application>>Field>>Value>>Search
    And   Click on Search
     Then Click on ApplicationNumber
      Then Click on Applicants Name Link 
       Then Click on View Logs button
      Then Verify that manual auto populated Appeals Notes should display to agent
      
       Examples:
	|TC_ID|    |TestDataSheet|
	|Delivery_311200||Delivery|
	
	@May27
Scenario Outline:HomeDelivery_TC_25
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
     And Click on First Patient
   And Handle Alert pop Up
   Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
     And Select the 'Ship To' type       
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
      And Select Home delivery Appeal from dropdown
      Then Select Appeal Status as Approved
      #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK
   And Click on 'Create Order' Button in new window and Click on Ok Button
 	
 	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
   #Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
   And Edit the Enrollment Start Date and End date in Devlopers console
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
    Then Verify that Ship to Is defaulted to Patient for Reenrollment application
    
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311133||Appeals  |
	
	@May27	
	Scenario Outline:HomeDelivery_TC_26
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
     And Click on First Patient
   And Handle Alert pop Up
   Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
     Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
     And Select the 'Ship To' type       
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
 	And Click on 'Save OutCome' Button
	And Verify  User must be redirected to Application Page
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
      And Select Home delivery Appeal from dropdown
      Then Select Appeal Status as Approved
      #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK
   And Click on 'Create Order' Button in new window and Click on Ok Button
 	
 	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
   #Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
   And Edit the Enrollment Start Date and End date in Devlopers console
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
    Then Verify that Ship to Is defaulted to Patient for Reenrollment application
    
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311134||Appeals  |
	
		@May27
	Scenario Outline:HomeDelivery_TC_27
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
     And Click on First Patient
   And Handle Alert pop Up
   Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
     And Select the 'Ship To' type       
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
 	And Click on 'Save OutCome' Button
	And Verify  User must be redirected to Application Page
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
      And Select Home delivery Appeal from dropdown
      Then Select Appeal Status as Approved
      #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK
   And Click on 'Create Order' Button in new window and Click on Ok Button
 	
 	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
   #Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
   And Edit the Enrollment Start Date and End date in Devlopers console
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
    And Select Product Name Form Strength SIG and Pill Qty other than enrollment
     And Handle Alert pop Up
    #Then Verify All the details got entered        
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    Then Verify that Ship to Is defaulted to Patient for Reenrollment application
    
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311135||Appeals  |
	
		@May27
	Scenario Outline:HomeDelivery_TC_28
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
     And Click on First Patient
   And Handle Alert pop Up
   Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
     Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
     And Select the 'Ship To' type       
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
 	And Click on 'Save OutCome' Button
	#And Verify  User must be redirected to Application Page
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
      And Select Home delivery Appeal from dropdown
      Then Select Appeal Status as Approved
     #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK
   And Click on 'Create Order' Button in new window and Click on Ok Button
 	
 	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
   #Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
  And Edit the Enrollment Start Date and End date in Devlopers console Expire Enrollment
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
 	And Click on 'Create Order' Button in new window and Click on Ok Button 
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311136||Appeals  |
	
		@May27
	Scenario Outline:HomeDelivery_TC_29
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
     And Click on First Patient
   And Handle Alert pop Up
   Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
     Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
     And Select the 'Ship To' type       
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
   Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
 	And Click on 'Save OutCome' Button
	And Verify  User must be redirected to Application Page
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
      And Select Home delivery Appeal from dropdown
      Then Select Appeal Status as Approved
      #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK
   And Click on 'Create Order' Button in new window and Click on Ok Button
 	
 	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
    #Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
  And Edit the Enrollment Start Date and End date in Devlopers console Expire Enrollment
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
 	And Click on 'Create Order' Button in new window and Click on Ok Button 
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311137||Appeals  |
	
	@May27	
	Scenario Outline:HomeDelivery_TC_30
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
     And Click on First Patient
   And Handle Alert pop Up
   Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
     Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
     And Select the 'Ship To' type       
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
 	And Click on 'Save OutCome' Button
	#And Verify  User must be redirected to Application Page
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
      And Select Home delivery Appeal from dropdown
      Then Select Appeal Status as Approved
      #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK
   And Click on 'Create Order' Button in new window and Click on Ok Button
 	
 	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
    #Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
  And Edit the Enrollment Start Date and End date in Devlopers console Expire Enrollment
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
    And Select Product Name Form Strength SIG and Pill Qty other than enrollment
     And Handle Alert pop Up
    #Then Verify All the details got entered        
  And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
 	And Click on 'Create Order' Button in new window and Click on Ok Button 
    
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311138||Appeals  |
   
	
@May27
	Scenario Outline:HomeDelivery_TC_08
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
   And Handle Alert pop Up
    Then Click On Search Patient
    And Verify Add Patient Page appears
     Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
 	And Click on 'Create Order' Button in new window and Click on Ok Button 
 	
 	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
  And Edit the Enrollment Start Date and End date in Devlopers console
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
    And Select the 'Ship To' type      
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
      Then Verify the Error Msg in OVM like Group A product can’t be shipped to Patient
    
    
      Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311116||Appeals  |
	
	@May27	
	Scenario Outline:HomeDelivery_TC_09
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
   And Click on First Patient
   And Handle Alert pop Up
    Then Click On Search Patient
    And Verify Add Patient Page appears
       Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
 	And Click on 'Create Order' Button in new window and Click on Ok Button 
 	
 	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
   #Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
  And Edit the Enrollment Start Date and End date in Devlopers console
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
     And Select the 'Ship To' type    
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
      Then Verify that Enrollment outcome is Incomplete
    
    
      Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311117||Appeals  |

@May27
	Scenario Outline:HomeDelivery_TC_12
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
   And Handle Alert pop Up
    Then Click On Search Patient
    And Verify Add Patient Page appears
      Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
 	And Click on 'Create Order' Button in new window and Click on Ok Button 
 	
 	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
   #Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
  And Edit the Enrollment Start Date and End date in Devlopers console Expire Enrollment
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
      And Click on 'Create Order' Button in new window and Click on Ok Button
     
     
        Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311120||Appeals  |
	
	@May27
	Scenario Outline:HomeDelivery_TC_10
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
   And Click on First Patient
   And Handle Alert pop Up
    Then Click On Search Patient
    And Verify Add Patient Page appears
      Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
 	And Click on 'Create Order' Button in new window and Click on Ok Button 
 	
 	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
   #Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
  And Edit the Enrollment Start Date and End date in Devlopers console
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
   # Then fetch the Application Number created for reenrollment
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
     And Select the 'Ship To' type    
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
     Then Click on 'Save Outcome' button
    #Then  Then Logout from the PFIZER
    
    Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
   #Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
  Then Enter the query in apex code text box
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
    Then Search for the applicaton number and enter the details
     Then Click on Applicant Name Link  
     And Click on View Logs Button
     Then Verify that no incomplete letter is generated like Group A product can’t be shipped to Patient
     
     
       Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311118||Appeals  |
	
		@May27
		Scenario Outline:HomeDelivery_TC_14
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
   And Handle Alert pop Up
    Then Click On Search Patient
    And Verify Add Patient Page appears
       Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
   # Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
 	And Click on 'Create Order' Button in new window and Click on Ok Button 
 	
 	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
   #Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
  And Edit the Enrollment Start Date and End date in Devlopers console
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
    #Then fetch the Application Number created for reenrollment
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
     And Select the 'Ship To' type    
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
     And Click On 'Add Product' Button again
    And Select product name and Form Strength for second product line
  Then  Select the pill Quantity less than 280 in second product line
  #And select the ship to type in second product line
   And Select Second AppRX Checkbox>Set RX Date>Click on 'Save' Button 
 #Then Select 'Original RX' and 'GovernmentID' in second product line
   And Click on Attach Button in Second product line
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    Then Verify that Product Outcome is Rejected
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311121||Appeals  |
	
	@May27
	Scenario Outline:HomeDelivery_TC_15
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
   And Handle Alert pop Up
    Then Click On Search Patient
    And Verify Add Patient Page appears
      Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
 	And Click on 'Create Order' Button in new window and Click on Ok Button 
 	
 	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
   #Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
  And Edit the Enrollment Start Date and End date in Devlopers console
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
   # Then fetch the Application Number created for reenrollment
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
     And Select the 'Ship To' type    
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
     And Click On 'Add Product' Button again
    And Select product name and Form Strength for second product line
  Then  Select the pill Quantity less than 280 in second product line
  #And select the ship to type in second product line
   And Select Second AppRX Checkbox>Set RX Date>Click on 'Save' Button
 #Then Select 'Original RX' and 'GovernmentID' in second product line
   And Click on Attach Button in Second product line
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    Then Verify that Product Outcome is Rejected
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311122||Appeals  |
	
	
	

@May27
 Scenario Outline:HomeDelivery_TC_31
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
     And Click on First Patient
   And Handle Alert pop Up
   Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
     And Select the 'Ship To' type       
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
   Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
 	And Click on 'Save OutCome' Button
	And Verify  User must be redirected to Application Page
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
      And Select Home delivery Appeal from dropdown
      Then Select Appeal Status as Approved
      #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK
   And Click on 'Create Order' Button in new window and Click on Ok Button
 	
 	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
    #Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
  And Edit the Enrollment Start Date and End date in Devlopers console Expire Enrollment
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
    And Select Product Name Form Strength SIG and Pill Qty other than enrollment
    And Handle Alert pop Up
    #Then Verify All the details got entered        
  And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
 	And Click on 'Create Order' Button in new window and Click on Ok Button 
     And Login as Appeal Specialist Team
       When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
     Then click on the account name
      And Handle Alert pop Up
     Then Click on Application number under the 'Applications'
      And please Navigate to Application page and please click on PAP Appeal
	Then select Home Delivery Appeal from Dropdown and verify the error msg
	
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311139||Appeals  |
	
	
	@May27
	Scenario Outline:HomeDelivery_TC_32
   Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
     And Click on First Patient
   And Handle Alert pop Up
   Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
     Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
     And Select the 'Ship To' type       
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
   Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
 	And Click on 'Save OutCome' Button
	#And Verify  User must be redirected to Application Page
	Then Close All the All Tabs
     Then Then Logout from the PFIZER
     
     	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
    #Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
  And Edit the Enrollment Start Date and End date in Devlopers console Expire Enrollment
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
     #Then fetch the Application Number created for reenrollment
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
    And Select the 'Ship To' type      
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    #Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh' 
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
      And Select Home delivery Appeal from dropdown
      Then Select Appeal Status as Approved
      #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK
   And Click on 'Create Order' Button in new window and Click on Ok Button
   Then Verify that Appeal is attached with ReEnrollment Application
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311140||Appeals  |
	



@May27
	Scenario Outline:HomeDelivery_TC_35
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
     And Click on First Patient
   And Handle Alert pop Up
   Then fetch the Case number created
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Read The Patient ID From ReEnrollmentTextFile
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#   #Then Click on 'Supporting documents' > click on First Document
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
      And Click on 'Create Order' Button in new window and Click on Ok Button 
      
      	Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
   Then Click on ok
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
  And Edit the Enrollment Start Date and End date in Devlopers console Expire Enrollment
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
     #Then fetch the Application Number created for reenrollment
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
   And Select Product Name Form Strength SIG and Pill Qty other than enrollment
   And Handle Alert pop Up
    And Select the 'Ship To' type      
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
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
      And Select Home delivery Appeal from dropdown
      Then Verify that All the product are listed there in Appeals page under Application product name
	
		
	
	
      
      
        Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311143||Appeals  |

@311204
Scenario Outline:HomeDelivery_TC_96
   Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
   When Enter username and password
   And  Click On Login Button
   Then Verify User should able to login in pfizer
   When Select Case
   Then Verify Case is Dispalyed in Table or Split View
   Then Select Documnet Intake
   And Click on First Patient
   And Handle Alert pop Up
   Then fetch the Case number created
   Then Click On Search Patient
   And Verify Add Patient Page appears
   Then Read The Patient ID From TextFile
   Then Select PatientID>Enter Patient ID>Click on Search
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
   And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
   And Click on Attach Button
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
   Then Verify Valid Practitioner Pop Up>Click on OK 
   And Click on 'Save OutCome' Button
   
   #Then Then Logout from the PFIZER
      
   And Login as Appeal Specialist Team
   And Verify  User must be redirected to Application Page
   When Select Case
   Then click on Recently Viewed link
   Then Click on Appeal Case
   And Search for the case number in appeal cases
   Then click on the account name
   And Handle Alert pop Up
   Then Click on Application number under the 'Applications'
   And please Navigate to Application page and please click on PAP Appeal
   And Select Home delivery Appeal from dropdown
   Then Enter all the required fields
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK
	And Click on 'Create Order' Button in new window and Click on Ok Button
	And Verify  User must be redirected to Application Page
	And click on lolappeal id
  # And click on lolappeal id
   Then do the necessary changes and Save
   
	Examples:
|TC_ID|      |TestDataSheet|
	|LOEAppeals_311204| |LOEAppeals|
	
@311219hm
		Scenario Outline:Generic_TC_01
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
   When Enter username and password
   And  Click On Login Button
   Then Verify User should able to login in pfizer
   When Select Case
   Then Verify Case is Dispalyed in Table or Split View
   Then Select Documnet Intake
   And Click on First Patient
   And Handle Alert pop Up
   Then fetch the Case number created
   Then Click On Search Patient
   And Verify Add Patient Page appears
   Then Read The Patient ID From TextFile
   Then Select PatientID>Enter Patient ID>Click on Search
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
   And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
   And Click on Attach Button
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
   Then Verify Valid Practitioner Pop Up>Click on OK 
   And Click on 'Save OutCome' Button
   #Then Then Logout from the PFIZER
      
   And Login as Appeal Specialist Team
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
|TC_ID|      |TestDataSheet|
	|LOEAppeals_311219| |LOEAppeals|


@311221
	Scenario Outline:Generic_TC_03
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
   When Enter username and password
   And  Click On Login Button
   Then Verify User should able to login in pfizer
   When Select Case
   Then Verify Case is Dispalyed in Table or Split View
   Then Select Documnet Intake
   And Click on First Patient
   And Handle Alert pop Up
   Then fetch the Case number created
   Then Click On Search Patient
   And Verify Add Patient Page appears
   Then Read The Patient ID From TextFile
   Then Select PatientID>Enter Patient ID>Click on Search
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
   And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
   And Click on Attach Button
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
   Then Verify Valid Practitioner Pop Up>Click on OK 
   And Click on 'Save OutCome' Button
   And Verify  User must be redirected to Application Page
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
  Then Verify the dropdown is present with Values
	
	
	
	
	Examples:
|TC_ID|      |TestDataSheet|
	|LOEAppeals_311221| |LOEAppeals|

@311222
Scenario Outline:Generic_TC_03
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
   When Enter username and password
   And  Click On Login Button
   Then Verify User should able to login in pfizer
   When Select Case
    Then Verify Case is Dispalyed in Table or Split View
     Then click on Recently Viewed link
    Then select appeal cases and click on View Logs
	And switch on to frame
	And click On Add new Log
	Then Check the Values in Dropdown
	
	
	
	Examples:
|TC_ID|      |TestDataSheet|
	|LOEAppeals_311222| |LOEAppeals|

@311223
Scenario Outline:Generic_TC_03
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
   When Enter username and password
   And  Click On Login Button
   Then Verify User should able to login in pfizer
   When Select Case
    Then Verify Case is Dispalyed in Table or Split View
     Then click on Recently Viewed link
     Then Click on Appeal Case
    Then click on the account name
   And Handle Alert pop Up
   Then Click on Application number under the 'Applications'
   And please Navigate to Application page and please click on PAP Appeal
       Then Verify save button is disabled
	
	
	
	Examples:
|TC_ID|      |TestDataSheet|
	|LOEAppeals_311223| |LOEAppeals|


@311109
Scenario Outline:HomeDelivery_TC_01
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select Product Name
     And Handle Alert pop Up
    Then Verify product 'FullFillment Method' and 'Ship to' Drop Down Values
    And Select the 'Ship To' type
    Then After Changing the ship To type Verify the Fullfillment method
      
      
       
        Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311109||Appeals  |
	
	@311111
	Scenario Outline:HomeDelivery_TC_03
	  Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    Then Verify the Error Msg in OVM like Group A product can’t be shipped to Patient
      
       
        Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311111||Appeals  |
	
	@311112
	Scenario Outline:HomeDelivery_TC_04
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
      Then Verify the Error Msg in OVM like Group A product can’t be shipped to Patient
      Then Verify that Enrollment outcome is Incomplete
       
        Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311112||Appeals  |
	
	
	@311113
	Scenario Outline:HomeDelivery_TC_05
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
     And Select the 'Ship To' type   
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    Then Click on 'Save Outcome' button
    Then Close All the All Tabs
    Then  Then Logout from the PFIZER
    
    Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
    And Click on Debug menu in Developers console
  Then Click on Console Apex Window text
  Then Enter the query in apex code text box
  And click on Execute
   
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
    Then Search for the applicaton number and enter the details
     Then Click on Applicant Name Link  
     And Click on View Logs Button
     Then Verify that no incomplete letter is generated like Group A product can’t be shipped to Patient
     
       
        Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311113||Appeals  |
	
	
@311114
	Scenario Outline:HomeDelivery_TC_06
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    
      And Click On 'Add Product' Button again
    And Select product name and Form Strength for second product line
  Then  Select the pill Quantity less than 280 in second product line
  And select the ship to type in second product line
   And Select Second AppRX Checkbox>Set RX Date>Click on 'Save' Button
# Then Select 'Original RX' and 'GovernmentID' in second product line
   And Click on Attach Button in Second product line
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button 
   
    Then Verify Valid Practitioner Pop Up>Click on OK 
      #Then Verify the Error Msg in OVM like Group A product can’t be shipped to Patient
      Then Verify that Enrollment outcome is Incomplete
       
        Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311114||Appeals  |
	
		@311115
	Scenario Outline:HomeDelivery_TC_07
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    
      And Click On 'Add Product' Button again
    And Select product name and Form Strength for second product line
  Then  Select the pill Quantity less than 280 in second product line
  And select the ship to type in second product line
   And Select Second AppRX Checkbox>Set RX Date>Click on 'Save' Button 
 #Then Select 'Original RX' and 'GovernmentID' in second product line
   And Click on Attach Button in Second product line
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button 
   
    Then Verify Valid Practitioner Pop Up>Click on OK 
      #Then Verify the Error Msg in OVM like Group A product can’t be shipped to Patient
      Then Verify that Enrollment outcome is Incomplete
       
        Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311115||Appeals  |
	
	
	
	
	@311119
	Scenario Outline:HomeDelivery_TC_11
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    # And Select the 'Ship To' type   
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
      And Click on 'Create Order' Button in new window and Click on Ok Button
     
     
        Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311119||Appeals  |
	
	@311132
	Scenario Outline:HomeDelivery_TC_24
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save OutCome' Button
	#And Verify  User must be redirected to Application Page
	Then Close All the All Tabs
     #Then Then Logout from the PFIZER
      
      And Login as Appeal Specialist Team
       When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
     Then click on the account name
      And Handle Alert pop Up
     Then Click on Application number under the 'Applications'
      And please Navigate to Application page and please click on PAP Appeal
      And Select Home delivery Appeal from dropdown
      Then Enter all the required fields
      #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK
   Then verify 'Create Order' Button is Not Present
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311132||Appeals  |
	
	@311110
	Scenario Outline:HomeDelivery_TC_02
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
      Then Verify the Error Msg in OVM like Group A product can’t be shipped to Patient
      
       
        Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311110||Appeals  |
	
	@311124
	Scenario Outline:HomeDelivery_TC_16
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save OutCome' Button
	#And Verify  User must be redirected to Application Page
	Then Close All the All Tabs
     Then Then Logout from the PFIZER
      
      And Login as Appeal Specialist Team
       When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
    Then Verify that the Created Case is displayed under Appeal cases
    
    
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311124||Appeals  |
	
	
	@311125
	Scenario Outline:HomeDelivery_TC_17
	  Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
     Then click on Recently Viewed link
     Then Verify that Appeal Cases List View in not present in agent login
     
       Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311125||Appeals  |
	
	
	
	@311126
	Scenario Outline:HomeDelivery_TC_18
	 Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
     Then click on Recently Viewed link
     Then Verify that Appeal Cases List View is present in Appeal specialist login
     
       Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311126||Appeals  |
	
	
	@311127
	Scenario Outline:HomeDelivery_TC_19
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save OutCome' Button
	#And Verify  User must be redirected to Application Page
	Then Close All the All Tabs
     Then Then Logout from the PFIZER
      
      And Login as Appeal Specialist Team
       When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
    Then Verify that the Created Case is displayed under Appeal cases
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311127||Appeals  |
	
	@311128
	Scenario Outline:HomeDelivery_TC_20
  	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save OutCome' Button
	#And Verify  User must be redirected to Application Page
#	Then Close All the All Tabs
     #Then Then Logout from the PFIZER
      
      And Login as Appeal Specialist Team
       When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
    Then Verify that the Created Case is displayed under Appeal cases
    Then Click on the searched case number
    Then Close The AdverseEventPage
    And Check the Appeal Processed Checkbox
    
     When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
    Then Verify that After Appeal processed true the case is not displayed in Appeal Cases
   
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311128||Appeals  |

	
	
	@311129
		Scenario Outline:HomeDelivery_TC_21
	 Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Verify that status is not Closed incomplete in Appeal cases
     
      Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311129||Appeals  |
	
	
	@311130
		Scenario Outline:HomeDelivery_TC_22
	  Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Verify that status incomplete or pending pfizer review in Appeal cases
     
      Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311130||Appeals  |
	
@311131
Scenario Outline:HomeDelivery_TC_23
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save OutCome' Button
	#And Verify  User must be redirected to Application Page
	Then Close All the All Tabs
  #   Then Then Logout from the PFIZER
      
      And Login as Appeal Specialist Team
       When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
     Then click on the account name
      And Handle Alert pop Up
     Then Click on Application number under the 'Applications'
      And please Navigate to Application page and please click on PAP Appeal
      And Select Home delivery Appeal from dropdown
      Then Select Appeal Status as Approved
      #Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
   And Click on 'Create Order' Button in new window and Click on Ok Button
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311131||Appeals  |

@311141
Scenario Outline:HomeDelivery_TC_33
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    
      And Click On 'Add Product' Button again
    And Select product name and Form Strength for second product line
  Then  Select the pill Quantity less than 280 in second product line
  And select the ship to type in second product line
   And Select Second AppRX Checkbox>Set RX Date>Click on 'Save' Button
   And Click on Attach Button in Second product line
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button 
   
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
    
    And Verify  User must be redirected to Application Page
      And Click on PAP Appeal Tab
       And Select Home delivery Appeal from dropdown
       Then Verify that All the product are listed there in Appeals page under Application product name
      
      
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311141||Appeals  |
	
	@311142
	Scenario Outline:HomeDelivery_TC_34
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    
      And Click On 'Add Product' Button again
    And Select product name and Form Strength for second product line
  Then  Select the pill Quantity less than 280 in second product line
  And select the ship to type in second product line
   And Select Second AppRX Checkbox>Set RX Date>Click on 'Save' Button 
 #Then Select 'Original RX' and 'GovernmentID' in second product line
   And Click on Attach Button in Second product line
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
      #And In Application page Verify the Approval status
      And Click on PAP Appeal Tab
       And Select Home delivery Appeal from dropdown
       Then Verify that All the product are listed there in Appeals page under Application product name
      
      
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311142||Appeals  |
	
@311144
Scenario Outline:HomeDelivery_TC_36
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
   # Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
   And Click on 'PAP Determine Outcom' Button
   
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
    
    And Verify  User must be redirected to Application Page
      #And In Application page Verify the Approval status
      And Click on PAP Appeal Tab
       And Select Product Appeal from dropdown
       Then Select Appeal Status as Approved
     # Then Click on Refersh Button
    #Then Verify Appeal got saved
    Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK
   And Click on 'Create Order' Button in new window and Click on Ok Button
   
    And Verify  User must be redirected to Application Page
   And Click on 'Application Prescriptions' > 'New' 
   And Handle Alert pop Up
    Then Verify User must be redirected to Application Prescription page    
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    #Then Verify Checkbox is selected and date is set   
    Then click on 'Search state license' and select license 
     And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Select Product Name Form Strength SIG and Pill Qty other than enrollment
    And Handle Alert pop Up
    #Then Verify All the details got entered    
     And Select the 'Ship To' type   
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
   #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button 
   
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
     And Verify  User must be redirected to Application Page
      #And In Application page Verify the Approval status
      And Click on PAP Appeal Tab
       And Select Home delivery Appeal from dropdown
       Then Verify that All the product are listed there in Appeals page under Application product name
      
    
     Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311144||Appeals  |
	
@311145
		Scenario Outline:HomeDelivery_TC_37
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save OutCome' Button
	And Verify  User must be redirected to Application Page
      And Click on PAP Appeal Tab
       And Select Home delivery Appeal from dropdown
      Then Select Appeal Status as Approved
      #Then Click on Refersh Button
     
     And Click on 'Application Prescriptions' > 'New' 
     And Handle Alert pop Up
    Then Verify User must be redirected to Application Prescription page    
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    #Then Verify Checkbox is selected and date is set   
    Then click on 'Search state license' and select license 
     And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Select Product Name Form Strength SIG and Pill Qty other than enrollment
    And Handle Alert pop Up
     Then Verify that Ship to Is defaulted to Patient for Reenrollment application
    
      Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311145||Appeals  |
	
	@311146
		Scenario Outline:HomeDelivery_TC_38
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save OutCome' Button
	#Then Close All the All Tabs
	#Then  Then Logout from the PFIZER
	
	  And Login as Appeal Specialist Team
       When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
     Then click on the account name
      And Handle Alert pop Up
     Then Click on Application number under the 'Applications'
      And please Navigate to Application page and please click on PAP Appeal
      And Select Home delivery Appeal from dropdown
      Then Select Appeal Status as Approved
      #Then Click on Refersh Button
     
     And Click on 'Application Prescriptions' > 'New' 
     And Handle Alert pop Up
    Then Verify User must be redirected to Application Prescription page    
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    #Then Verify Checkbox is selected and date is set   
    Then click on 'Search state license' and select license 
     And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Select Product Name Form Strength SIG and Pill Qty other than enrollment
    And Handle Alert pop Up
     Then Verify that Ship to Is defaulted to Patient for Reenrollment application
    
      Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311146||Appeals  |
	
	@311147
	Scenario Outline:HomeDelivery_TC_39
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save OutCome' Button
	Then Close All the All Tabs
	#Then  Then Logout from the PFIZER
	
	  And Login as Appeal Specialist Team
    When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
    Then click on the account name
    And Handle Alert pop Up
    Then Click on Application number under the 'Applications'
    And please Navigate to Application page and please click on PAP Appeal
    And Select Home delivery Appeal from dropdown
    Then Select Appeal Status as Approved
    #Then Click on Refersh Button
     
    And Click on 'Application Prescriptions' > 'New' 
    And Handle Alert pop Up
    Then Verify User must be redirected to Application Prescription page    
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    #Then Verify Checkbox is selected and date is set   
    Then click on 'Search state license' and select license 
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Select Product Name Form Strength SIG and Pill Qty other than enrollment
    And Handle Alert pop Up
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Create Order' Button in new window and Click on Ok Button 
    
      Examples:
	|TC_ID|     |TestDataSheet|
	|Appeals_311147||Appeals  |
	
@311148
  Scenario Outline: HomeDelivery_TC_40
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
    And Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
    Then Navigate to the Patient details page > Click on Applications 'New'
    And Verify  User should be navigated to next page to enter application information
    Then Select 'Select Service Offering' to Enrollment
    And Verify Section to Enter Application Information and PAP Information must get displayed
    Then In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'
    And Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date
    Then Verify  All the details Should get selected
    And In PAP Information section Select 'US Resident' as 'Y'
    Then Verify  Option must get selected as Y
    Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then In Application Page > Click on 'Application insurances' >  'New'
    Then  Verify Application Insurance Page must get displayed
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
    And Select the 'Ship To' type
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
    And Login as Appeal Specialist Team
    When Select Case
    Then click on Recently Viewed link
    Then Click on Appeal Case
    And Search for the case number in appeal cases
    Then click on the account name
    And Handle Alert pop Up
    Then Click on Application number under the 'Applications'
    And please Navigate to Application page and please click on PAP Appeal
    And Select Home delivery Appeal from dropdown
    Then Select Appeal Status as Approved
    And Click on 'Application Prescriptions' > 'New' 
    And Handle Alert pop Up
    Then Verify User must be redirected to Application Prescription page
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'
    Then click on 'Search state license' and select license
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed
    And Select Product Name Form Strength SIG and Pill Qty other than enrollment
    And Handle Alert pop Up
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button

 

    Examples: 
      | TC_ID          |  | TestDataSheet |
      | Appeals_311148 |  | Appeals       |
	
@311150
	Scenario Outline:HomeDelivery_TC_42
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save Outcome' button
	#And Verify  User must be redirected to Application Page
	Then Close All the All Tabs
  #  Then Then Logout from the PFIZER
      
     And Login as Appeal Specialist Team
     When Select Case
     Then click on Recently Viewed link
     Then Click on Appeal Case
     And Search for the case number in appeal cases
     Then click on the account name
     And Handle Alert pop Up
     Then Click on Application number under the 'Applications'
     And please Navigate to Application page and please click on PAP Appeal
     And Select Home delivery Appeal from dropdown
     Then Select Appeal Status as Approved
     Then Go to Application Prescription Page
     And Click on 'PAP Determine Outcom' Button 
     Then Verify Valid Practitioner Pop Up>Click on OK
	 And Click on 'Create Order' Button in new window and Click on Ok Button
	
	Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311150| |HomeDelivery|


@311172
	Scenario Outline: HomeDelivery_TC_64
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
   When Enter username and password
   And  Click On Login Button
   Then Verify User should able to login in pfizer
   When Select Case
   Then Verify Case is Dispalyed in Table or Split View
   Then Select Documnet Intake
   And Click on First Patient and perform inbound call
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
    And Select Refills quantity         
   And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
   And Click on Attach Button
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
   Then Verify Valid Practitioner Pop Up>Click on OK 
   And Click on 'Save OutCome' Button
   And Verify  User must be redirected to Application Page
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
   And Select Home delivery Appeal from dropdown
   Then Enter all the required fields 
    Then Go to Application Prescription Page
   And Do Select the 'Ship To' type         
   # And Click on 'PAP Determine Outcom' Button
    And Click on 'PAP Determine Outcom' Button After save
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then verify 'Create Order' Button is Not Present
    
	Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311172| |HomeDelivery|

@311171
Scenario Outline: HomeDelivery_TC_63
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
   When Enter username and password
   And  Click On Login Button
   Then Verify User should able to login in pfizer
   When Select Case
   Then Verify Case is Dispalyed in Table or Split View
   Then Select Documnet Intake
   And Click on First Patient and perform inbound call
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
    And Select Refills quantity         
   And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
   And Click on Attach Button
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
   Then Verify Valid Practitioner Pop Up>Click on OK 
   And Click on 'Save OutCome' Button
   And Verify  User must be redirected to Application Page
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
   And Select Home delivery Appeal from dropdown
   Then Enter all the required fields 
    Then Go to Application Prescription Page
      
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
     And Click on 'Create Order' Button in new window and Click on Ok Button
   And Verify  User must be redirected to Application Page
   And Click on 'Application Prescriptions' > 'New' 
   Then Verify the popup
   Then Verify User must be redirected to Application Prescription page    
   Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
   And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
   Then click on 'Search state license' and select license 
   And Click On 'Add Product' Button
   Then Veriify Section to Enter product Information is Displayed    
   And Do Select Product Name Form Strength SIG and Pill Qty
   And Handle Alert pop Up   
     And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
   And Click on Attach Button
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
   Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Create Order' Button in new window and Click on Ok Button
    
    Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311171| |HomeDelivery|
	
    @311168
	Scenario Outline: HomeDelivery_TC_60
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
   When Enter username and password
   And  Click On Login Button
   Then Verify User should able to login in pfizer
   When Select Case
   Then Verify Case is Dispalyed in Table or Split View
   Then Select Documnet Intake
   And Click on First Patient and perform inbound call
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
    And Select Refills quantity         
   And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
   And Click on Attach Button
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
   Then Verify Valid Practitioner Pop Up>Click on OK 
   And Click on 'Save OutCome' Button
   And Verify  User must be redirected to Application Page
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
   And Select Home delivery Appeal from dropdown
   Then Enter all the required fields 
    Then Go to Application Prescription Page
      
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
     And Click on 'Create Order' Button in new window and Click on Ok Button
   And Verify  User must be redirected to Application Page
   And Click on 'Application Prescriptions' > 'New' 
   Then Verify the popup
   Then Verify User must be redirected to Application Prescription page    
   Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
   And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
   Then click on 'Search state license' and select license 
   And Click On 'Add Product' Button
   Then Veriify Section to Enter product Information is Displayed    
   And Do Select Product Name Form Strength SIG and Pill Qty
   And Handle Alert pop Up  
   And Do Select the 'Ship To' type  
   
    Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311168| |HomeDelivery|
	
	@311167
	Scenario Outline: HomeDelivery_TC_59
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
   When Enter username and password
   And  Click On Login Button
   Then Verify User should able to login in pfizer
   When Select Case
   Then Verify Case is Dispalyed in Table or Split View
   Then Select Documnet Intake
   And Click on First Patient and perform inbound call
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
    And Select Refills quantity         
   And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
   And Click on Attach Button
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
   Then Verify Valid Practitioner Pop Up>Click on OK 
   And Click on 'Save OutCome' Button
   And Verify  User must be redirected to Application Page
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
   And Select Home delivery Appeal from dropdown
   Then Enter all the required fields 
    Then Go to Application Prescription Page
      
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
     And Click on 'Create Order' Button in new window and Click on Ok Button
   And Verify  User must be redirected to Application Page
   And Click on 'Application Prescriptions' > 'New' 
   Then Verify the popup
   Then Verify User must be redirected to Application Prescription page    
   Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
   And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
   Then click on 'Search state license' and select license 
   And Click On 'Add Product' Button
   Then Veriify Section to Enter product Information is Displayed    
   And Do Select Product Name Form Strength SIG and Pill Qty
   And Handle Alert pop Up  
   And Do Select the 'Ship To' type  
   
    Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311167| |HomeDelivery|
	
	@311166
	Scenario Outline: HomeDelivery_TC_58
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
   When Enter username and password
   And  Click On Login Button
   Then Verify User should able to login in pfizer
   When Select Case
   Then Verify Case is Dispalyed in Table or Split View
   Then Select Documnet Intake
   And Click on First Patient and perform inbound call
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
    And Select Refills quantity         
   And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
   And Click on Attach Button
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
   Then Verify Valid Practitioner Pop Up>Click on OK 
   And Click on 'Save OutCome' Button
   And Verify  User must be redirected to Application Page
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
   And Select Home delivery Appeal from dropdown
   Then Enter all the required fields 
    Then Go to Application Prescription Page
      
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
     And Click on 'Create Order' Button in new window and Click on Ok Button
   And Verify  User must be redirected to Application Page
   And Click on 'Application Prescriptions' > 'New' 
   Then Verify the popup
   Then Verify User must be redirected to Application Prescription page    
   Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
   And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
   Then click on 'Search state license' and select license 
   And Click On 'Add Product' Button
   Then Veriify Section to Enter product Information is Displayed    
   And Do Select Product Name Form Strength SIG and Pill Qty
   And Handle Alert pop Up  
   And Do Select the 'Ship To' type  
   
    Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311166| |HomeDelivery|


@311151
Scenario Outline: HomeDelivery_TC_43
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save Outcome' button
	#And Verify  User must be redirected to Application Page
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
    And Select Home delivery Appeal from dropdown
    Then Verify that All the product are listed there in Appeals page under Application product name
	
   Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311151| |HomeDelivery|
	
@tre@Execution7
	Scenario Outline: HomeDelivery_TC_44
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
   And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And Click on PAP Appeal Tab
    And Select Home delivery Appeal from dropdown
    Then Verify that All the product are listed there in Appeals page under Application product name
	
 
  Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311152| |HomeDelivery|
	
	@311153pass
	Scenario Outline:HomeDelivery_TC_45
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Verify  User must be redirected to Application Page
    
    And Click on 'Application Prescriptions' > 'New' 
    Then Verify the popup
    Then Verify User must be redirected to Application Prescription page    
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date' 
    Then click on 'Search state license' and select license 
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Do Select Product Name Form Strength SIG and Pill Qty
    And Handle Alert pop Up
    And Select the 'Ship To' type   
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
     And Click on 'Save OutCome' Button  
     Then Close All the All Tabs  
     And Verify  User must be redirected to Application Page
     And Click on PAP Appeal Tab
     And Select Home delivery Appeal from dropdown
     Then Verify that All the product are listed there in Appeals page under Application product name
    
 Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311153| |HomeDelivery|
	
	@311154
	Scenario Outline:HomeDelivery_TC_46
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save Outcome' button
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
    And Select Home delivery Appeal from dropdown
    Then Verify that All the product are listed there in Appeals page under Application product name
	
   Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311154| |HomeDelivery|

@311155
	Scenario Outline:HomeDelivery_TC_47
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save OutCome' Button
	And Verify  User must be redirected to Application Page
    And Click on PAP Appeal Tab
    And Select Home delivery Appeal from dropdown
    Then Select Appeal Status as Approved
    And Click on 'Application Prescriptions' > 'New' 
    And Handle Alert pop Up
    Then Verify User must be redirected to Application Prescription page    
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date' 
    Then click on 'Search state license' and select license 
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Do Select Product Name Form Strength SIG and Pill Qty
    And Handle Alert pop Up
    Then verify whether patient value is selected
	
	
	
	Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311155| |HomeDelivery|
		
		@311156
	Scenario Outline:HomeDelivery_TC_48
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save OutCome' Button
	And Verify  User must be redirected to Application Page
    And Click on PAP Appeal Tab
    And Select Home delivery Appeal from dropdown
    Then Select Appeal Status as Approved
    And Click on 'Application Prescriptions' > 'New' 
    And Handle Alert pop Up
    Then Verify User must be redirected to Application Prescription page    
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date' 
    Then click on 'Search state license' and select license 
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Do Select Product Name Form Strength SIG and Pill Qty
    And Handle Alert pop Up
    Then verify whether patient value is selected
	
	Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311156| |HomeDelivery|
	
	@311157
	Scenario Outline:HomeDelivery_TC_49
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save OutCome' Button
	And Verify  User must be redirected to Application Page
    And Click on PAP Appeal Tab
    And Select Home delivery Appeal from dropdown
    Then Select Appeal Status as Approved
    And Click on 'Application Prescriptions' > 'New' 
    And Handle Alert pop Up
    Then Verify User must be redirected to Application Prescription page    
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date' 
    Then click on 'Search state license' and select license 
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Do Select Product Name Form Strength SIG and Pill Qty
    And Handle Alert pop Up
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    And Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Create Order' Button in new window and Click on Ok Button
    
    
Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311157| |HomeDelivery|
	
	@311158
	Scenario Outline:HomeDelivery_TC_50
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
	  And Click on 'Save OutCome' Button
	  And Verify  User must be redirected to Application Page
    And Click on PAP Appeal Tab
    And Select Home delivery Appeal from dropdown
    Then Select Appeal Status as Approved
    And Click on 'Application Prescriptions' > 'New' 
    And Handle Alert pop Up
    Then Verify User must be redirected to Application Prescription page    
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    And Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date' 
    Then click on 'Search state license' and select license 
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Do Select Product Name Form Strength SIG and Pill Qty
    And Handle Alert pop Up
    Then verify whether patient value is selected
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    And Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Create Order' Button in new window and Click on Ok Button
	
	Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311158| |HomeDelivery|
	
	
	
	@311159
	Scenario Outline:HomeDelivery_TC_51
	
		Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
    Then Close All the All Tabs  
    And Verify  User must be redirected to Application Page
    And Click on PAP Appeal Tab
    And Select Home delivery Appeal from dropdown
    Then Select Appeal Status as Approved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK
	And Click on 'Create Order' Button in new window and Click on Ok Button
	And Verify  User must be redirected to Application Page
	And click on lolappeal id
    Then Verify that All the product are listed there in Appeals page under Application product name
    
	
	Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311159| |HomeDelivery|
	
	@311160
	Scenario Outline:HomeDelivery_TC_52
	
		Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And Click on PAP Appeal Tab
    And Select Home delivery Appeal from dropdown
    Then Select Appeal Status as Approved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK
	And Click on 'Create Order' Button in new window and Click on Ok Button
	And Verify  User must be redirected to Application Page
	And click on lolappeal id
    Then Verify that All the product are listed there in Appeals page under Application product name
    
	
	Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311160| |HomeDelivery|

	@311161
	Scenario Outline:HomeDelivery_TC_53
	
		Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
	And Verify  User must be redirected to Application Page
	   And please Navigate to Application page and please click on PAP Appeal
   And Select Home delivery Appeal from dropdown
    Then Verify that All the product are listed there in Appeals page under Application product name
	
	Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311161| |HomeDelivery|
	
	@311162
	Scenario Outline:HomeDelivery_TC_54
	
		Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient and perform inbound call
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
   And Click on 'Save OutCome' Button
	#And Verify  User must be redirected to Application Page
	   And please Navigate to Application page and please click on PAP Appeal
   And Select Home delivery Appeal from dropdown
    Then Verify that All the product are listed there in Appeals page under Application product name
	
	Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311162| |HomeDelivery|
	

@311165	
Scenario Outline: HomeDelivery_TC_57
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
   When Enter username and password
   And  Click On Login Button
   Then Verify User should able to login in pfizer
   When Select Case
   Then Verify Case is Dispalyed in Table or Split View
   Then Select Documnet Intake
   And Click on First Patient and perform inbound call
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
    And Select Refills quantity         
   And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
   And Click on Attach Button
   Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button 
   Then Verify Valid Practitioner Pop Up>Click on OK 
   And Click on 'Save OutCome' Button
   And Verify  User must be redirected to Application Page
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
   And Select Home delivery Appeal from dropdown
   Then Enter all the required fields 
    Then Go to Application Prescription Page
      
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
     And Click on 'Create Order' Button in new window and Click on Ok Button
   And Verify  User must be redirected to Application Page
   And Click on 'Application Prescriptions' > 'New' 
   Then Verify the popup
   Then Verify User must be redirected to Application Prescription page    
   Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
   And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
   Then click on 'Search state license' and select license 
   And Click On 'Add Product' Button
   Then Veriify Section to Enter product Information is Displayed    
   And Do Select Product Name Form Strength SIG and Pill Qty
   And Handle Alert pop Up  
   And Do Select the 'Ship To' type  
   
    Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311165| |HomeDelivery|
	
	@311164
	Scenario Outline:HomeDelivery_TC_56
	
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And Click on PAP Appeal Tab
    And Select Home delivery Appeal from dropdown
    Then Select Appeal Status as Approved
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
   Then click on 'Search state license' and select license 
   And Click On 'Add Product' Button
   Then Veriify Section to Enter product Information is Displayed    
   And Do Select Product Name Form Strength SIG and Pill Qty
   And Handle Alert pop Up  
   And Do Select the 'Ship To' type  
   
    Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311164| |HomeDelivery|
	
	@311163
	Scenario Outline:HomeDelivery_TC_55
	
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And Click on PAP Appeal Tab
    And Select Home delivery Appeal from dropdown
    Then Select Appeal Status as Approved
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
   Then click on 'Search state license' and select license 
   And Click On 'Add Product' Button
   Then Veriify Section to Enter product Information is Displayed    
   And Do Select Product Name Form Strength SIG and Pill Qty
   And Handle Alert pop Up  
   And Do Select the 'Ship To' type  
   
    Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311163| |HomeDelivery|
	
	@311169
	Scenario Outline:HomeDelivery_TC_61
	
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And Click on PAP Appeal Tab
    And Select Home delivery Appeal from dropdown
    Then Select Appeal Status as Approved
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
   Then click on 'Search state license' and select license 
   And Click On 'Add Product' Button
   Then Veriify Section to Enter product Information is Displayed    
   And Do Select Product Name Form Strength SIG and Pill Qty
   And Handle Alert pop Up  
   And Do Select the 'Ship To' type  
   
    Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311169| |HomeDelivery|
	
	@311170
	Scenario Outline:HomeDelivery_TC_62
	
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
    And Click on 'PAP Determine Outcom' Button 
    Then Verify Valid Practitioner Pop Up>Click on OK 
    And Click on 'Save OutCome' Button
    And Verify  User must be redirected to Application Page
    And Click on PAP Appeal Tab
    And Select Home delivery Appeal from dropdown
    Then Select Appeal Status as Approved
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
   Then click on 'Search state license' and select license 
   And Click On 'Add Product' Button
   Then Veriify Section to Enter product Information is Displayed    
   And Do Select Product Name Form Strength SIG and Pill Qty
   And Handle Alert pop Up  
   And Do Select the 'Ship To' type  
   
    Examples:
	|TC_ID|      |TestDataSheet|
	|HomeDelivery_311170| |HomeDelivery|