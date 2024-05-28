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
    Enter Individual Name
    Enter Individual Details - Address Phone Number Email Website
#    Click Create New Vendor Button

Validate Item Groups home page display
    [Tags]    Inventory   INV_005
    Click Inventory Tab
    Click Item Groups Tab
    Validate Page loaded is Item Groups Home Page
    Verify Name is Present on Card for Item Groups
    Verify Status is present on Card for Item Group
    Verify Created By is present on Card for Item Group
    Verify Created Date is present on Card for Item Group
    Verify Add New Item Group is Present on the Page

Validate User is able to create New Item Group
    [Tags]    Inventory   INV_006
    Click Inventory Tab
    Click Item Groups Tab
    Validate Page loaded is Item Groups Home Page
    Verify Add New Item Group is Present on the Page
    Click Add New Item Group Button
    Verify Add New Item Group Frame is Displayed
    Enter Name for New Item Group
    Enter Description for New Item Group
#    Click Create Button New Item Group
#    Validate New Item has been created

Validate User is Able to Create a New Item & Search the Item
    [Tags]    Inventory   INV_008  INV_011
    Click Inventory Tab
    Click Items Tab
    Click Add New Item Button
    Enter Item Details - Name Description Item Group Unit
    Click Create Button to Create New Item
    Search for the Newly Created Item
    Validate Details for the Newly Created Element

Validate User is Able to Delete the Newly Created Item
    [Tags]    Inventory   INV_010   INV_011
    Click Inventory Tab
    Click Items Tab
    Search for the Newly Created Item
    Deleting The Newly Created Item
    Searching for the Deleting Item to make sure it is deleted

Validate User is able to create a Finished Good
    [Tags]      Inventory    INV_012
    Click Inventory Tab
    Click Finished Goods Tab
    Click Add New Finished Goods Button
    Enter Finished Good Details
    Click Create Button for Finished Goods

Validate User is able to search for the newly created Finished Good and delete it
    [Tags]      Inventory    INV_015    INV_016
    Click Inventory Tab
    Click Finished Goods Tab
    Search for Newly Created Finished Group

Validate User is able to access Inventory Adjustment Page
    [Tags]      Inventory    INV_017
    Click Inventory Tab
    Click Inventory Adjustment Tab
    Check User is landed on Inventory Adjustment Page
    Check Page Contains Adjustment Date Reason & Description
    Check Page Contains Add Adjustment Button

Validate User should be able to add inventory adjustment
    [Tags]      Inventory    INV_018
    Click Inventory Tab
    Click Inventory Adjustment Tab
    Click Add Adjustment Button
    Select the Adjustment Date
    Enter Reason & Description for Inventory Adjustment
    Select Item Group Item & Quantity Adjusted for Adjustment
