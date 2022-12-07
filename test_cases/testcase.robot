*** Settings ***
Resource    D:/robotframework/keywords/keyW.robot
Library    SeleniumLibrary

*** Test Cases ***
opening youtube in browser
    browser should be opened
