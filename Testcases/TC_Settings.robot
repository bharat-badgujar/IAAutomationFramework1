# Import files
*** Settings ***
Library     SeleniumLibrary
Resource    ../Common/App_Launch.robot
Resource    ../PageKeywords/KW_Settings.robot

Test Setup  Validate that the user is able to Launch and Login into the app
Test Teardown  Browser Close to End Test Case


*** Test Cases ***

Validate Settings Tab contains all 3 options
    Click Settings Tab
    Validate GLC Commission is Present
    Validate Masters is Present
    Validate Update Decal No is Present
