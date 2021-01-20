
*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    
Library    OperatingSystem    
*** Test Cases ***
TC1_ValidCredentialTest
        
     Append To Environment Variable    Path   ${OUTPUT_DIR}${/}driver  
     Open Browser    https://www.open-emr.org/   browser=ff
     Maximize Browser Window  
     Set Selenium Implicit Wait    30s 
     Click Element    //a[contains(text(),'Demo')]   
     Click Link      https://demo.openemr.io/b/openemr/index.php    
     Input Text    id=authUser    admin
     Input Password    id=clearPass     pass   
     Select From List By Label    name=languageChoice     English (Indian)    
     Click Button    //button[@type='submit']
     Mouse Over       //div[@data-bind="text:label"] 
     Click Element    //div[text()='Patients'] 
     Select Frame        fin
     Click Element        create_patient_btn1
     Unselect Frame          
     Select Frame       pat
     Input Text    form_fname    sunny
     Input Text    form_lname    bro    
     Input Text    form_DOB    2021-01-17        
     Select From List By Label    form_sex     Male
     Click Element    create
     Unselect Frame
     Select Frame    modalframe
     Click Element    //input[@value='Confirm Create New Patient']    
     Unselect Frame
     ${alerttext}    handle alert    timeout=20s
     Log To Console    ${alerttext}    
     Click Element    //div[@class='closeDlgIframe'] 
     Select Frame    pat
     ${actualvalue}     Get Text     //h2[contains(text(),'Record dashboard')]
     Log To Console        ${actualvalue}
     Element Should Contain      //h2[contains(text(),'Record dashboard')]     Medical record Dashboard
     Unselect Frame






*** Settings ***
Documentation    this file with deal all the operations on dashboard

Resource    ../common_functionality.resource

 *** Variables ***
${NAME_LOCATOR}     //span[@data-bind="text:fname"]

*** Keywords ***
Dashbboard Page Should contain
    [Arguments]     ${pagetext}
    Page Should Contain    text    