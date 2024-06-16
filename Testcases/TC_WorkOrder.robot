# Import files
*** Settings ***
Library     SeleniumLibrary
Resource    ../Common/App_Launch.robot
Resource    ../PageKeywords/KW_WorkOrder.robot

Test Setup  Validate that the user is able to Launch and Login into the app
Test Teardown  Browser Close to End Test Case


*** Test Cases ***

Validate User is able to Navigate to Service Call Page and All Fields are Present
    [Tags]   Service Call  WO_SC_001
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Validate All Labels and Buttons are Present