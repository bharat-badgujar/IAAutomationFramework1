 # Import files
*** Settings ***
Library     SeleniumLibrary


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

Select Date From Calendar
    [Arguments]    ${locator}  ${year_locator}    ${month_locator}   ${year}    ${month}    ${day}
    Click Element    ${locator}
    Wait Until Element Is Visible    ${locator}    10s
    # Select the year
    Select From List By Value    ${year_locator}    ${year}
    # Select the month
    Select From List By Index    ${month_locator}    ${month}
    # Select the day
    Click Element    ${locator}//a[text()='${day}']

Upload File
    [Arguments]    ${file_input_locator}    ${file_path}    ${submit_button_locator}
    Choose File    ${file_input_locator}    ${file_path}
    Click Element    ${submit_button_locator}
