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

Click Radio Button
    [Arguments]  ${locator}
    Click Element    ${locator}



