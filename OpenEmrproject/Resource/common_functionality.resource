*** Settings ***
Documentation     this file contains browser activity keywords
...    and screenshot directory
Library    OperatingSystem    
Library    SeleniumLibrary    
Resource    ../Resource/common_functionality.resource
*** Variables ***
${BrOWSER_NAME}     ff
${URL}    http://demo.openemr.io/b/openemr/interface/login/login.php?site=default


*** Keywords ***
Launch Browser
     Log To Console    ${OUTPUT_DIR}${/}driver    
     Append To Environment Variable    Path   ${OUTPUT_DIR}${/}driver  
     Open Browser     browser=${BrOWSER_NAME}     
     Maximize Browser Window   
     Set Selenium Implicit Wait    30s
     Open Browser    ${URL}   
End Browser
    
    Close Browser