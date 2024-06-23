*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/PO_WorkOrder.robot
Resource    ../Common/Common_Actions.robot

*** Variables ***
${file_path}             C:/Users/BHARAT/Downloads/contract-signature-.jpg


*** Keywords ***

Click Work Order Tab
    Click    ${work_order_tab}

Click Service Call tab & Navigate to Service Call Page
    Click    ${svc_call_tab}
    Validate Title of the Page   Service Call
    
Validate All Labels and Buttons are Present
    Verify Element Contains Specific Text    ${date_range}    Date Range
    Verify Element Contains Specific Text    ${status_label}    Status
    Verify Element Contains Specific Text    ${type_label}     Type
    Verify Element Contains Specific Text    ${location_label}     Location
    Verify Element Contains Specific Text    ${game_label}     Game
    Validate Page Contains Element    ${search_btn} 
    Validate Page Contains Element    ${download_btn}
    Validate Page Contains Element    ${add_new_svc_call}
    
Click Add New Service Call Button and Enter the Service Type
    [Arguments]    ${service_type_name}
    Click    ${add_new_svc_call}
    Select Frame    ${service_call_frame}
    Select Value from Dropdown    ${service_call_type}    ${service_type_name}

Select Location from Location Dropdown
    [Arguments]    ${location_name}
    Select Value from Dropdown    ${location_container}    ${location_name}
    Sleep    5s

Select Game From Game Dropdown
    Select Value from Dropdown for MultiSelector Dropdown    ${game_dropdown_multi}    737    AURORA 1 - KINGSLAND GROCERY - 1 - 1

Select Game From Game Dropdown 2
    Select Value from Dropdown    ${game_dropdown_single}    AURORA 1 - KINGSLAND GROCERY - 1 - 1

Select Contact from the Dropdown
    [Arguments]    ${contact_value}
    Select Value from Dropdown    ${contact_name}    ${contact_value}
    
Select The Priority
    [Arguments]     ${priority}
    Click    //*[text()="${priority}"]//preceding::input[@type='radio'][1]
    
Input the Reason For the Service Call
    [Arguments]   ${reason}
    Input Text in Textbox    ${reason_text}    ${reason}
    
Upload The File for Service Call
    Upload File 2    ${upload_btn}    ${file_path}
    
Click the Create Button
    Click    ${create_btn} 
    
Validate Service Call Page Contains Elements
    [Arguments]   ${type}    ${status}
    Validate Page Contains Element    //a[contains(text(),'${type}')]   #Service Type is Present on Page
    Validate Page Contains Element    ${wo#_card}    #Work Order Number is Present on Page
    Validate Page Contains Element    //*[@id="serviceCards_Cards"]//span[contains(text(),'${status}')]      #Status Check
    Validate Page Contains Element    ${priority_disp}      #Priority for the Service Call
    Validate Page Contains Element    ${view_details}          #View Details
    Validate Page Contains Element    ${contact_label}        #Contact Label is Present on Card
    Validate Page Contains Element    ${location_label_2}        #Location Label is Present on Card
    Validate Page Contains Element    ${address_label}        #Address Label is Present on Card
    Validate Page Contains Element    ${game_label_2}        #Game Label is Present on Card
    Validate Page Contains Element    ${desc_label}        #Description Label is Present on Card
    Validate Page Contains Element    ${created_by_label}
    Validate Page Contains Element    ${created_date_label}

Click on the Service Call Link Navigate to Service Call Details Page
    [Arguments]     ${type}
    Click    //a[contains(text(),'${type}')]
    Validate Title of the Page    Service Call Detail
    
Validate Page Contains All 4 tabs for Service- Log Info, Details, Files & Machine Info
    Validate Page Contains Element    ${svc_log_info}
    Validate Page Contains Element    ${svc_files}
    Validate Page Contains Element    ${svc_details}
    Validate Page Contains Element    ${svc_machine_info}

Validate Page Contains All 5 tabs for Service- Log Info, Files, Machine Info, Checklist & Log
    Validate Page Contains Element    ${svc_log_info}
    Validate Page Contains Element    ${svc_files}
    Validate Page Contains Element    ${svc_machine_info}
    Validate Page Contains Element    ${svc_log}
    Validate Page Contains Element    ${svc_checklist}

Validate Service Call Type Name
    [Arguments]   ${svc_call_type_val}
    Verify Element Contains Some Text    ${svc_call_type}    ${svc_call_type_val}

Validate Location Name
    [Arguments]   ${location_name}
    Verify Element Contains Some Text    ${location}    ${location_name}

Verify the License No
    [Arguments]   ${license_num}
    Verify Element Contains Some Text    ${license_no}    ${license_num}

Verify the reason
    [Arguments]   ${reasoning}
    Verify Element Contains Some Text    ${reason}      ${reasoning}

Verify the Address
    [Arguments]   ${address_val}
    Verify Element Contains Some Text    ${address}    ${address_val}

Verify the Game
    [Arguments]  ${game}
    Verify Element Contains Some Text    ${game_name}    ${game}
    
Validate Service Log Info Contains Creation and Modification Details
    Validate Page Contains Element    ${created_by_label}
    Validate Page Contains Element   ${created_date_label}
    Validate Page Contains Element    ${last_modified_by}
    Validate Page Contains Element    ${last_modified_date}

Validate the Status of the Service Call
    [Arguments]   ${status_val}
    Current Selected Value from Dropdown    ${svc_call_status}    ${status_val}

Validate the Contact of the Service Call
    [Arguments]   ${contact_val}
    Current Selected Value from Dropdown    ${svc_call_cont}     ${contact_val}

Validate the Priority of the Service Call
    [Arguments]   ${priority_val}
    Current Selected Value from Dropdown    ${svc_call_priority}    ${priority_val}
    
Validate the Service Details Section
    Validate Page Contains Element    ${ft_in_person}
    Validate Page Contains Element    ${ft_over_phone}
    Validate Page Contains Element    ${svc_dtls_notes}
    
Validate Upload Section has some file
    Verify element text is not blank    ${upload_date}

Validate the Service Machine Info Details
    Validate Page Contains Element    ${smi_game}               #Game Dropdown is present
    Validate Page Contains Element    ${smi_manufacturer}       #Manufacturer
    Validate Page Contains Element    ${smi_port_no}            #Port No
    Validate Page Contains Element    ${smi_asset_no}           #Asset No
    Validate Page Contains Element    ${smi_decal_no}           #Decal No
    Validate Page Contains Element    ${smi_difficulty}         #Difficulty
    Validate Page Contains Element    ${smi_serial_no}          #Serial No
    Validate Page Contains Element    ${smi_seal_no}            #Seal No
    Validate Page Contains Element    ${smi_notes}              #Notes
    Validate Page Contains Element    ${smi_item_grp}           #Item Group
    Validate Page Contains Element    ${smi_raw_item}           #Raw Item
    
Click Cancel Button and Navigate to Service Call Page
    Click    ${cancel_btn}
    Validate Title of the Page    Service Call
    
Select the Status from the dropdown and Apply Changes
    [Arguments]     ${status}
    Select Value from Dropdown    ${svc_call_status}    ${status}
    Click    ${apply_changes}
    Sleep    2s
    Current Selected Value from Dropdown    ${svc_call_status}    ${status}

Select FG Name from the FG Dropdown
    Select Value from Dropdown for MultiSelector Dropdown    ${fg_name_dd}     403    FORT KNOX - FORTKNOX - 2533316

    
