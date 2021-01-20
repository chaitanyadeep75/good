*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    
Library    OperatingSystem    
*** Test Cases ***
TC1_ValidCredentialTest
        
     Append To Environment Variable    Path   ${OUTPUT_DIR}${/}driver  
     Open Browser    url=https://www.medibuddy.in/    browser=ff
     Maximize Browser Window  
     Set Selenium Implicit Wait    30s 
     Click Element    //a[text()='Signup'] 
     Input Text    firstName    chaitanya
     Input Text    phone    9963225519
     Input Text    username   chitanydeep75@gmail.com 
     Input Password    password    Welcome@12345 
     Click Element    //input[@type='checkbox']  
     Click Element    //button[text()='Register']          