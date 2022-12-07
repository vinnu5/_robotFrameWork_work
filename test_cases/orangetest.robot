*** Settings ***
Resource  D:/robotframework/keywords/orangekey.robot
Library    SeleniumLibrary

*** Test Cases ***
login in orange hrm
  browser should open
 
  enter username
  enter paswd
  submit your details
  timelink method
  Different module
  job title dropdown