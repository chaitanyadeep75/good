*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    
Library    OperatingSystem    
*** Test Cases ***
TC1_GetWebElementsTest
    Append To Environment Variable     path     ${OUTPUT_DIR}${/}driver
    Open Browser     url=https://www.phptravels.net/home     browser=ff
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element       xpath= //a[contains(text(),'Flights')]
    Click Element       xpath=//span[text()='LHE']
    sleep     2S
    Press Keys    None     new york
    #Input Text        //input[@class='select2-input select2-focused]     new york
    Click Element         xpath=//div[contains(text(),'EWR')]    
    Execute Javascript     document.getElementById('FlightsDateStart').value='2021-01-28'
    
    FOR    ${i}     IN RANGE   1    4
        Click Element          xpath=(//button[text()='+'])[5]
    END
    
 
     
    FOR   ${i}     IN RANGE   1    3
        Click Element          xpath=(//button[text()='+'])[5]
    END  
    
   Click Element    xpath=//buton[contains(text(),'submit')]    
   Click Element    *[text()='Book Now']    
   ${actualvalue}     Get Text