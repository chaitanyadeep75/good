*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    
Library    OperatingSystem    
*** Test Cases ***
TC1_ValidCredentialTest
        
     Append To Environment Variable    Path   ${OUTPUT_DIR}${/}driver  
     Open Browser    https://www.royalcaribbean.com/   browser=ff
     Maximize Browser Window
     FOR ${i}     in  
     Set Selenium Implicit Wait    30s 
     