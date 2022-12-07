*** Settings ***
Resource    D:/robotframework/variables/vary.robot
Library  SeleniumLibrary
    
*** Keywords ***
browser should be opened
    Open Browser    ${url}    ${brw} 
    Maximize Browser Window
    Wait Until Page Contains Element  ${search}  3
    Click Element  ${search}
    Input Text  ${search}    ${songs} 
    Click Button  ${cl}
    Close Window