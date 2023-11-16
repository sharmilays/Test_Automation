@ProvideAgentsCapabilityToRe-enrollPatientsfeature
Feature: 128922: Provide agents capability to re-enroll patients(uninsured & under insured) while keeping existing application active

@222565
   Scenario Outline:Enrollment active for Underinsured>app sign date is 6/30/2018>System throws error Re-enrollment sent too early>when agent tries to create Re-enrollment on 7/1/2018>System allowing to create re-enrollment
  	
  	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
     And Click on 'Create Order' Button in new window and Click on Ok Button
     
  Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
    Then Click on ok
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
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
         
    
    	Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222565| |ReEnrollment|
	
	@222372
  Scenario Outline:Verify that re-enrollment end dates are populated
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
   #Then Click on Order Product Detail IH
   Then Click on Order Product Shipping Link
   Then Click on Application ID link
   Then Click on View Order
    Then  Then Logout from the PFIZER
    
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
   #Then Verify Remove Button is Enabled
   And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    #Then Click on Applicant Name Link
    
    Then Verify that Approval status is Approved
   
   #Then Verify Start Date of ReEnrollment should start one day after end date of Enrollment
     Then Verify Enrollment Date and Enrollment End Date is displayed
   
    
	
	 	Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222372| |ReEnrollment|
	
	@222367
  Scenario Outline:Verify that outcome is denied and diff verbiage will be displayed
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
   #Then Click on Order Product Detail IH
   Then Click on Order Product Shipping Link
   Then Click on Application ID link
   Then Click on View Order
    Then  Then Logout from the PFIZER
    
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
    And In PAP Information section Select 'US Resident' as 'N' For ReEnrollment
     Then Verify  Option must get selected as N For ReEnrollment
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
   #Then Verify Remove Button is Enabled
   And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify that enrollment outcome is denied
	
	 	Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222367| |ReEnrollment|
	
	@222364
  Scenario Outline:Verify that Re-enrollment end dates are not populated 
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
    And Handle Alert pop Up
    #Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'  
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
   #Then Click on Order Product Detail IH
   Then Click on Order Product Shipping Link
   Then Click on Application ID link
   Then Click on View Order
    Then  Then Logout from the PFIZER
    
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
    And Select Product Name Form Strength SIG and Pill Qty For ReEnrollment
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
   #Then Verify Remove Button is Enabled
   And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Save OutCome' Button
   And Verify  User must be redirected to Application Page
   
      Then Verify Approval Status in the Application Page
     And Verify Enrollment Date And Enrollment End Date are Not Populated    
	
	 	Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222364| |ReEnrollment|
	
	@222356
	 Scenario Outline:Verify that Exisitng enrollment rules apply the same for Re-enrollments for Product not in program,Client not program, No product selected
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
   #Then Click on Order Product Detail IH
   Then Click on Order Product Shipping Link
   Then Click on Application ID link
   Then Click on View Order
    Then  Then Logout from the PFIZER
    
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
    And Select Product Name Form Strength SIG and Pill Qty For ReEnrollment
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
   Then Verify Remove Button is Enabled
   And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
   Then verify 'Create Order' Button is Not Present
    
	 	Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222356| |ReEnrollment|


	
	
	
	@222351
	Scenario Outline:Verify that outcome is incomplete and diff verbiage will be displayed 
	
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
   Then Verify Remove Button is Enabled
   And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'     
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Fetch Enrollment End Date
     Then Click on View orders
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
    Then  Then Logout from the PFIZER
    
    And   open Browser and enter url  
     When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
    And Verify 'not US Resident' Error Message in OVM Window
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify 'Prescription Will be Queued' Error Message is not Displayed
    And Click on Application ID    
    Then Verify Approval Status in the Application Page
	
	 	Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222351| |ReEnrollment|
	
@222334
	Scenario Outline:Verify that prescriber consent sign and date should not populated
	
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
   Then Verify Remove Button is Enabled
   And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'     
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And Fetch Enrollment End Date
     Then Click on View orders
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
   Then Click on View orders
    Then  Then Logout from the PFIZER
    
    And   open Browser and enter url  
     When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
     Then Verify 'Prescriber Consent Sign Date' is not Auto Populated     
    
    	 	Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222334| |ReEnrollment|
	
@222330
Scenario Outline:Verify that view logs are generated for both enrollments
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   Then Login to CRM using valid admin credentials
   Then  Verify User should able to login in pfizer
    When Select Application 
    Then Select Desired View
    And Click on First Application ID in Desired View
    And Fetch Enrollment End Date
     Then Click on Applicant Name Link
     And Fetch Patient ID Number
     And Create 'Supporting Documents'     
      Then  Then Logout from the PFIZER
