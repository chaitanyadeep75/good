*** Settings ***
Resource     ../Resource/common_functionality.resource 
Resource     ../Resource/pages/Login_page.resource

Library    DataDriver    file=../TestData/openemr.xlsx     sheet_name=verify_invalid_credentials_Template

Test Setup     Launch Browser
Test Teardown   End Browser
    
Test Template    verify_invalid_credentials_Template
    
*** Test Cases ***
TC1     admin           pass            English(Indian)        Invalid username or password
TC2    physician        pass            English(Indian)      Invalid username or password
TC3    accountant      accountant     English(Indian)        Invalid username or password
*** Test Cases *** 

verify_invalid_credentials_Template_ ${username}
    

*** Keywords ***
     [Arguments]        ${username}       ${password}      ${language}         ${expectedvalue}
     Enter Username          ${username}  
     Enter Password         ${password}
     Select language          ${language}  
     Click Login
     Dashboard Page Should Contain       ${expectedvalue}
     MouseOver On Name
     Click Logout     



     #Click Button    //button[@type='submit']
     #Page Should Contain    Flow Board  
     #Mouse Over    //span[@data-bind="text:fname"]
     #Click Element    //li[text()='Logout']     
     #Close Browser              
     #Element Should Contain    //*[contains(text(),'Invalid')]    Invalid username or password     
    