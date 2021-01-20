*** Settings ***
Documentation    this file with deal all the operations on dashboard

Resource    ../common_functionality.resource

 *** Variables ***
${NAME_LOCATOR}     //span[@data-bind="text:fname"]
${LOGOUT_LOCATOR}
*** Keywords ***
Dashbboard Page Should contain
    [Arguments]     ${pagetext}
    Page Should Contain    ${pagetext}    
    
MouseOver On Name
    Mouse Over    ${NAME_LOCATOR}
 
Click Logout
    Click Element    ${LOGOUT LOCATOR}    
    

MouseOver On Patient_Client
    
    
    