#    And   open Browser and enter url  
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
   # Then Select PatientID>Enter Patient ID>Click on Search
    And Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button
    Then Verify User should be redirected to another Page to create Application
#    Then Click on 'Supporting documents' > click on First Document
    Then Navigate to the Patient details page > Click on Applications 'New'
    #And Verify  User should be navigated to next page to enter application information
     Then Select 'Select Service Offering' to Enrollment and attach second document
    #Then Select 'Select Service Offering' to Enrollment
   # And Verify Section to Enter Application Information and PAP Information must get displayed
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
    Then Verify All the details got entered        
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
  #			 Then Verify Remove Button is Enabled
   And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'      
    And Do Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    And   open Browser and enter url  
     When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
    When Select Case
    Then Verify Case is Dispalyed in Table or Split View
    Then Select Documnet Intake
    And Click on First Patient
    Then Click On Search Patient
    And Verify Add Patient Page appears
    Then Select PatientID>Enter Patient ID>Click on Search
    #Then Read The Patient ID From ReEnrollmentTextFile
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
     And Click on 'Create Order' Button in new window and Click on Ok Button
     And Fetch Application ID from Header     
     Then Click on Applicant Name Link         
    And Click on View Logs Button
    Then Verify Event logs For Both the Applications are displayed
     	 	Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222330| |ReEnrollment|
	
	
	@222274
	Scenario Outline:Verify that release date of the re-enrollment order should satisfy 75% criteria for same NDC across enrollments
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   Then Login to CRM using valid admin credentials
   Then  Verify User should able to login in pfizer
    When Select Application 
    Then Select Desired View
    And Click on First Application ID in Desired View
    And Fetch Enrollment End Date
     Then Click on Applicant Name Link
     And Fetch Patient ID Number
     And Create 'Supporting Documents'     
      Then  Then Logout from the PFIZER
#    
    And   open Browser and enter url  
     When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
     And Click on 'Create Order' Button in new window and Click on Ok Button
     Then Click on View order
 	 And Select Second order created
 	 Then Verify release date calculation is according to 75 percent criteria
 	  
     	 	Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222274| |ReEnrollment|
	
	@222258
	Scenario Outline:Verify that  No Re-enrollments allowed for Group C	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   Then Login to CRM using valid admin credentials
   Then  Verify User should able to login in pfizer
    When Select Application 
    Then Select Desired View
    And Click on First Application ID in Desired View
    And Fetch Enrollment End Date
     Then Click on Applicant Name Link
     And Fetch Patient ID Number
     And Create 'Supporting Documents'     
      Then  Then Logout from the PFIZER
    And   open Browser and enter url  
     When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
     Then Verify 'No Enrollment for Group C product' Error Message is displayed
 	  
     	 	Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222258| |ReEnrollment|
	
	@222255
	Scenario Outline:Verify that Exisitng enrollment rules apply the same for Re-enrollments for group LOE	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   Then Login to CRM using valid admin credentials
   Then  Verify User should able to login in pfizer
    When Select Application 
    Then Select Desired View
    And Click on First Application ID in Desired View
    And Fetch Enrollment End Date
     Then Click on Applicant Name Link
     And Fetch Patient ID Number
     And Create 'Supporting Documents'     
      Then  Then Logout from the PFIZER
#    
    And   open Browser and enter url  
     When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
	Then Verify Final outcome is denied because of LOE product in OVM Window
    And Navigate to Application page and click on PAP Appeal 
    Then Verify User is able to create the LOE Appeal
    And Navigate to OVM Window and Verify that the user is able to Create an Order
    
 	  
     	 	Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222255| |ReEnrollment|
	
	
	@222248
	Scenario Outline:Verify that status of re-enrollment should be active and enrollment should be inactive when Enrollment application is expired	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   Then Login to CRM using valid admin credentials
   Then  Verify User should able to login in pfizer
    When Select Application 
    Then Select Desired View
    And Click on First Application ID in Desired View
    And Fetch Enrollment End Date
     Then Click on Applicant Name Link
     And Fetch Patient ID Number
     And Create 'Supporting Documents'     
      Then  Then Logout from the PFIZER
