@UI/UXUpdates
Feature: UI/UX Updates
	@245401
 Scenario Outline:Verify User is able to view Notes in Utility bar 
Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    Then Verify that Notes button is getting displayed

 Examples:
	|TC_ID|      |TestDataSheet|
	|UIUXUpdates_245401| |UIUXUpdates|
	
	@245402
	Scenario Outline:Verify that user is able to see Recently viewed Notes as defaulted
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    Then Verify that Notes button is getting displayed
    And Click on Notes Button
    Then Verify that Recently Viewed button is getting displayed

 Examples:
	|TC_ID|      |TestDataSheet|
	|UIUXUpdates_245402| |UIUXUpdates|
	
@245403
	Scenario Outline:verify User is able to create new Notes along with Title of the Note
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    Then Verify that Notes button is getting displayed
    And Click on Notes Button
    Then Verify that Recently Viewed button is getting displayed
    Then Click on New button in notes
    And Add Notes title and notes data in the popup
    Then Verify that user is able to create notes

 Examples:
	|TC_ID|      |TestDataSheet|
	|UIUXUpdates_245403| |UIUXUpdates|
	
@245404
	Scenario Outline:Verify Note title and notes are getting saved automatically while typing 
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    Then Verify that Notes button is getting displayed
    And Click on Notes Button
    Then Verify that Recently Viewed button is getting displayed
    Then Click on New button in notes
    And Add Notes title and notes data in the popup
    Then Verify that user is able to create notes

 Examples:
	|TC_ID|      |TestDataSheet|
	|UIUXUpdates_245404| |UIUXUpdates|
	
@245405
	Scenario Outline:Verify User is able to add this notes with cases ,accounts, applications.. etc. 
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    Then Verify that Notes button is getting displayed
    And Click on Notes Button
    Then Verify that Recently Viewed button is getting displayed
    Then Click on New button in notes
    And Add Notes title and notes data in the popup
    Then Verify that user is able to create notes
    Then Click on Add to record button
    And click on the searchbox in pop window of add record
    Then click on add button in pop up


 Examples:
	|TC_ID|      |TestDataSheet|
	|UIUXUpdates_245405| |UIUXUpdates|
	
@245406
	Scenario Outline:Verify User is able to share this notes with People or Groups
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    Then Verify that Notes button is getting displayed
    And Click on Notes Button
    Then Verify that Recently Viewed button is getting displayed
    Then Click on New button in notes
    And Add Notes title and notes data in the popup
    Then Verify that user is able to create notes
    Then Click on share button in notes
    And click on the searchbox in pop window of share notes
    Then Click on Share button in pop up

 Examples:
	|TC_ID|      |TestDataSheet|
	|UIUXUpdates_245406| |UIUXUpdates|
	
	
	@245407
	Scenario Outline:Verify User is able to Delete the written note.
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    Then Verify that Notes button is getting displayed
    And Click on Notes Button
    Then Verify that Recently Viewed button is getting displayed
    Then Click on New button in notes
    And Add Notes title and notes data in the popup
    Then Verify that user is able to create notes
   Then Click on Delete notes button

 Examples:
	|TC_ID|      |TestDataSheet|
	|UIUXUpdates_245407| |UIUXUpdates|
	
	
@245408
	Scenario Outline:Verify User is able to save the Note
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    Then Verify that Notes button is getting displayed
    And Click on Notes Button
    Then Verify that Recently Viewed button is getting displayed
    Then Click on New button in notes
    And Add Notes title and notes data in the popup
    Then Verify that user is able to create notes
   And Click On Done button in notes
   Then Verify that Note got Displayed

 Examples:
	|TC_ID|      |TestDataSheet|
	|UIUXUpdates_245408| |UIUXUpdates|
	
	@245409
	Scenario Outline: Verify User is able to select between My Notes, Recently Viewed and Shared with me from the drop down values.
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    Then Verify that Notes button is getting displayed
    And Click on Notes Button
    Then Click on Navigation menu and select my notes
    
    

 Examples:
	|TC_ID|      |TestDataSheet|
	|UIUXUpdates_245409| |UIUXUpdates|
	
@245410
	Scenario Outline: Verify User is able to view it's Notes under this section
	
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    Then Verify that Notes button is getting displayed
    And Click on Notes Button
    Then Click on Navigation menu and select my notes
    Then Verify that Note got Displayed


 Examples:
	|TC_ID|      |TestDataSheet|
	|UIUXUpdates_245410| |UIUXUpdates|
	
@245411
	Scenario Outline:Verify User is able to see the recently updated notes in top of the list.
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    Then Verify that Notes button is getting displayed
    And Click on Notes Button
    Then Click on Navigation menu and select recently viewed
    Then Verify that Note got Displayed

 Examples:
	|TC_ID|      |TestDataSheet|
	|UIUXUpdates_245411| |UIUXUpdates|
	
	
@245412
	Scenario Outline:Verify User is able to see the recently updated notes in top of the list.
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    And Click on Notes Button
    Then Verify that Recently Viewed button is getting displayed
    Then Click on Navigation menu and select Shared with me
    Then Verify that Note got Displayed

 Examples:
	|TC_ID|      |TestDataSheet|
	|UIUXUpdates_245412| |UIUXUpdates|
	
@245413
	Scenario Outline:Verify that user should be able to edit the saved Notes
	Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>" 
 And   open Browser and enter url  
    When Enter username and password
    And  Click On Login Button
    Then Verify User should able to login in pfizer
    Then Verify that Notes button is getting displayed
    And Click on Notes Button
     Then Click on Navigation menu and select recently viewed
    Then Verify that Note got Displayed
    Then Click on any Saved note
    Then Verify that note is editable by user

 Examples:
	|TC_ID|      |TestDataSheet|
	|UIUXUpdates_245413| |UIUXUpdates|