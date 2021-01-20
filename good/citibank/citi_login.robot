*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    
Library    OperatingSystem    
*** Test Cases ***
TC1_ValidCredentialTest
        
     Append To Environment Variable    Path   ${OUTPUT_DIR}${/}driver  
     Open Browser    https://online.citibank.co.in/   browser=ff
     Maximize Browser Window  
     Set Selenium Implicit Wait    30s 
     Click Element     //a[contains(text(),'APPLY FOR CREDIT CARDS')]
     
     ${title}     Get Title
     Log To Console    ${title}    
     Switch Window      Online Credit Card Application form
     Click Element      learn-button interstate-regular       