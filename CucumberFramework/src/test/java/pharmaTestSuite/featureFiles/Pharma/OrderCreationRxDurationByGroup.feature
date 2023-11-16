@OrderCreationRxDurationByGroupfeature
Feature: Order Creation Rx Duration By Group

@168037
	Scenario Outline: Verify that user should be able to place refill order when the release date for the new refill order is less than the RX expiry date
	 
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
    Then Login to CRM using valid admin credentials
    Then  Verify User should able to login in pfizer
    When  Select Global Search
    And Select Order ID>>enter Order value
    And  Click on Search
    When  Click on Order ID link
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
    Then Click on Order Product Shipping Link
    Then Click on Application ID link
    Then Click on View Order
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then  Verify User should able to login in pfizer
    When  Select Global Search
    Then select PatientID>>Field>>Value>>Search
    And   Click on Search
    And  Click on First>>PatientID link
    Then Click on View Order
    Then Select the Created Order-ID>> 'Applications'
    Then Click on Refill button
    Then Accept OK>>Click on place Refill Button
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify that 'Create Order' Button is displayed in new window
    
           Examples:
	|TC_ID|      |TestDataSheet|
	|OrderCreation_168037| |OrderCreation|
	
	@168039
	Scenario Outline: Verify that APPROX. NEXT REFILL DATE field is blank in orders list view Refill remaining is equal to 0 for the recent order
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
    And Select Refills quantity
    Then Select appRX date checkbox and Rx Date 174 days before and click on Save button
    And Select the 'Fullfillment Method' type
        And Select the 'Ship To' type
 Then  Select 'Original RX' and 'GovernmentID'
     And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
     Then Verify that Final outcome button and Create order Button is present and Click on 'Create Order' Button then click on ok button
     Then Click on View order
    Then get the PatientId and OrderID
    
   Then Login to CRM using valid admin credentials
   Then  Verify User should able to login in pfizer
    And Select Order ID>>enter Order value
    And  Click on Search
   When  Click on Order ID link
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
   Then Click on View Order
    Then Select the Created Order-ID>> 'Applications'
    Then Click on Refill button
    Then Accept OK>>Click on place Refill Button
  And Click on 'PAP Determine Outcom' Button After save
      Then Verify Valid Practitioner Pop Up>Click on OK
      
         And Click on 'Create Order' Button in new window and Click on Ok Button
      
         
           Examples:
	|TC_ID|      |TestDataSheet|
	|OrderCreation_168039| |OrderCreation|
	
@168044
	Scenario Outline: Verify that date for the new refill order is less than the RX expiry date 365 days from Rx date for group LOE
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
    Then Verify All the details got entered 
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify Final outcome is denied because of LOE product in OVM Window
    And Navigate to Application page and click on PAP Appeal
    Then Verify Appeal information page is opened with the Reason for Denial should display1
     Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Go to Application Prescription Page
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
    Then Click on Order Product Shipping Link
    Then Click on Application ID link
    Then Click on View Order
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then  Verify User should able to login in pfizer
    When  Select Global Search
    Then select PatientID>>Field>>Value>>Search
    And   Click on Search
    And  Click on First>>PatientID link
    Then Click on View Order
    And Select Second order created
    Then Click on Refill button
    Then Accept OK>>Click on place Refill Button
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify that 'Create Order' Button is displayed in new window
    
           Examples:
	|TC_ID|      |TestDataSheet|
	|OrderCreation_168044| |OrderCreation|

	
	
