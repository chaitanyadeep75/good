*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    
Library    OperatingSystem    
*** Test Cases ***
TC1_ValidCredentialTest
        
     Append To Environment Variable    Path   ${OUTPUT_DIR}${/}driver  
     Open Browser    https://www.gotomeeting.com/en-in    browser=ff
     Maximize Browser Window  
     Set Selenium Implicit Wait    30s 
     Run Keyword And Ignore Error    Click Element    //div[@class="conversion-modal__close"]  
     # Sleep    3s          
     Click Element    xpath=(//a[text()='Start for Free'])[2] 
     Input Text    first-name    chaitanya
     Input Text    last-name    deep
     Input Text    Email    chaitanyadeep75@gmail.com   
     Input Text    contact-number    9963225519
     Select From List By Label    name=JobTitle    Engineering
     Input Password         login__password      password123
     Select Radio Button         companySize     1-9     
     Scroll Element Into View     
     Click Element         //button[text()='Sign Up']
     