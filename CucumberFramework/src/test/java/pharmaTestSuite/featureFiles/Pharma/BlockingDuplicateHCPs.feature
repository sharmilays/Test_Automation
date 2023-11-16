@BlockingDuplicateHCPsfeature
Feature: Blocking duplicate HCPs

@227854
 Scenario Outline:Verify that creating a new prescription is blocked and notification message is displayed when trying to create a new prescription for the same practitioner,same product, form,strength and number of refills remaining is greater than  0 
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
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
   And Click on 'Create Order' Button in new window and Click on Ok Button
   And Click on 'Application Prescriptions' > 'New' 
   And Handle Alert pop Up   
    Then Verify User must be redirected to Application Prescription page    
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    Then click on 'Search state license' and select license    
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered        
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
#    Then Verify HCP is blocked
 
 
  Examples:
		|TC_ID|      |TestDataSheet|
	|DuplicateHCP_227854| |DuplicateHCP|	
	
	@227855
 Scenario Outline:Verify that creating a new prescription is not blocked and order is released after 60% utilization of previous order when creating a new prescription for the same practitioner,same product, form,strength and number of refills remaining is 0 
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
    And Select Refills quantity        
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
   And Click on 'Create Order' Button in new window and Click on Ok Button
   Then Click on View order
    Then get the PatientId and OrderID
    
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
    Then  Then Logout from the PFIZER
   
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
#    And Refresh the Login Page
    Then  Verify User should able to login in pfizer
    When  Select Global Search
    Then select PatientID>>Field>>Value>>Search
   And   Click on Search
   And  Click on First>>PatientID link
#    Then Click on Application number under the 'Applications'
    Then Click on View Order
   Then Select the Created Order-ID>> 'Applications'
    Then Click on Refill button
    And Handle Alert pop Up
    Then Accept OK>>Click on place Refill Button
    #And Do Not Attach any Attachment>>Save>>Application
    #And Switch to prescription page Frame
  Then Click on 'PAP Determine Outcom' Button In Product Information
  Then Verify Valid Practitioner Pop Up>Click on OK
  And Click on 'Create Order' Button in new window and Click on Ok Button
   Then Click on View order
    Then get the PatientId and OrderID
    
  Then Login to CRM using valid admin credentials
   Then  Verify User should able to login in pfizer
    And Select Order ID>>enter Order value
    And  Click on Search
   When Click on Order ID link in the Search result      
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
    Then  Then Logout from the PFIZER
   
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
#    And Refresh the Login Page
    Then  Verify User should able to login in pfizer
    When  Select Global Search
    Then select PatientID>>Field>>Value>>Search
   And   Click on Search
   And  Click on First>>PatientID link
    And Click on 'Application Prescriptions' > 'New' 
    And Handle Alert pop Up   
    Then Verify User must be redirected to Application Prescription page    
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    Then click on 'Search state license' and select license    
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Select Product Name Form Strength SIG and Pill Qty
    Then Verify All the details got entered
    And Select Refills quantity        
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
#   Then Verify Remove Button is Enabled
#    And Click on Attach Button
#    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
#   And Click on 'PAP Determine Outcom' Button
#   Then Verify Valid Practitioner Pop Up>Click on OK  
#   And Click on 'Create Order' Button in new window and Click on Ok Button
#   Then Click on View order
#   And Select Second order created
# 	 Then Verify release date calculation is according to 75 percent criteria
 
  Examples:
		|TC_ID|      |TestDataSheet|
	|DuplicateHCP_227855| |DuplicateHCP|
	
		
	@227856
	Scenario Outline:Verify that new prescription can be created and proceed when Dosage Increased(Different NDC)  
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
   Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
   And Click on 'Create Order' Button in new window and Click on Ok Button
   And Click on 'Application Prescriptions' > 'New' 
   And Handle Alert pop Up   
    Then Verify User must be redirected to Application Prescription page    
    Then Under 'Practitioner Information' section > Click on 'Search Practitioner' Button
    And Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button 
    Then click on 'Search state license' and select license    
    And Click On 'Add Product' Button
    Then Veriify Section to Enter product Information is Displayed    
    And Select Product Name Form Strength SIG and Pill Quantity for Second product
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
   And Click on 'PAP Determine Outcom' Button
   Then Verify Valid Practitioner Pop Up>Click on OK  
   And Click on 'Create Order' Button in new window and Click on Ok Button
 
 
  Examples:
		|TC_ID|      |TestDataSheet|
	|DuplicateHCP_227856| |DuplicateHCP|	