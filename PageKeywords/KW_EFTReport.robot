#Import Files
*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/PO_EFTReport.robot
Resource    ../Common/Common_Actions.robot

*** Variables ***
${DateRange}        01/08/2023 - 01/14/2023
${Table_Period_W}     //*[@id="C15162482383692713"]/span
${Period}           Period
${Loc1}             //*[@id="ms-opt-2"]
${Loc2}             //*[@id="ms-opt-4"]
${Loc3}             //*[@id="ms-opt-5"]

*** Keywords ***
Click on EFT Report Dropdown
    Click    ${EFTR_arrow}
Validate Detailed Location Wise tab is present
    Validate Page Contains Element    ${EFTR_DLW}
Validate Location Wise tab is present
    Validate Page Contains Element    ${EFTR_LocW}
Validate Game Wise tab is present
    Validate Page Contains Element    ${EFTR_GamW}
Validate Manufacturer Wise tab is present
    Validate Page Contains Element    ${EFTR_MfW}
Validate Send EFT Message tab is present
    Validate Page Contains Element    ${EFTR_SendEFTMsg}
Click on the Detaled Location wise tab
    Click    ${EFTR_DLW} 
Validate Date Rage is present
    Validate Page Contains Element      ${EFTR_DLW_DateR_fld}
Validate Location dropdown is present
    Validate Page Contains Element     ${EFTR_DLW_Loc_fld}
Validate Search button is present
    Validate Page Contains Element   ${EFTR_DLW_Search_btn}
Validate Download button is present
    Validate Page Contains Element  ${EFTR_DLW_Dwnld_btn}
Validate Weekly and Daily tabs are present
    Validate Page Contains Element  ${EFTR_DLW_wkly_tab}
    Validate Page Contains Element  ${EFTR_DLW_dly_tab}
Input the Date Range
    Input Text in Textbox    ${EFTR_DLW_DateR_Ip}    ${DateRange}
Click on the Locaton wise drop down
    Click    ${EFTR_DLW_Loc_drpdwn}
Select all locations
    Click    ${EFTR_DLW_Loc_selall}
Click on the Search button
    Click    ${EFTR_DLW_Search_btn}
Expand the Weekly total
    Click    ${EFTR_DLW_Wkly_+}
Verify the table contains Period
    Element Text Should Be  ${Table_Period_w}   ${Period}
Verify the table Period Range should be as per the selection
    Element Text Should Be  ${EFTR_DLW_Perrange}   ${DateRange}
Select three locations
    Click    ${Loc1}
    Click    ${Loc2}
    Click    ${Loc3}
Click on daily tab
    Click    ${EFTR_DLW_dly_tab}
Click on Expand button
    Click    ${EFTR_DLW_Dly_+}
Click on the Send EFT Message tab
    Click    ${EFTR_SendEFTMsg}