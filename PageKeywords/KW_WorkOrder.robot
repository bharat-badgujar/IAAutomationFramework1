*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/PO_WorkOrder.robot
Resource    ../Common/Common_Actions.robot

*** Variables ***



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