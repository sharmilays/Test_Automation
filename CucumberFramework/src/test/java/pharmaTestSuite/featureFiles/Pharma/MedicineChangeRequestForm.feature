@MedicineChangeRequest
Feature: Medicine Change Request Form: Supporting Document Rule


@192026
  Scenario Outline: Verify that ‘Medicine Change Request’ checkbox is displayed under Type of document list while attaching case to patient  
  	
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
    Then Click on Add Patient in the page              
    Then Enter First name and Last Name feilds
    Then Enter the valid Date in Date of Birth Feild
    Then click on Smarty street symbol in Mailing Address
    And Enter the Adress in new window and Click on save Button
    And Verify All Entered Data should dislpay Mailing Address Section
    Then Click on Check if Shipping Address is same as Mailing Address Check Box
    And Enter the Home Phone under Contact Information
    Then Click On Save Button in Patient Page
    Then Verify Patient is Created.
    And Click on 'Attach Case' Button 
    Then verify ' Medicine Change Request' Check box is present
    
        
         Examples:
	|TC_ID|      |TestDataSheet|
	|MedicineChangeRequest_192026| |MedicineChangeRequest       | 
    
    

	@192028
  Scenario Outline:  ‘Attach Case’> ‘Medicine Change Request’ checkbox is displayed under Type of document list>Verify that user is able to select the ‘Medicine Change Request’ from the ‘Type of Document’ multi-select picklist 
  	
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
    Then Click on Add Patient in the page  
    Then Enter First name and Last Name feilds
    Then Enter the valid Date in Date of Birth Feild
    Then click on Smarty street symbol in Mailing Address
    And Enter the Adress in new window and Click on save Button
    Then Click on Check if Shipping Address is same as Mailing Address Check Box
    And Enter the Home Phone under Contact Information
    Then Click On Save Button in Patient Page
    Then Verify Patient is Created.
    And Click on 'Attach Case' Button 
    Then verify ' Medicine Change Request' Check box is present
    And  Click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application

         Examples:
	|TC_ID|      |TestDataSheet|
	|MedicineChangeRequest_192028| |MedicineChangeRequest       | 
	
	
	
		 @192030
  Scenario Outline: Added new medicine->selected the document contains document type as ‘Medicine Change Request’>Verify that system should not display any errors and should allow Agent to create order 
  	
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
     And Click on 'Create Order' Button in new window and Click on Ok Button 
     And Click on 'Application Prescriptions' Link > First existing Application
      And Handle Alert pop Up
     And Click On 'Add Product' Button again
    And Select Product Name Form Strength SIG and Pill Qty in 2nd product
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'     
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK   
     And Click on 'Supervisor Override' Button in new window and Click on Ok Button
    

	         Examples:
	|TC_ID|      |TestDataSheet|
	|MedicineChangeRequest_192030| |MedicineChangeRequest       | 
	
	
	
	
		
	@192032
  Scenario Outline: Added new medicine->agent not attached the document contains document type as ‘Medicine Change Request’>Verify that system is displayed an error message like "No Medicine Change Request attached to Prescription Product" with Supervisor Override button 
  	
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
     And Click on 'Create Order' Button in new window and Click on Ok Button 
     And Click on 'Application Prescriptions' Link > First existing Application
     And Handle Alert pop Up
     And Click On 'Add Product' Button again
      And Select Product Name Form Strength SIG and Pill Qty in 2nd product
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK   
     And Click on 'Supervisor Override' Button in new window and Click on Ok Button
    

	         Examples:
	|TC_ID|      |TestDataSheet|
	|MedicineChangeRequest_192032| |MedicineChangeRequest       | 
	
	
	
		 @192043
  Scenario Outline: Agent change the Prescriber->selected the document contains document type as ‘Medicine Change Request’>Verify that system should not display any errors and should allow Agent to create order 
  	
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
     And Click on 'Create Order' Button in new window and Click on Ok Button 
     And Click on 'Application Prescriptions' Link > First existing Application
      And Handle Alert pop Up
     And Click On 'Add Product' Button again
      And Select Product Name Form Strength SIG and Pill Qty in 2nd product
      And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
     And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'   
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK   
     And Click on 'Supervisor Override' Button in new window and Click on Ok Button
    

	         Examples:
	|TC_ID|      |TestDataSheet|
	|MedicineChangeRequest_192043| |MedicineChangeRequest       | 
		
	
	
	
	
	
		 @192044
  Scenario Outline: Agent change the Prescriber->agent not attached the document contains document type‘Medicine Change Request’>Verify that system is displayed an error message like"No Medicine Change Request attached to Prescription Product" with Supervisor Override button 
  	
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
     And Click on 'Create Order' Button in new window and Click on Ok Button 
     And Click on 'Application Prescriptions' Link > First existing Application
      And Handle Alert pop Up
     And Click On 'Add Product' Button again
      And Select Product Name Form Strength SIG and Pill Qty in 2nd product
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK   
     And Click on 'Supervisor Override' Button in new window and Click on Ok Button
    

	         Examples:
	|TC_ID|      |TestDataSheet|
	|MedicineChangeRequest_192044| |MedicineChangeRequest       | 
		
		
	
	
	@192035
	Scenario Outline:Verify that system should not display any errors and should allow Agent to create order  
	
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
    Then Read The Patient ID From ReEnrollmentTextFile
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
    And Select Refills quantity
     And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    And Select the 'Fullfillment Method' type
        And Select the 'Ship To' type
 
     And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
   And Click on 'Create Order' Button in new window and Click on Ok Button
      Then Click on View order
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
    Then select PatientID>>Field>>Value>>Search same patient id    
   And   Click on Search
   And  Click on First>>PatientID link
    Then Click on View Order
   Then Select the Created Order-ID>> 'Applications'
   Then Click on Custom Order button
   Then Click on Dosage Increase
    Then Click on Save and Proceed

   And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'  
   And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
   And Click on 'Create Order' Button in new window and Click on Ok Button
      
	
	
	
	
	         Examples:
	|TC_ID|      |TestDataSheet|
	|MedicineChangeRequest_192035| |MedicineChangeRequest       | 
	
	
	