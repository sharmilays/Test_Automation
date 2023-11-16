@PfizerSavingProgram
Feature: Pfizer Saving Program

@182832
 Scenario Outline:Verify that the patient is eligible for the Pfizer Savings Program if he is uninsured and US resident
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
    Then Click on Applicant Name Link
    Then Navigate to the Patient details page > Click on Saving Program 'New'
    Then Click on Insurance No radio Button
    Then Select Household Size as '1' > Household income 1000 > check 'yearly' radio button
    And click on add product for Saving Program
    Then Select product Name from dropdown
    Then Click on Save Button for saving Program
    Then Verify that Saving Program Product page is Displayed
    
    Examples:
	|TC_ID|      |TestDataSheet|
	|PfizerSavingProgram_182832| |PfizerSavingProgram|
	
	

	 Scenario Outline:Verify that patient is able to save approximately 36% on their Pfizer medicine if the patient is an US resident
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
    Then Click on Applicant Name Link
    Then Navigate to the Patient details page > Click on Saving Program 'New'
    Then Click on Insurance No radio Button
    Then Select Household Size as '1' > Household income 1000 > check 'yearly' radio button
    And click on add product for Saving Program
    Then Select product Name from dropdown
    Then Click on Save Button for saving Program
    Then Verify that Saving Program Product page is Displayed
    
    Examples:
	|TC_ID|      |TestDataSheet|
	|PfizerSavingProgram_182835| |PfizerSavingProgram|
	
	@PfizerSavingProgramAug
	 Scenario Outline:Verify that patient is eligible for the Pfizer Savings Program, if he is an US resident, request a Pfizer Loss of Exclusivity (LOE) medicine that is on the Pfizer Savings Program
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
    Then Click on Applicant Name Link
    Then Navigate to the Patient details page > Click on Saving Program 'New'
    Then Click on Insurance No radio Button
    Then Select Household Size as '1' > Household income 1000 > check 'yearly' radio button
    And click on add product for Saving Program
    Then Select product Name from dropdown
    Then Click on Save Button for saving Program
    Then Verify that Saving Program Product page is Displayed
    
    Examples:
	|TC_ID|      |TestDataSheet|
	|PfizerSavingProgram_182837| |PfizerSavingProgram|
	
	
@PfizerSavingProgramAug
	 Scenario Outline:Verify that patient is able to save approximately 36% on their Pfizer medicine if the patient is Uninsured and US resident,
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
    Then Click on Applicant Name Link
    Then Navigate to the Patient details page > Click on Saving Program 'New'
    Then Click on Insurance No radio Button
    Then Select Household Size as '1' > Household income 1000 > check 'yearly' radio button
    And click on add product for Saving Program
    Then Select product Name from dropdown
    Then Click on Save Button for saving Program
    Then Verify that Saving Program Product page is Displayed
    
    Examples:
	|TC_ID|      |TestDataSheet|
	|PfizerSavingProgram_182839| |PfizerSavingProgram|
	
	
@PfizerSavingProgramAug
	 Scenario Outline:Verify that patient is able to save approximately 75% have a household income at or below 400% of the Federal Poverty Level
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
    Then Click on Applicant Name Link
    Then Navigate to the Patient details page > Click on Saving Program 'New'
    Then Click on Insurance No radio Button
    Then Select Household Size as '1' > Household income 1000 > check 'yearly' radio button
    And click on add product for Saving Program
    Then Select product Name from dropdown
    Then Click on Save Button for saving Program
    Then Verify that Saving Program Product page is Displayed
    
    Examples:
	|TC_ID|      |TestDataSheet|
	|PfizerSavingProgram_182843| |PfizerSavingProgram|
	
@PfizerSavingProgramAug
	 Scenario Outline:Verify that agents are not able to create savings program records that are neither approved or denied
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
  And In PAP Information section Select 'US Resident' as 'N' 
       Then Verify  Option must get selected as N
     Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then Click on Applicant Name Link
    Then Navigate to the Patient details page > Click on Saving Program 'New'
    Then Click on Insurance No radio Button
    Then Select Household Size as '1' > Household income 1000 > check 'yearly' radio button
    And click on add product for Saving Program
    Then Select product Name from dropdown
    Then Click on Save Button for saving Program

    
    Examples:
	|TC_ID|      |TestDataSheet|
	|PfizerSavingProgram_182853| |PfizerSavingProgram|
	
	 Scenario Outline:Verify that agents are not able to create approved savings program records without adding any product 
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
  And In PAP Information section Select 'US Resident' as 'N' 
       Then Verify  Option must get selected as N
     Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then Click on Applicant Name Link
    Then Navigate to the Patient details page > Click on Saving Program 'New'
    Then Click on Insurance No radio Button
    Then Select Household Size as '1' > Household income 1000 > check 'yearly' radio button
    Then Click on Save Button for saving Program
    Then Verify the Enrollment Status

    
    Examples:
	|TC_ID|      |TestDataSheet|
	|PfizerSavingProgram_182854| |PfizerSavingProgram|
	
	

	 Scenario Outline:Verify that agents are not able to edit the application once the savings program is created
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
  And In PAP Information section Select 'US Resident' as 'N' 
       Then Verify  Option must get selected as N
     Then Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox 
    Then Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'
    And Select any Income document type > Click on 'Save' Button
    Then Verify Application must get created and Application number must get displayed in Application Page
    Then Click on Applicant Name Link
    Then Navigate to the Patient details page > Click on Saving Program 'New'
    Then Click on Insurance No radio Button
    Then Select Household Size as '1' > Household income 1000 > check 'yearly' radio button
     And click on add product for Saving Program
    Then Select product Name from dropdown
    Then Click on Save Button for saving Program
    Then Verify that user is not able to edit application after saving program created
   # Then Click on the edit Button
   # And click on add product for Saving Program

    
    Examples:
	|TC_ID|      |TestDataSheet|
	|PfizerSavingProgram_182856| |PfizerSavingProgram|
	
	
	
	