@PatientPriortizationfeature
Feature: Priortized Patients: CET agents Validation

  @191890
  Scenario Outline: Pfizer CET agent login to CRM>Patient account>Verify that  CET agent is able to view two new fields(Prioritized & Prioritization Date) in Patient Account page
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Patient' Radio Button
    And Verify 'Patient' radio button is selected
    Then Select a value in feild dropdown
    And Select 'equals' from operator dropdown
    And Enter the text in value feild
    Then click on search button in global Page
    Then Verify Patient Result displayed based on 'equals'
    Then Click on 'Patient ID' hyperlink
    Then Verify 'Prioritized & Prioritization Date' feilds is present in Patient Accounts Page

    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | PriortizedPatients_191890 |  | PriortizedPatients |

  @191891
  Scenario Outline: Pfizer CET Agent login to CRM>Patient account>Edit account>"Priority" check box field is on the patient's edit layout
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Patient' Radio Button
    And Verify 'Patient' radio button is selected
    Then Select a value in feild dropdown
    And Select 'equals' from operator dropdown
    And Enter the text in value feild
    Then click on search button in global Page
    Then Verify Patient Result displayed based on 'equals'
    Then Click on 'Patient ID' hyperlink
    Then Verify 'Prioritized & Prioritization Date' feilds is present in Patient Accounts Page
    Then Click on Edit Page button
    Then Verify that 'Priority' check box field is present on patient's edit page layout

    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | PriortizedPatients_191891 |  | PriortizedPatients |

  @191892
  Scenario Outline: Pfizer CET Agent login to CRM>Patient account>Edit account>"Priority" check box field is on the patient's edit layout
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Patient' Radio Button
    And Verify 'Patient' radio button is selected
    Then Select a value in feild dropdown
    And Select 'equals' from operator dropdown
    And Enter the text in value feild
    Then click on search button in global Page
    Then Verify Patient Result displayed based on 'equals'
    Then Click on 'Patient ID' hyperlink
    Then Verify 'Prioritized & Prioritization Date' feilds is present in Patient Accounts Page
    Then Click on Edit Page button
    Then Verify that 'Priority' check box field is present on patient's edit page layout
    Then Verify that CET agent is able mark & unmark a Prioritized checkbox for the particular patient

    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | PriortizedPatients_191892 |  | PriortizedPatients |

  @191893
  Scenario Outline: Pfizer CET agent login to CRM>Patient account>Edit account>Two new fields> CET agent checks Prioritized checkbox>Verify that CET agent should be able to view the Prioritization Date when the Prioritized flag is checked
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Patient' Radio Button
    And Verify 'Patient' radio button is selected
    Then Select a value in feild dropdown
    And Select 'equals' from operator dropdown
    And Enter the text in value feild
    Then click on search button in global Page
    Then Verify Patient Result displayed based on 'equals'
    Then Click on 'Patient ID' hyperlink
    Then Verify 'Prioritized & Prioritization Date' feilds is present in Patient Accounts Page
    Then Click on Edit Page button
    Then Verify that 'Priority' check box field is present on patient's edit page layout
    Then Check the 'Priority' check box
    Then Click On Save Button in Patient Page
    Then Verify 'Prioritized & Prioritization Date' feilds is present in Patient Accounts Page

    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | PriortizedPatients_191893 |  | PriortizedPatients |

  @191894
  Scenario Outline: Pfizer CET agent login to CRM>Patient account>Edit account>Two new fields> CET agent checks Prioritized checkbox>Verify that CET agent should be able to view the Prioritization Date when the Prioritized flag is checked
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Patient' Radio Button
    And Verify 'Patient' radio button is selected
    Then Select a value in feild dropdown
    And Select 'equals' from operator dropdown
    And Enter the text in value feild
    Then click on search button in global Page
    #Then Verify Patient Result displayed based on 'equals'
    Then Click on 'Patient ID' hyperlink
    Then Verify 'Prioritized & Prioritization Date' feilds is present in Patient Accounts Page
    Then Click on Edit Page button
    Then Verify that 'Priority' check box field is present on patient's edit page layout
    Then Check the 'Priority' check box
    Then Click On Save Button in Patient Page
    #Then Verify 'Prioritized & Prioritization Date' feilds is present in Patient Account page
    And Verify the 'Priority' has been flagged red

    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | PriortizedPatients_191894 |  | PriortizedPatients |

  @191895
  Scenario Outline: Pfizer CET agent login to CRM>Patient account>Verify that  CET agent is able to view two new fields(Prioritized & Prioritization Date) in Patient Account page
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Patient' Radio Button
    And Verify 'Patient' radio button is selected
    Then Select a value in feild dropdown
    And Select 'equals' from operator dropdown
    And Enter the text in value feild
    Then click on search button in global Page
    Then Verify Patient Result displayed based on 'equals'
    Then Click on 'Patient ID' hyperlink
    Then Verify 'Prioritized & Prioritization Date' feilds is present in Patient Accounts Page

    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | PriortizedPatients_191895 |  | PriortizedPatients |

  @191896
  Scenario Outline: Pfizer CET agent login to CRM>Patient account>Edit account>Two new fields> CET agent checks Prioritized checkbox>Prioritization Date displayed>Verify that Prioritization Date field is read only system generated field and cet agent is not able to edit
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Patient' Radio Button
    And Verify 'Patient' radio button is selected
    Then Select a value in feild dropdown
    And Select 'equals' from operator dropdown
    And Enter the text in value feild
    Then click on search button in global Page
    Then Verify Patient Result displayed based on 'equals'
    Then Click on 'Patient ID' hyperlink
    Then Click on Edit Page button
    Then Verify that 'Priority' check box field is present on patient's edit page layout
    Then Check the 'Priority' check box
    Then Click On Save Button in Patient Page
    Then Verify 'Prioritized & Prioritization Date' feilds is present in Patient Accounts Page
    And Verify the 'Priority' has been flagged red
    Then Verify 'Prioritization Date' feilds is on Read only Mode

    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | PriortizedPatients_191896 |  | PriortizedPatients |

  @191897
  Scenario Outline: Pfizer CET agent login to CRM>Patient account>Edit account>Two new fields> CET agent checks Prioritized checkbox>Save>Verify that  the Prioritized field on the patient’s detail page layout has a red flag along with the Prioritization date field.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Patient' Radio Button
    And Verify 'Patient' radio button is selected
    Then Select a value in feild dropdown
    And Select 'equals' from operator dropdown
    And Enter the text in value feild
    Then click on search button in global Page
    Then Click on 'Patient ID' hyperlink
    Then Click on Edit Page button
    Then Verify that 'Priority' check box field is present on patient's edit page layout
    Then Check the 'Priority' check box
    Then Click On Save Button in Patient Page
    Then Verify 'Prioritized & Prioritization Date' feilds is present in Patient Accounts Page
    And Verify the 'Priority' has been flagged red
    Then Verify 'Prioritization Date' feilds is on Read only Mode
    Then Verify 'Prioritization Date' feilds have date Enterd

    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | PriortizedPatients_191897 |  | PriortizedPatients |

  @191898
  Scenario Outline: Pfizer CET agent login to CRM>Patient account>Edit account>Two new fields> CET agent unchecks Prioritized checkbox>Save>Verify that  the Prioritized field on the patient’s detail page layout has a green flag along with the Prioritization date field.
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Patient' Radio Button
    And Verify 'Patient' radio button is selected
    Then Select a value in feild dropdown
    And Select 'equals' from operator dropdown
    And Enter the text in value feild
    Then click on search button in global Page
    Then Verify Patient Result displayed based on 'equals'
    Then Click on 'Patient ID' hyperlink
    Then Click on Edit Page button
    Then Verify that 'Priority' check box field is present on patient's edit page layout
    Then Check the 'Priority' check box
    Then Click On Save Button in Patient Page
    Then Verify 'Prioritized & Prioritization Date' feilds is present in Patient Accounts Page
    And Verify the 'Priority' has been flagged red
    Then Verify 'Prioritization Date' feilds is on Read only Mode
    Then Verify 'Prioritization Date' feilds have date Enterd
    Then Click on Edit Page button
    Then Verify that 'Priority' check box field is present on patient's edit page layout
    Then UnCheck the 'Priority' check box
    Then Click On Save Button in Patient Page
    Then Verify 'Prioritized & Prioritization Date' feilds is present in Patient Accounts Page
    And Verify the 'Priority' has been flagged green
    Then Verify 'Prioritization Date' feilds is Empty

    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | PriortizedPatients_191898 |  | PriortizedPatients |

  @191899
  Scenario Outline: Pfizer CET agent login to CRM>Patient account>Verify that checks on the Help Text for “Priority” and “Prioritized” fields
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Patient' Radio Button
    And Verify 'Patient' radio button is selected
    Then Select a value in feild dropdown
    And Select 'equals' from operator dropdown
    And Enter the text in value feild
    Then click on search button in global Page
    Then Verify Patient Result displayed based on 'equals'
    Then Click on 'Patient ID' hyperlink
    Then Click on Edit Page button
    Then Verify that 'Priority' check box field is present on patient's edit page layout
    Then Check the 'Priority' check box
    Then verify 'Check this box if patient is prioritized' in Help Text
    Then UnCheck the 'Priority' check box
    Then verify 'Check this box if patient is prioritized' in Help Text

    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | PriortizedPatients_191899 |  | PriortizedPatients |

  @191900
  Scenario Outline: Pfizer CET agent login to CRM>Patient account>Edit account>Two new fields>Verify that the history tracking of prioritization date field
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    When Select Global Search from Dropdown
    Then Verify the radio buttons present of Global Search page
    Then Click On 'Patient' Radio Button
    And Verify 'Patient' radio button is selected
    Then Select a value in feild dropdown
    And Select 'equals' from operator dropdown
    And Enter the text in value feild
    Then click on search button in global Page
    Then Verify Patient Result displayed based on 'equals'
    Then Click on 'Patient ID' hyperlink
    Then Click on Edit Page button
    Then Verify that 'Priority' check box field is present on patient's edit page layout
    Then Check the 'Priority' check box
    Then Click On Save Button in Patient Page
    Then Verify 'Prioritized & Prioritization Date' feilds is present in Patient Accounts Page
    And Verify the 'Priority' has been flagged red
    Then Verify 'Prioritization Date' feilds is on Read only Mode
    Then Verify 'Prioritization Date' feilds have date Enterd

    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | PriortizedPatients_191900 |  | PriortizedPatients |

  @191901
  Scenario Outline: Verify that CET agent has access to run the Prioritized Patients under reports tab
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    And Select Reports
    Then Click on all Reports Link
    And click on Search box in all reports page
    And Search for Prioritized patients in Search box
    And Click on the Down Arrow Present in Report
    Then Click on the Run Button

    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | Prioritizedpatient_191901 |  | PriortizedPatients |

  @191902
  Scenario Outline: Verify that CET agent has access to run the Prioritized Patients under reports tab
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    And Select Reports
    Then Click on all Reports Link
    And click on Search box in all reports page
    And Search for Prioritized patients in Search box
    And Click on the Down Arrow Present in Report
    Then Click on the Run Button
    Then Verify that report includes all the patients that are marked as Prioritized

    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | Prioritizedpatient_191902 |  | PriortizedPatients |

  @191903
  Scenario Outline: Verify that CET agent has access to run the Prioritized Patients under reports tab
    Given TestCaseID Is "<TC_ID>" and TestDataSheet Is "<TestDataSheet>"
    And open Browser and enter url
    When Enter username and password
    And Click On Login Button
    Then Verify User should able to login in pfizer
    And Select Reports
    Then Click on all Reports Link
    And click on Search box in all reports page
    And Search for Prioritized patients in Search box
    And Click on the Down Arrow Present in Report
    Then Click on the Run Button
    Then Verify that report includes all the patients that are marked as Prioritized

    Examples: 
      | TC_ID                     |  | TestDataSheet      |
      | Prioritizedpatient_191903 |  | PriortizedPatients |
