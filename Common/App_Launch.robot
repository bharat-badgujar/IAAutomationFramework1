# Import files
*** Settings ***
Library     SeleniumLibrary
Resource    Common_Actions.robot


*** Variables ***
${browser}      chrome     #firefox
${url}          https://gd1788d619dddbc-preprod.adb.us-ashburn-1.oraclecloudapps.com/ords/r/infinity/infinity-amusement/login?
${user_tb}      //*[@id="P9999_USERNAME"]
${pw_tb}        //*[@id="P9999_PASSWORD"]
${login_btn}    //*[@id="LOGIN"]
${username}     medhavelluri@infinityamusement.com
${password}     Test$1234
${dashboard}    //h1[contains(text(),'Dashboard')]


*** Keywords ***

Validate that the user is able to Launch and Login into the app
    Launch Browser and Enter URL    ${url}  ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    30 Seconds
    Input Text in Textbox  ${user_tb}   ${username}
    Input Text in Textbox    ${pw_tb}     ${password}
    Click    ${login_btn}
    Validate Page Contains Element  ${dashboard}

Browser Close to End Test Case
     Close the browser