#    
    And   open Browser and enter url  
     When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222248| |ReEnrollment|
	
	@222244
	Scenario Outline:Verify that Exisitng enrollment rules apply the same for Re-enrollments for group D(Govt Id )	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   Then Login to CRM using valid admin credentials
   Then  Verify User should able to login in pfizer
    When Select Application 
    Then Select Desired View
    And Click on First Application ID in Desired View
    And Fetch Enrollment End Date
     Then Click on Applicant Name Link
     And Fetch Patient ID Number
     And Create 'Supporting Documents'     
      Then  Then Logout from the PFIZER
    
    And   open Browser and enter url  
     When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer
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
   Then  Verify User should able to login in pfizer
   Then Click on dropDown Next to H@w text and Select Prescription Product
   And Click on Prescription Product Drop Down and select Pending review list
   Then Verify Prescription is listed in list and Mark as Completed
   Then  Then Logout from the PFIZER 
   
   And   open Browser and enter url  
     When Enter username and password
    And  Click On Login Button
    And Refresh the Login Page    
    Then  Verify User should able to login in pfizer 
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
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222244| |ReEnrollment|
	
	@222249
	Scenario Outline:Re-enrollment queue>Due date is in future>Verify that Future re-enrollment checkbox is checked in re-enrollment application page
  	
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
    And Under Insurance Information > Select 'Yes' radio button > Click on 'save' Button
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
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222249| |ReEnrollment|

@222250	
Scenario Outline:Re-enrollment queue>Due date becomes current>Verify that Future re-enrollment checkbox is checked in re-enrollment application page
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
     And Click on 'Create Order' Button in new window and Click on Ok Button
      Then  Then Logout from the PFIZER
#    
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
   #Then Verify Remove Button is Enabled
   And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
     And Verify  User must be redirected to Application Page
    Then verify that Active application Checkbox is checked
    
       	 	Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222250| |ReEnrollment|
	
	@218743
	Scenario Outline: Verification that REEnrollment sent too Early 
  	
   Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
    Then In Application Page > Click on 'Application insurances' >  'New' for Reenrollment
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
   #Then Verify Remove Button is Enabled
   And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
   Then Verify the Error msg re enrollment sent too early in ovm
    
    
    
    
         Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_218743| |ReEnrollment|   
	
	
@218991
Scenario Outline: Verification that REEnrollment sent too Early 
  	 	
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
    Then In Application Page > Click on 'Application insurances' >  'New' for Reenrollment
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
   #Then Verify Remove Button is Enabled
   And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
   Then Verify the Error msg re enrollment sent too early in ovm
    
    
    
    
         Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_218991| |ReEnrollment|   
	
    
    @218993
    Scenario Outline: Verification re-enrollment application is displayed correctlyrify that date on which the system starts accepting
  		
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
    Then In Application Page > Click on 'Application insurances' >  'New' for Reenrollment
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
   #Then Verify Remove Button is Enabled
   And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
   Then Verify the Error msg re enrollment sent too early in ovm
      And Click on 'Save OutCome' Button 
    Then Verify Enrollment Date and Enrollment End Date is displayed
  
    
    
    
      Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_218993| |ReEnrollment|   
	
  @219079
 Scenario Outline: Verification in re-enrollment  that agent is able to close case with document   	
  	
   Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
  And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
   #Then Verify Remove Button is Enabled
   And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
   Then Verify the Error msg re enrollment sent too early in ovm
      And Click on 'Save OutCome' Button 
    Then Verify Enrollment Date and Enrollment End Date is displayed
 
  

        Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_219079| |ReEnrollment|   
	
    
	@219094
	Scenario Outline: Verification that agent is able to create the re-enrollment while keeping the current application active 
  	 	
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
     And Click on 'Create Order' Button in new window and Click on Ok Button
     
  Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console 
   Then Click on ok
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
   #Then Verify Remove Button is Enabled
   And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
     And Click on 'Save OutCome' Button 
    Then  verify that Active application Checkbox is checked
     Then Click on Applicant Name Link 
     Then Click on Enrollment Application number Link
     Then  verify that Active application Checkbox is checked
  
  

        Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_219094| |ReEnrollment|   
	
    
	
	@222237
	Scenario Outline: Verification that no ReEnrollment is allowed for Group C
  	
     
  	
     Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
   And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
        Then Enter all required feilds in 'Group C'
    Then Click On Save Button in Patient Page    
 And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK 
   #Then Verify that enrollment outcome is denied 
   Then Verify 'No Enrollment for Group C product' Error Message is displayed
      
      
      
        Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222237| |ReEnrollment|   
	
    
	
	@222252
	Scenario Outline: Verification that status of both applications should be active and checkbox should checked   
	 Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
     And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
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
     And Click on 'Create Order' Button in new window and Click on Ok Button
     
  Then Login to CRM using valid admin credentials
  Then  Verify User should able to login in pfizer
   Then open the developer Console
   Then Click on ok
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
   #Then Verify Remove Button is Enabled
   And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh' 
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
     And Click on 'Save OutCome' Button 
    Then  verify that Active application Checkbox is checked
     Then Click on Applicant Name Link 
     Then Click on Enrollment Application number Link
     Then  verify that Active application Checkbox is checked
    
    
       
        Examples:
	|TC_ID|      |TestDataSheet|
	|ReEnrollment_222252| |ReEnrollment|    
	
    