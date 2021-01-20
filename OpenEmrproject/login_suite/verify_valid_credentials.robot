*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    


*** Test Cases ***
verify_Valid_Credentials_Test
     Launch Browser
     Input Text    id=authUser    admin
     Input Password    id=clearPass     pass   
     Select From List By Label    name=languageChoice     English (Indian)    
     Click Button    //button[@type='submit']
     Page Should Contain    Flow Board  
     Mouse Over    //span[@data-bind="text:fname"]
     #Click Element    //li[text()='Logout']     
     #Close Browser              
   