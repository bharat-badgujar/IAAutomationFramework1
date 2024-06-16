#Import Files
*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/PO_ImportEFT.robot
Resource    ../Common/Common_Actions.robot

*** Variables ***
${ImpEFT_EFTfile}     C:/Users/BHARAT/Downloads/GMM- DB Jan 01 2024 to Feb 04 2024 one loc.csv
#{ImpEFT_EFTCommFile}

*** Keywords ***
Click on ImportEFT tab
    Click   ${ImpEFT_tab}
Validate EFT Radiobutton is present
    Validate Page Contains Element    ${ImpEFT_EFT_radio}
Validate EFT Commission Radiobutton is present
    Validate Page Contains Element    ${ImpEFT_EFTComm_radio}
Validate Upload File is present
    Validate Page Contains Element    ${ImpEFT_UpldFile}
Validate Upload EFT Button is present
    Validate Page Contains Element    ${ImpEFT_UpldEFT_btn}
Validate Import Log link is present
    Validate Page Contains Element    ${ImpEFT_ImportLog_btn}

Click on Import Log Button
    Click  ${ImpEFT_ImportLog_btn}
Validate EFT Commission Radiobutton is present in Import Log
     Validate Page Contains Element    ${ImpEFT_ImpLog_EFTComm}
Validate Upload Back Button is present
    Validate Page Contains Element    ${ImpEFT_ImpLog_Back_btn}
Validate File Name is displayed
    Validate Page Contains Element    ${ImpEFT_ImpLog_FilNam}
Validate Created Date is displayed
    Validate Page Contains Element    ${ImpEFT_ImpLog_CreDate}
Validate Created No.of Records is displayed
    Validate Page Contains Element    ${ImpEFT_ImpLog_NofRec}
Validate Created Period is displayed
    Validate Page Contains Element    ${ImpEFT_ImpLog_Period}
Validate Created Download link is displayed
    Validate Page Contains Element    ${ImpEFT_ImpLog_EFTDwnld}
Click on Back button
     Click  ${ImpEFT_ImpLog_Back_btn}
Click on EFT Download Link
     Click  ${ImpEFT_ImpLog_EFTDwnld}
Click on EFT Commission Radio Button in Import Log
     Click Radio Button  ${ImpEFT_ImpLog_EFTComm}
Click on EFT Commission Download Link
     Click  ${ImpEFT_ImpLog_EFTCommDwnld}
Click on the Choose File
    Click    ${ImpEFT_UpldFile}
    
Click on Upload the File
    Choose File    ${ImpEFT_UpldFile}    ${ImpEFT_EFTfile}
    #Wait Until Element Is Visible    locator ${CURDIR}${/}
Click on EFT Commission Radio Button in Import EFT
     Click  ${ImpEFT_EFTComm_radio}

Upload The File
    Upload File    ${ImpEFT_UpldFile}    ${ImpEFT_EFTfile}    ${ImpEFT_UpldEFT_btn}




