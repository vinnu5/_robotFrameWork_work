*** Settings ***
Resource   D:/robotframework/variables/googvary.robot 
Library  SeleniumLibrary
    
*** Keywords ***
browser should be opened
    Open Browser    ${url}    ${brw} 
    Maximize Browser Window
    Wait Until Page Contains Element  ${search}  3
    Click Element  ${search}
    Input Text  ${search}    ${songs} 
  