*** Settings ***
Resource    D:/robotframework/keywords/googkey.robot
Library    SeleniumLibrary

*** Test Cases ***
opening google in browser
    browser should be opened
