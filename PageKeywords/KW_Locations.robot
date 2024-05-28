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

Validate Page Contains buttons - All,Active, Inactive, Draft
    Validate Page Contains Element  ${all_btn}
    Validate Page Contains Element    ${draft_btn}
    Validate Page Contains Element    ${active_btn}
    Validate Page Contains Element    ${inactive_btn}

Validate Page Contains Search box, Go & Clear Buttons
    Validate Page Contains Element  ${search_bar}
    Validate Page Contains Element  ${search_go_btn}
    Validate Page Contains Element  ${search_clr_btn}

Validate Page Contains Download File Button
    Validate Page Contains Element  ${download_btn}

Validate Page Contains headers- Location Name, License No., Address, No of Coams & Status
    Validate Page Contains Element  ${location_name}
    Validate Page Contains Element  ${license_no}
    Validate Page Contains Element  ${address}
    Validate Page Contains Element  ${no_of_coams}
    Validate Page Contains Element  ${status}
    
Click on Work Order
    Click    ${work_order_tab}
    
Click on New Install
    Click    ${new_install}

Validate New Install Page is loaded correctly
    Validate Title of the Page    New Install

Click on the Install Button for new location installation
    Click    ${install_btn}

Add details for the new Location installation
    Select Frame    ${slider_frame}
    Input Text in Textbox    ${location_nam}    New Jersey
    Input Text in Textbox    ${licence_no}    785496
    Input Text in Textbox    ${installation_dt}    05/01/2024
    Input Text in Textbox    ${cont_strt_dt}    06/01/2024
    Select Value from Dropdown    ${dur_years}    2
    Input Text in Textbox    ${notice_prd}    15
    Select Value from Dropdown    ${location_type}    Convenience With Gas
    Input Text in Textbox    ${notes}    Automation Test to Create Location
