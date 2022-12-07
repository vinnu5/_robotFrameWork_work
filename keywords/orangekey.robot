*** Settings ***
Resource  D:/robotframework/variables/orangevary.robot 
Library  SeleniumLibrary

*** Keywords ***
browser should open
  Open Browser  ${url}  ${brw}
  Maximize Browser Window
  Sleep  10
  Page Should Contain  Login
  Log To Console  text found

enter username
  Wait Until Page Contains Element  ${user}    3
  Log To Console    user found
  Click Element  ${user}
  Input Text  ${user}  ${u}
  Log To Console    username entered
enter paswd
  Wait Until Page Contains Element  ${pwd}    3
  Log To Console    pwd found
  Click Element  ${pwd}
  Input Password  ${pwd}  ${p} 
  Log To Console    pswd entered
submit your details
  Log To Console    login found
  Click Button  ${sub}
  Log To Console    login clicked

timelink method
  click on side menu    ${timelink}

Different module
    click on side menu  ${reclink}
    Sleep   3
    Click Element  ${drop}
    job title dropdown
    Sleep  10

#navigating through dropdown

job title dropdown
  FOR  ${i}  IN RANGE  1  20
    Press Keys  none    ARROW_DOWN
    ${element_2} =  Run Keyword And Return Status   Element Should Be Visible  ${nad} 
    IF  ${element_2}  
      Wait Until Page Contains  ${nad}
      Press Keys  ${nad}   ENTER    
      
      Sleep  10
      Exit For Loop
   
    ELSE
      Log  continue 
    END
        
  END
#user defined method
click on side menu
    [Arguments]  ${element}
    Wait Until Page Contains Element     ${element}    10
    Click Element    ${element}
