# Import files
*** Settings ***
Library     SeleniumLibrary
Resource    ../Common/App_Launch.robot
Resource    ../PageKeywords/KW_Locations.robot

Test Setup  Validate that the user is able to Launch and Login into the app
Test Teardown  Browser Close to End Test Case


*** Test Cases ***

Verify User is able to Login and Navigate to Locations Tab Successfully
    [Tags]   Locations  LOC_001 LOC_002
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Validate Page Contains buttons - All,Active, Inactive, Draft
    Validate Page Contains Search box, Go & Clear Buttons
    Validate Page Contains Download File Button
    Validate Page Contains headers- Location Name, License No., Address, No of Coams & Status

Verify User is able to create New Location
    [Tags]   Locations  LOC_003
    Click on Work Order
    Click on New Install
    Validate New Install Page is loaded correctly
    Click on the Install Button for new location installation
    Add details for the new Location installation
