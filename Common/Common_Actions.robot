 # Import files
*** Settings ***
Library     SeleniumLibrary
Library     DateTime
Library     Process
Library     BuiltIn
Library    OperatingSystem
Library    String
Library    XML

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

Upload File 2
    [Arguments]    ${file_input_locator}    ${file_path}
    Choose File    ${file_input_locator}    ${file_path}

Subtract 12 from a Resultant Months
    [Arguments]    ${number}
    ${result}=    Evaluate    ${number} - 12
    RETURN  ${result}

Calculate Final Date
    [Arguments]    ${start_date}    ${year}   ${month}
    ${date_as_string}=   Convert To String    ${start_date}
    ${current_year}=    Evaluate    datetime.datetime.strptime('${start_date}', '%Y-%m-%d').year
    ${fyear_calc}=  Evaluate    ${current_year} + ${year}
    ${current_month}=    Evaluate    datetime.datetime.strptime('${start_date}', '%Y-%m-%d').month
    ${resultant_month}=  Evaluate    ${current_month} + ${month}
    ${final_month}=  Run Keyword If    ${resultant_month}>12    Subtract 12 from a Resultant Months  ${resultant_month}
    ${final_year}=  Run Keyword If    ${resultant_month}>12    Evaluate    ${fyear_calc}+1  ELSE    Set Variable    ${fyear_calc}
    ${current_day}=    Evaluate    datetime.datetime.strptime('${start_date}', '%Y-%m-%d').day
    ${final_day}=   Evaluate    ${current_day}-1
    ${formatted_month}=    Run Keyword If    ${final_month} < 10    Format String    0${final_month}    ELSE    Set Variable    ${final_month}
    ${formatted_day}=    Run Keyword If    ${final_day} < 10    Format String    0${final_day}    ELSE    Set Variable    ${final_day}
    ${date_string}=  Catenate    SEPARATOR=/    ${formatted_month}    ${formatted_day}     ${final_year}
    Log    The final date is ${date_string}
    RETURN  ${date_string}

Upload File without Submit Button
    [Arguments]   ${upload_btn}  ${file_path}    ${file_type}   ${value}
    Execute JavaScript          apex.item("${file_type}").setValue('${value}');
    Choose File    ${upload_btn}    ${file_path}

Current Selected Value from Dropdown
    [Arguments]    ${locator}   ${value}
    ${selected_value}=    Get Selected List Label  ${locator}
    Should Be Equal As Strings    ${selected_value}    ${value}

Select Value from Dropdown for MultiSelector Dropdown
    [Arguments]   ${locator}    ${value}    ${game_name}
    Execute JavaScript      apex.item( "${locator}" ).setValue( "${value}", "${game_name}", true );

Check if Location is Due in Few Months
    [Arguments]    ${locator}
    ${element}    Get WebElement    ${locator}   # Replace with your locator
    Log    Element: ${element}
    ${class_attribute}    Get Element Attribute    ${element}    class
    Log    ${class_attribute}
    ${due_class}       Should Be Equal As Strings    ${class_attribute}    hover-LocationItem active_location location_yellow
    Log    The Location is due in Months and The Color is Displayed as Yellow

Check if Location is Inactive
    [Arguments]    ${locator}
    ${element}    Get WebElement    ${locator}   # Replace with your locator
    Log    Element: ${element}
    ${class_attribute}    Get Element Attribute    ${element}    class
    Log    ${class_attribute}
    ${inactive_class}     Should Be Equal As Strings  ${class_attribute}    hover-LocationItem inactive_location
    Log    The Location is Inactive and The Color is Displayed as Red

Check if Location is Active
    [Arguments]    ${locator}
    ${element}    Get WebElement    ${locator}   # Replace with your locator
    Log    Element: ${element}
    ${class_attribute}    Get Element Attribute    ${element}    class
    Log    ${class_attribute}
    ${active_class}   Should Be Equal As Strings  ${class_attribute}  hover-LocationItem active_location
    Log    The Location is Active and The Color is Displayed as Green