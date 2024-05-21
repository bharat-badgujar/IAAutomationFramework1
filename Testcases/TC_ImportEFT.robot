#Import Files
*** Settings ***
Library     SeleniumLibrary
Resource    ../Common/App_Launch.robot
Resource    ../PageKeywords/KW_ImportEFT.robot


Test Setup    Validate that the user is able to Launch and Login into the app
Test Teardown   Browser Close to End Test Case

*** Variables ***


*** Test Cases ***

Validate Import EFT page fields
    [Tags]  Import EFT  IMPEFT_001
    Click on ImportEFT tab
    Validate EFT Radiobutton is present
    Validate EFT Commission Radiobutton is present
    Validate Upload File is present
    Validate Upload EFT Button is present
    Validate Import Log link is present


Validate Import EFT page Links
    [Tags]  Check Import EFT page Links  IMPEFT_002
    Click on ImportEFT tab
    Click on Import Log Button
    Click on Back button
    Click on EFT Commission Radio Button in Import EFT
    #Click on Upload the File
    Click on Upload the EFT button



Validate Import Log page fields
    [Tags]  Check Import Log IMPEFT_004
    Click on ImportEFT tab
    Click on Import Log Button
    Validate EFT Commission Radiobutton is present in Import Log
    Validate Upload Back Button is present
    Validate File Name is displayed
    Validate Created Date is displayed
    Validate Created No.of Records is displayed
    Validate Created Period is displayed
    Validate Created Download link is displayed


Download EFT file in Import Log
    [Tags]   Download uploaded EFT file from Import Log IMPEFT_005
    Click on ImportEFT tab
    Click on Import Log Button
    Click on EFT Download Link
    Click on Back button

Download EFT Commission file in Import Log
    [Tags]   Download uploaded EFT file from Import Log IMPEFT_005
    Click on ImportEFT tab
    Click on Import Log Button
    Click on EFT Commission Radio Button in Import Log
    Click on EFT Commission Download Link
    Click on Back button

Upload EFT File
    [Tags]  Verify Upload EFT files IMPEFT_003
    Click on ImportEFT tab
    #Click on the Choose File

    Click on Upload the File
    Sleep    5