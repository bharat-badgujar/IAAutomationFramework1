 # Import files
*** Settings ***
Library     SeleniumLibrary
Library     DateTime

*** Keywords ***

Launch Browser and Enter URL
    [Arguments]  ${url}     ${browser}
    Open Browser    ${url}     ${browser}

 Close the browser
    Close All Browsers

Click
    [Arguments]  ${locator}
    Click Element    ${locator}
    
Input Text in Textbox
    [Arguments]  ${locator}   ${text}
    Input Text    ${locator}    ${text}

Validate Page Contains Element
    [Arguments]    ${Element_Name}
    Element Should Be Visible    ${Element_Name}
    Page Should Contain Element    ${Element_Name}

Validate Title of the Page
   [Arguments]  ${Page_Title}
   Title Should Be    ${Page_Title}

Verify element text is not blank
    [Arguments]     ${element_path}
    ${text}=    Get Text    ${element_path}
    Log    Text: ${text}
    Should Not Be Empty   ${text}

Verify Element Contains Specific Text
    [Arguments]     ${locator}  ${expected_text}
    Element Text Should Be    ${locator}   ${expected_text}

Verify Element Contains Some Text
    [Arguments]     ${locator}  ${expected_text}
    ${element_text}=    Get Text    ${locator}
    Should Contain    ${element_text}   ${expected_text}

Scroll Page
    [Arguments]    ${x_coordinate}    ${y_coordinate}
    Execute Javascript    window.scrollTo(${x_coordinate}, ${y_coordinate})

Select Value from Dropdown
    [Arguments]       ${locator}     ${value_name}
    Select From List By Label    ${locator}    ${value_name}

Upload File
    [Arguments]    ${file_input_locator}    ${file_path}    ${submit_button_locator}
    Choose File    ${file_input_locator}    ${file_path}
    Click Element    ${submit_button_locator}

Add Years Months Days To Date
    [Arguments]    ${date}    ${years}    ${months}    ${days}    ${date_format}
#    ${date_iso}=    Convert Date    ${date}    result_format=%Y-%m-%d
    ${date_with_years}=    Add Time To Date    ${date}    years=${years}
    ${date_with_months}=    Add Time To Date    ${date_with_years}    months=${months}
    ${future_date}=    Add Time To Date    ${date_with_months}    days=${days}
    ${date_final}=    Convert Date    ${future_date}    result_format=${date_format}

Upload File without Submit Button
    [Arguments]   ${upload_btn}  ${file_path}
    Choose File    ${upload_btn}    ${file_path}
    Sleep    3s