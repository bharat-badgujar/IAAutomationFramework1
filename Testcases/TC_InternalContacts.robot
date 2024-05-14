# Import files
*** Settings ***
Library     SeleniumLibrary
Resource    ../Common/App_Launch.robot
Resource    ../PageKeywords/KW_InternalContacts.robot

Test Setup  Validate that the user is able to Launch and Login into the app
Test Teardown  Browser Close to End Test Case


*** Test Cases ***

Verify User is able to Login and Navigate to Internal Contacts Tab Successfully
    Click Internal Contacts and Navigate
    Validate Internal Contacts Page is loaded correctly