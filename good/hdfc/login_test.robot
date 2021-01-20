*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    
*** Test Cases ***
TC1_ValidCredentialTest
     Log To Console    ${OUTPUT_DIR}${/}driver    
     Append To Environment Variable    Path   ${OUTPUT_DIR}${/}driver  
     Open Browser   https://netbanking.hdfcbank.com/netbanking/     browser=ff
     Maximize Browser Window   
     Set Selenium Implicit Wait    10s
     Select Frame    name=login_page
     Input Text      name=fldLoginUserId    test123   
     Click Element      (//img[@alt='continue'])[1] 
       
     Unselect Frame
     
TC2_TableTest
    Append To Environment Variable    Path   ${OUTPUT_DIR}${/}driver  
     Open Browser   https://datatables.net/extensions/select/examples/initialisation/checkbox.html     browser=ff
     Maximize Browser Window   
     Set Selenium Implicit Wait    10s
     Table Should Contain       xpath=//table[@id='example']    Brenden Wagner  
     
     #${cell} Get table cell         xpath=//table[@id='example']
     ${name1}     Get Text    //table[@id='example']/tbody/tr[1]/td[2]
     Log To Console    ${name1}
         
TC3_TableTest
    Append To Environment Variable    Path   ${OUTPUT_DIR}${/}driver  
     Open Browser   https://editor.datatables.net/     browser=ff
     Maximize Browser Window   
     Set Selenium Implicit Wait    10s
     Table Should Contain       xpath=//table[@id='example']    Brenden Wagner  
     
     #${cell} Get table cell         xpath=//table[@id='example']
     ${name1}     Get Text    //table[@id='example']/tbody/tr[1]/td[2]
     Log To Console    ${name1}
     
