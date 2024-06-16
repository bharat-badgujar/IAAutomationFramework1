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

Verify User should be able to Map the COAMs for the new Location
    [Tags]   Locations  LOC_004
    Click on Work Order
    Click on New Install
    Validate New Install Page is loaded correctly
    Click on the Draft Location name and verify page is loaded for that location
    Click on the +New Button
    Select the FG name from the dropdown and check the fields are autofilled
#    Click on the Link Button and verify COAM is linked to location

Verify that User should be able to click on the Map and it should be navigated
    [Tags]   Locations  LOC_005
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on Map Icon and Verify that Google map is loaded

Verify that all info tabs are loaded for a Location
    [Tags]   Locations  LOC_006
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Check the tabs on Location Details page

Verify that user should be able to see the list of all machine details with Machine Info
    [Tags]   Locations  LOC_007
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on Machine Info Tab
    Verify the Headers present for Machine Info Tab
    Click on Game Name
    Verify the Game Fields are present on the screen

Verify that user is able to access EFT screen from Location list page
    [Tags]   Locations  LOC_008
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the EFT Link on Locations page and verify EFT Page is Loaded Successfully

Verify that user is able to access EFT screen from Machine Info page
    [Tags]   Locations  LOC_009
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on the EFT Link on Machine Info page and verify EFT Page is Loaded Successfully

Verify that User is able to map the Game code to the Machine
    [Tags]   Locations  LOC_010
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on Machine Info Tab
    Verify the Headers present for Machine Info Tab
    Click on Game Name
    Select the FG name from the dropdown and check the fields are autofilled

Verify that User should be able to see the Contract info details
    [Tags]   Locations  LOC_012
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on Contract Info Tab
    Verify the Headers present for Contract Info Tab

Verify the contract end date and Notice period and auto Renewal functionalities
    [Tags]   Locations  LOC_013
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on Contract Info Tab
    Input Contract Start Date, Years and Months and Check Contract End Date

Verify that Only Active COAMs count to be displayed in the Contract Info screen
    [Tags]   Locations  LOC_015
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on Contract Info Tab
    Verify that Active Coams Field is Non Editable

Verify that User shoud be able to Upload the Contract documents
    [Tags]   Locations  LOC_016
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on Contract Info Tab
    Upload The Contract Document and Check the Upload is Successful

Verify that User should be able to download and view the contract doc
    [Tags]   Locations  LOC_017
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on Contract Info Tab
    Click on View Icon and Verify that Document is loaded in different tab

Verify that User should be able to delete the Contract doc
    [Tags]   Locations  LOC_018
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on Contract Info Tab
    Delete The Uploaded Document

Verify that User should be able to add the notes
    [Tags]   Locations  LOC_019
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on Contract Info Tab
    Click on the Notes Field and Add Notes

Verify that User should be able to make the status as Active/Inactive
    [Tags]   Locations  LOC_021
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on Contract Info Tab
    Get The Color of the Header
#    Change Status of the Location and Save Changes
#    Get The Color of the Header

Verify that User should be able to view the Service Info details
    [Tags]   Locations  LOC_024
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on Service Info Tab
    Verify the Headers present for Service Info Tab


Verify that User should be able to view the service log details of the location from Service Info
    [Tags]   Locations   LOC_025
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on Service Info Tab
    Click on the First Work Order Link and Verify Service Call Detail Page is Loaded


Verify that User should be able to create new contact details
    [Tags]   Locations  LOC_026
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on the Contact Details Page
    Click on New and Fill in the New Contact Details and Create

Verify that User should be able to view contact details
    [Tags]   Locations  LOC_027
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on the Contact Details Page
    Validate Newly Created Contact Details is Present on the Page

Verify that User should be able to set the contact as primary
    [Tags]   Locations  LOC_029
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on the Contact Details Page
    Click Set as Primary for the Contact Detail and Save
    Verify Contact is Set as Primary

Verify that User shoud be able to Upload the License & videos
    [Tags]   Locations  LOC_033  LOC_034
    Click Locations and Navigate
    Validate Locations Page is loaded correctly
    Search for the Active Location name
    Click on the active location name and Verify page is loaded for that location
    Click on the License & Videos Button
    Upload The License & Video Document and Check the Upload is Successful

