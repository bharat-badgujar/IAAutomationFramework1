# Import files
*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/PO_Settings.robot
Resource    ../Common/Common_Actions.robot

*** Variables ***



*** Keywords ***

Click Settings Tab
    Click    ${settings_tab}

Validate GLC Commission is Present
    Validate Page Contains Element  ${glc_commision}

Validate Masters is Present
    Validate Page Contains Element  ${masters}

Validate Update Decal No is Present
    Validate Page Contains Element  ${update_decal_no}

