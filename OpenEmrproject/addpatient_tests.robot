*** Settings ***
Resource  Resource/common_functionality.resource  
Resource    Resource/pages/Login_page.resource
Resource    
Resource    ../Resource/pages/Dashboard_page.resource    
Resource    ../Resource/pages/PatientFinderPage.resource
Resource    ../Resource/pages/SearchOrAddPatientpage.resource

Test Setup    Launch Browser
Test Teardown    End Browser

*** Test Cases ***
TC1_validcredential
    
    Enter Username    admin
    Enter Password    pass
    Select Language    English (Indian)
    Click login
    Dashboard Page Should Contain    Flow Board
    
    MouseOver On Patient/Client
    Click On New/Search    
    
    Switch Frame (Add Patient) 
    Enter First Name    sunny    
    Enter Middle Name   s
    Enter Last Name    tambe
    Enter DOB   2021-01-19    
    Select Gender   Male
    Click Create Patient   
    Switch Out Frame(Add Patient)
    Switch To Confirm Create New Frame
    Click Confirm Create New Patient     
    Switch Out Confirm Create New Frame
    sleep    5s
    Validate and Handle Alert Message    New Due Clinical Reminders 
    Handle Happy Birthday Message       
    Switch Frame (Add Patient)
    Verify Add Patient Detail        Medical Record Dashboard - Sanket Tambe    
    Switch Out Frame(Add Patient)
    
    