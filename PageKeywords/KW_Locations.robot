# Import files
*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/PO_Locations.robot
Resource    ../Common/Common_Actions.robot

*** Variables ***
${Page_Name}             Locations
${google_map_url}        google.com/maps
${years}                 2
${months}                3
${days}                  15
${date_format}           %m/%d/%Y
${file_path}             C:/Users/BHARAT/Downloads/contract-signature-.jpg
${cont_upload}           .amazonaws.com

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
    
Click on the Draft Location name and verify page is loaded for that location
    ${loc_name}=  Get Text    ${draft_loc_name}
    Click    ${draft_loc_name}
    ${loaded_page_header}=  Get Text    ${loc_hdr}
    Should Be Equal As Strings    ${loc_name}    ${loaded_page_header}
    
Click on the +New Button
    Click    ${new_link_btn}

Select the FG name from the dropdown and check the fields are autofilled
    Select Frame    ${slider_link_frame}
    Select Value from Dropdown    ${fg_name_dropdown}    SKYRISER
    Select Value from Dropdown    ${port_no_dropdown}    3
    Input Text in Textbox    ${seal_no}    456
    Verify element text is not blank    ${item_grp_tbl}

Click on the Link Button and verify COAM is linked to location
    Click    ${link_btn}
    Verify Element Contains Specific Text    ${linked_fg_name}    SKYRISER

Search for the Active Location name
    Input Text in Textbox    ${search_bar}    DUMMY
    Click    ${search_go_btn}

Click on the active location name and Verify page is loaded for that location
    ${loc_name}=  Get Text    ${active_loc}
    Click    ${active_loc}
    ${loaded_page_header}=  Get Text    ${loc_hdr}
    Should Be Equal As Strings    ${loc_name}    ${loaded_page_header}

Click on Map Icon and Verify that Google map is loaded
    ${original_windows}=    Get Window Handles
    Click    ${map_icon}
    Sleep    5s
    ${new_window}=    Switch Window    ${original_windows}
    ${current_url}=    Get Location
    Should Contain    ${current_url}    ${google_map_url}

Check the tabs on Location Details page
    Verify Element Contains Specific Text    ${machine_info}     Machine Info
    Verify Element Contains Specific Text    ${contract_info}    Contract Info
    Verify Element Contains Specific Text    ${service_info}    Service Info
    Verify Element Contains Specific Text    ${contact_details}    Contact Details
    Verify Element Contains Specific Text    ${license_&_videos}    License & Videos
    Verify Element Contains Specific Text    ${inspection_info}    Inspection Info

Click on Machine Info Tab
    Click    ${machine_info}

Verify the Headers present for Machine Info Tab
    Verify Element Contains Specific Text    ${machine_num}    Machine No
    Verify Element Contains Specific Text    ${fg_name_hdr}    FG Name
    Verify Element Contains Specific Text    ${manufacturer}     Manufacturer
    Verify Element Contains Specific Text    ${game_hdr}     Game
    Verify Element Contains Specific Text    ${port_no}    Port No
    Verify Element Contains Specific Text    ${status_hdr}    Status
    Verify Element Contains Specific Text    ${asset_no}    Asset No
    Verify Element Contains Specific Text    ${decal_no}     Decal No

Click on Game Name
    Click    ${game_name}

Verify the Game Fields are present on the screen
    Select Frame    ${slider_link_frame} 
    Validate Page Contains Element    ${fg_name_dropdown} 
    Validate Page Contains Element    ${manuf_cont}
    Validate Page Contains Element    ${game_name2}
    Validate Page Contains Element    ${game_code}
    Validate Page Contains Element    ${port_no_dropdown}
    Validate Page Contains Element    ${status_lbl}
    Validate Page Contains Element    ${asset}
    Validate Page Contains Element    ${decal}
    Validate Page Contains Element    ${serial_no}
    Validate Page Contains Element    ${jackpot_val}
    Validate Page Contains Element    ${seal_no} 
    Validate Page Contains Element    ${order_no}
    Validate Page Contains Element    //*[contains(text(),'BOARDS')]
    Validate Page Contains Element    //*[contains(text(),'CABINET')]
    Validate Page Contains Element    //*[contains(text(),'BILL ACCEPTORS')]
    Validate Page Contains Element    //*[contains(text(),'SCREEN')]
    Validate Page Contains Element    //*[contains(text(),'LOCK')]
    Validate Page Contains Element    ${save_btn}
    Validate Page Contains Element    ${cancel_btn}
    
Click on the EFT Link on Locations page and verify EFT Page is Loaded Successfully
    Click    ${locations_eft}
    Verify Element Contains Some Text    ${location_eft_hdr}    EFT Report - Detailed Location wise

Click on the EFT Link on Machine Info page and verify EFT Page is Loaded Successfully
    Click    ${locations_eft}
    Verify Element Contains Some Text    ${location_eft_hdr}    EFT Report - Game wise
    
Click on Contract Info Tab
    Wait Until Element Is Visible    ${contract_info_tab}
    Click    ${contract_info_tab}
    
Verify the Headers present for Contract Info Tab
    Validate Page Contains Element    ${location_type2}
    Validate Page Contains Element    ${no_of_coams2}
    Validate Page Contains Element    ${save_changes_btn}
    Validate Page Contains Element    ${notes_2}

Input Contract Start Date, Years and Months and Check Contract End Date
    ${current_date} =    Get Current Date
    Log  The current date is ${current_date}
    ${start_date}=    Convert Date    ${current_date}   result_format=${date_format}
    Input Text in Textbox    ${contract_st_dt}    ${start_date}
    Select Value from Dropdown    ${dura_yrs}    ${years}
    Select Value from Dropdown    ${dura_mths}     ${months}
    Input Text in Textbox    ${not_prd_days}    ${days}
#    ${end_date}=    Add Years Months Days To Date    ${current_date}    ${years_to_add}    ${months_to_add}    ${days_to_add}    ${date_format}
#    Log    The Final Dats is ${end_date}
#    ${end_date}=    Add Time To Date    ${current_date}    15 days
#    ${end1_date}=    Convert Date    ${end_date}   result_format=${date_format}
    Click    ${auto_renewal_tg}
    Validate Page Contains Element    ${auto_renewal_yr}
    Validate Page Contains Element    ${auto_renewal_mt}

Verify that Active Coams Field is Non Editable
    ${readonly}=    Get Element Attribute    ${active_coams}     readonly
    ${disabled}=    Get Element Attribute    ${active_coams}     disabled
    ${is_non_editable}=    Run Keyword And Return Status    Should Be True    ${readonly} or ${disabled}

Upload The Contract Document and Check the Upload is Successful
    Upload File without Submit Button  ${upload_btn}    ${file_path}
    Should Be Empty    ${uploaded_file}

Click on View Icon and Verify that Document is loaded in different tab
    ${original_windows}=    Get Window Handles
    Click    ${view}
    Sleep    5s
    ${new_window}=    Switch Window    ${original_windows}
    ${current_url}=    Get Location
    Should Contain    ${current_url}    ${cont_upload}
    
Delete The Uploaded Document
    Click    ${upload_delete}

