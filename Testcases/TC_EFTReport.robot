*** Settings ***
Library     SeleniumLibrary
Resource    ../Common/App_Launch.robot
Resource    ../PageKeywords/KW_EFTReport.robot

Test Setup    Validate that the user is able to Launch and Login into the app
Test Teardown   Browser Close to End Test Case

*** Variables ***

*** Test Cases ***

Validate Tabs in EFT report dropdown
    [Tags]  Check EFT Report Dropdown tabs  EFTR_001
    Click on EFT Report Dropdown
    Validate Detailed Location Wise tab is present
    Validate Location Wise tab is present
    Validate Game Wise tab is present
    Validate Manufacturer Wise tab is present
    Validate Send EFT Message tab is present

Validate the fields in Detailed Locationwise page
    [Tags]  Check the fields in Detail Location Wise page  EFTR_DLW_001
    Click on EFT Report Dropdown
    Click on the Detaled Location wise tab
    Validate Date Rage is present
    Validate Location dropdown is present
    Validate Search button is present
    Validate Download button is present
    Validate Weekly and Daily tabs are present

Check Detailed Location Wise Report - All Locations Weekly EFT
    [Tags]  Check the report as per the date selection - all locations - Weekly  EFTR_DLW_002
    Click on EFT Report Dropdown
    Click on the Detaled Location wise tab
    Input the Date Range
    Click on the Locaton wise drop down
    Select all locations
    Click on the Search button
    Sleep    2
    Expand the Weekly total
    Sleep    2
    Verify the table contains Period
    Verify the table Period Range should be as per the selection

Check Detailed Location Wise Report - Few Locations Weekly EFT
    [Tags]  Check the report as per the date selection - 3 locations - Weekly  EFTR_DLW_004
    Click on EFT Report Dropdown
    Click on the Detaled Location wise tab
    Input the Date Range
    Click on the Locaton wise drop down
    Select three locations
    Click on the Search button
    Sleep    2
    Expand the Weekly total
    Sleep    2
    Verify the table contains Period
    Verify the table Period Range should be as per the selection

Check Detailed Location Wise Report - Few Locations Daily EFT
    [Tags]  Check the report as per the date selection - 3 locations - Daily  EFTR_DLW_005
    Click on EFT Report Dropdown
    Click on the Detaled Location wise tab
    Input the Date Range
    Click on the Locaton wise drop down
    Select three locations
    Click on the Search button
    Sleep    2
    Click on daily tab
    Click on Expand button
    Sleep    2
    #Verify the table contains Period
    #Verify the table Period Range should be as per the selection

## SEND EFT MESSAGE ##
Check Send EFT Message
    [Tags]  Check if the EFT message is sent to the Clients
    Click on EFT Report Dropdown
    Click on the Send EFT Message tab
    Input Text in Textbox   ${EFTR_DLW_DateR_Ip}    ${DateRange}
    Select all Locatins
    Click on the Search button in send EFT msg
    Check all the locations
    Click on Send Message
    Click on Message Log
    Click on Email EFT Message radio button
    Verify the Period
    Click on View details




