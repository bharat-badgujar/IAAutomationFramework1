# Import files
*** Settings ***
Library     SeleniumLibrary
Resource    ../Common/App_Launch.robot
Resource    ../PageKeywords/KW_Inventory.robot

Test Setup  Validate that the user is able to Launch and Login into the app
Test Teardown  Browser Close to End Test Case


*** Test Cases ***

Validate Inventory Tab contains all 7 options
    [Tags]    Inventory   INV_001
    Click Inventory Tab
    Validate Vendor is Present
    Validate Item Groups is Present
    Validate Items is Present
    Validate Finished Goods is Present
    Validate Vendor Item Mapping is Present
    Validate Vendor Inventory Adjustment is Present
    Validate Vendor Stock Detail Report is Present

Validate Vendor home page display
    [Tags]    Inventory   INV_002
    Click Inventory Tab
    Validate Page loaded is Vendor Home Page
    Validate Vendor is Present
    Click Vendor Tab
    Validate Page loaded is Vendor Home Page
    Verify Name is Present on Card for Vendor
    Verify Email is present on Card for Vendor
    Verify Phone is present on Card for Vendor
    Verify Website is present on Card for Vendor
    Verify Add New Button is Present on the Page

Verify user is able to create New Vendor
    [Tags]    Inventory   INV_003
    Click Inventory Tab
    Click Vendor Tab
    Validate Page loaded is Vendor Home Page
    Verify Add New Button is Present on the Page
    Click Add New Vendor Button
    Verify Add New Vendor Frame is Displayed
    Select Individual for New Vendor

