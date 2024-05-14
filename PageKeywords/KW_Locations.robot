# Import files
*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/PO_Locations.robot
Resource    ../Common/Common_Actions.robot

*** Variables ***
${Page_Name}    Locations



*** Keywords ***

Click Locations and Navigate
    Click    ${location_tab}

Validate Locations Page is loaded correctly
     Validate Title of the Page    ${Page_Name}
