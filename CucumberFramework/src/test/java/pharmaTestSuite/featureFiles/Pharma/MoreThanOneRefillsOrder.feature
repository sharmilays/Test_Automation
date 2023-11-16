@MoreThanOneRefillsOrder.feature
Feature: MoreThan One Refill

  @171010
  Scenario Outline: MoreThan One Refill for Group A product
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
    And Select AppRX Checkbox>Set RX Date>Click on 'Save' Button
    Then Verify Remove Button is Enabled
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on View order
    Then get the PatientId and OrderID
    Then Close All the All Tabs

    # Then Login to CRM using valid admin credentials
    #   Then  Verify User should able to login in pfizer
    #    And Select Order ID>>enter Order value
    #    And  Click on Search
    #   When  Click on Order ID link
    #    Then Click on Order Product Detail IH
    #   And Update the status In Order Product IH Details
    #    Then Click on Save
    #  Then Go back to Order Product IH page
    #   Then Click on Order product shipping > New
    #   Then Enter Days Supply
    #   And Enter Shipped to status
    #   Then Click on Save again
    #   Then Click on Order Product Shipping Link
    #   Then Click on Application ID link
    #   Then Click on View Order
    #    Then  Then Logout from the PFIZER
    #
    #   And   open Browser and enter url
    #    When Enter username and password
    #    And  Click On Login Button
    #    Then  Verify User should able to login in pfizer
    #    When  Select Global Search
    #    Then select PatientID>>Field>>Value>>Search
    #   And   Click on Search
    #   And  Click on First>>PatientID link
    #    Then Click on View Order
    #    And Select Second order created
    #    And Verify Order Details with Refill, Custom Order Button
    # 	Then Verify release date calculation is according to 75 percent criteria
    # 	Then Click on Refill button
    #    Then Accept OK button>>Click on place Refill Button
    #     Then Click on 'PAP Determine Outcom' Button In Product Information
    #    Then Verify Valid Practitioner Pop Up>Click on OK
    #    And Click on 'Create Order' Button in new window and Click on Ok Button
    #    Then Click on View order
    #    Then get the PatientId and OrderID
    #    Then Close All the All Tabs
    #
    #    #1st Refill
    #    Then Login to CRM using valid admin credentials
    #   Then  Verify User should able to login in pfizer
    #    And Select Order ID>>enter Order value
    #    And  Click on Search
    #   #When  Click on Order ID link
    #   And Click on First Order ID
    #    Then Click on Order Product Detail IH
    #   And Update the status In Order Product IH Details
    #    Then Click on Save
    #  Then Go back to Order Product IH page
    #   Then Click on Order product shipping > New
    #   Then Enter Days Supply
    #   And Enter Shipped to status
    #   Then Click on Save again
    #   Then Click on Order Product Shipping Link
    #   Then Click on Application ID link
    #   Then Click on View Order
    #    Then  Then Logout from the PFIZER
    #
    #   And   open Browser and enter url
    #    When Enter username and password
    #    And  Click On Login Button
    #    Then  Verify User should able to login in pfizer
    #    When  Select Global Search
    #    Then select PatientID>>Field>>Value>>Search
    #   And   Click on Search
    #   And  Click on First>>PatientID link
    #    Then Click on View Order
    #    And Select Second order created
    #    And Verify Order Details with Refill, Custom Order Button
    # 	#Then Verify release date calculation is according to 75 percent criteria
    # 	Then Click on Refill button
    #    Then Accept OK button>>Click on place Refill Button
    #     Then Click on 'PAP Determine Outcom' Button In Product Information
    #    Then Verify Valid Practitioner Pop Up>Click on OK
    #    And Click on 'Create Order' Button in new window and Click on Ok Button
    #    Then Click on View order
    #    Then get the PatientId and OrderID
    #    Then Close All the All Tabs
    #
    #    #2nd Refill
    #
    #   Then Login to CRM using valid admin credentials
    #   Then  Verify User should able to login in pfizer
    #    And Select Order ID>>enter Order value
    #    And  Click on Search
    #   #When  Click on Order ID link
    #   And Click on First Order ID
    #    Then Click on Order Product Detail IH
    #   And Update the status In Order Product IH Details
    #    Then Click on Save
    #  Then Go back to Order Product IH page
    #   Then Click on Order product shipping > New
    #   Then Enter Days Supply
    #   And Enter Shipped to status
    #   Then Click on Save again
    #   Then Click on Order Product Shipping Link
    #   Then Click on Application ID link
    #   Then Click on View Order
    #    Then  Then Logout from the PFIZER
    #
    #   And   open Browser and enter url
    #    When Enter username and password
    #    And  Click On Login Button
    #    Then  Verify User should able to login in pfizer
    #    When  Select Global Search
    #    Then select PatientID>>Field>>Value>>Search
    #   And   Click on Search
    #   And  Click on First>>PatientID link
    #    Then Click on View Order
    #    And Select Second order created
    #    And Verify Order Details with Refill, Custom Order Button
    # 	#Then Verify release date calculation is according to 75 percent criteria
    # 	Then Click on Refill button
    #    Then Accept OK button>>Click on place Refill Button
    #     Then Click on 'PAP Determine Outcom' Button In Product Information
    #    Then Verify Valid Practitioner Pop Up>Click on OK
    #    And Click on 'Create Order' Button in new window and Click on Ok Button
    #    Then Click on View order
    #    Then get the PatientId and OrderID
    #    Then Close All the All Tabs
    #
    #    #3rd Rfill
    #
    #    Then Login to CRM using valid admin credentials
    #   Then  Verify User should able to login in pfizer
    #    And Select Order ID>>enter Order value
    #    And  Click on Search
    #   #When  Click on Order ID link
    #   And Click on First Order ID
    #    Then Click on Order Product Detail IH
    #   And Update the status In Order Product IH Details
    #    Then Click on Save
    #  Then Go back to Order Product IH page
    #   Then Click on Order product shipping > New
    #   Then Enter Days Supply
    #   And Enter Shipped to status
    #   Then Click on Save again
    #   Then Click on Order Product Shipping Link
    #   Then Click on Application ID link
    #   Then Click on View Order
    #    Then  Then Logout from the PFIZER
    #
    #   And   open Browser and enter url
    #    When Enter username and password
    #    And  Click On Login Button
    #    Then  Verify User should able to login in pfizer
    #    When  Select Global Search
    #    Then select PatientID>>Field>>Value>>Search
    #   And   Click on Search
    #   And  Click on First>>PatientID link
    #    Then Click on View Order
    #    And Select Second order created
    #    And Verify Order Details with Refill, Custom Order Button
    # 	#Then Verify release date calculation is according to 75 percent criteria
    # 	Then Click on Refill button
    #    Then Close All the All Tabs
    Examples: 
      | TC_ID                        |  | TestDataSheet        |
      | OrderCreation:75%rule_171010 |  | OrderCreation75%rule |

  @171011
  Scenario Outline: MoreThan One Refill for LOE product
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
    Then Select 'Original RX' and 'GovernmentID'
    And Click on Attach Button
    Then Verify new window to attach document has opened and Select Document>Click on 'AttaCh'
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    Then Click on 'Save Outcome' button
    And Click on PAP Appeal Tab
    Then Verify Appeal information page is opened with the Reason for Denial should display
    And Select Type Of Appeal From AppealType and Product Checkbox
    Then Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button
    Then Click on Refersh Button
    Then Verify Appeal got saved
    Then Go to Application Prescription Page
    And Click on 'PAP Determine Outcom' Button
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on View order
    Then get the PatientId and OrderID
    Then Close All the All Tabs
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
    Then Click on Order Product Shipping Link
    Then Click on Application ID link
    Then Click on View Order
    Then Then Logout from the PFIZER
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search
    Then select PatientID>>Field>>Value>>Search
    And Click on Search
    And Click on First>>PatientID link
    Then Click on View Order
    And Select Second order created
    #And Verify Order Details with Refill, Custom Order Button
    #Then Verify release date calculation is according to 75 percent criteria
    Then Click on Refill button
    Then Accept OK button>>Click on place Refill Button
    Then Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on View order
    Then get the PatientId and OrderID
    Then Close All the All Tabs
    #1st Refill
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    And Select Order ID>>enter Order value
    And Click on Search
    #When  Click on Order ID link
    And Click on First Order ID
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
    Then Then Logout from the PFIZER
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search
    Then select PatientID>>Field>>Value>>Search
    And Click on Search
    And Click on First>>PatientID link
    Then Click on View Order
    And Select Second order created
    #And Verify Order Details with Refill, Custom Order Button
    #Then Verify release date calculation is according to 75 percent criteria
    Then Click on Refill button
    Then Accept OK button>>Click on place Refill Button
    Then Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on View order
    Then get the PatientId and OrderID
    Then Close All the All Tabs
    #2nd Refill
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    And Select Order ID>>enter Order value
    And Click on Search
    #When  Click on Order ID link
    And Click on First Order ID
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
    Then Then Logout from the PFIZER
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search
    Then select PatientID>>Field>>Value>>Search
    And Click on Search
    And Click on First>>PatientID link
    Then Click on View Order
    And Select Second order created
    And Verify Order Details with Refill, Custom Order Button
    #Then Verify release date calculation is according to 75 percent criteria
    Then Click on Refill button
    Then Accept OK button>>Click on place Refill Button
    Then Click on 'PAP Determine Outcom' Button In Product Information
    Then Verify Valid Practitioner Pop Up>Click on OK
    And Click on 'Create Order' Button in new window and Click on Ok Button
    Then Click on View order
    Then get the PatientId and OrderID
    Then Close All the All Tabs
    #3rd Rfill
    Then Login to CRM using valid admin credentials
    Then Verify User should able to login in pfizer
    And Select Order ID>>enter Order value
    And Click on Search
    #When  Click on Order ID link
    And Click on First Order ID
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
    Then Then Logout from the PFIZER
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search
    Then select PatientID>>Field>>Value>>Search
    And Click on Search
    And Click on First>>PatientID link
    Then Click on View Order
    And Select Second order created
    #And Verify Order Details with Refill, Custom Order Button
    #Then Verify release date calculation is according to 75 percent criteria
    Then Click on Refill button
    Then Close All the All Tabs

    Examples: 
      | TC_ID                        |  | TestDataSheet        |
      | OrderCreation:75%rule_171011 |  | OrderCreation75%rule |