@183261
	Scenario Outline:Verify user should not be able to do Refill if Rx is expired
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
    And Select Refills quantity
       And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button

      And Select the 'Fullfillment Method' type
        And Select the 'Ship To' type
    Then Verify All the details got entered 
     And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
     And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Verify Final outcome is denied because of LOE product in OVM Window
    And Navigate to Application page and click on PAP Appeal
    Then Verify User is able to create the LOE Appeal
    And Navigate to OVM Window and Verify that the user is able to Create an Order  
      Then Click on View order
    Then get the PatientId and OrderID
     Then Close All the All Tabs
    
    
    
   Then Login to CRM using valid admin credentials
   Then  Verify User should able to login in pfizer
    And Select Order ID>>enter Order value
    And  Click on Search
   When  Click on Order ID link
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
 Then Click on View Order
   And Select Second order created
    Then click on Prescription id link
    Then copy the RX ID from prescription page
    And click on search salesforce tab and paste that Rx Date
    Then click on that Rx Date value
   Then click on RX id under product name
    And Click on Rx date pencil edit button
    Then Change Rx date to 365 days before system date and click on save button
    Then  Then Logout from the PFIZER
    
    And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
#    And Refresh the Login Page
    And Handle Alert pop Up   
    Then  Verify User should able to login in pfizer
    When  Select Global Search
    Then select PatientID>>Field>>Value>>Search
   And   Click on Search
   And  Click on First>>PatientID link
    Then Click on View Order
     And Select Second order created
    Then Click on Refill button
     Then Accept OK>>Click on place Refill Button
    Then Verify that user is not able to do Refill if Rx Expired
   
    
    
     Examples:
	|TC_ID|      |TestDataSheet|
	|OrderCreation_183261| |OrderCreation|
	
@175345
	Scenario Outline:Verify for an expired RX agent is not allowed to go for PAP appeal

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
    Then enter the RXdate
    And Handle Alert pop Up
    Then Verify All the details got entered
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button2
      And Click on 'PAP Determine Outcom' Button In Product Information 
     # Then Verify the popup
    Then Verify Valid Practitioner Pop Up>Click on OK 
	And Click on 'Save OutCome' Button
	
     Then Login with Appeal specialist team credentials
    Then Verify User should able to login in pfizer
  	 When  Select Global Search
    Then select Application>>Field>>Value>>Search
     And   Click on Search
     Then Click on ApplicationNumber
      And Click on PAP Appeal Tab 
      Then Select type of Appeal
Then Verify Error message > Click on cancel button
      # Then verify whether the required message is diaplayed	    

Examples:
|TC_ID|      |TestDataSheet|
|RXdurationbyGroup_175345| |OrderCreation|



@175344
Scenario Outline:Verify that if RX is expired supervisor override is not allowed to create even the initial order.
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
      Then enter the RXdate
      And Handle Alert pop Up
       #Then Verify the popup
      And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
      And Click on Attach Button
        Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
      And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
	Then Verify 'Supervisor Override' Button is not displayed


Examples:
|TC_ID|      |TestDataSheet|
|RXdurationbyGroup_175344| |OrderCreation|

@168041
Scenario Outline:Verify that user should be able to place refill order when the release date for the new refill order is less than the RX expiry date 365 days
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
    #common steps upto here
    Then Veriify Section to Enter product Information is Displayed 
    And Select Product Name Form Strength SIG and Pill Qty
     Then Verify All the details got entered 
      And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
     # And clickonsavebutton
       And Click on Attach Button
        Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
      And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    #Then verify create order button is present and verify finaaloutcome status
	And Click on 'Create Order' Button in new window and Click on Ok Button
	#Then Verify the status of final Income
	#shipping
	Then Click on View Order
    Then get the PatientId and OrderID
    
   Then Login to CRM using valid admin credentials
   Then  Verify User should able to login in pfizer
   When  Select Global Search
    And Select Order ID>>enter Order value
    And  Click on Search
   When  Click on Order ID link
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
   #Then Click on Order Product Detail IH
   Then Click on Order Product Shipping Link
   Then Click on Application ID link
   Then Click on View Order
   # Then  Then Logout from the PFIZER
   
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
    
    And Select Second order created
    Then Click on Refill button
    Then Accept OK>>Click on place Refill Button
     And Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK
     And Click on 'Create Order' Button in new window and Click on Ok Button
    
    




Examples:
|TC_ID|      |TestDataSheet|
|RXdurationbyGroup_168041| |OrderCreation|
	
	
	