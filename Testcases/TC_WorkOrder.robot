# Import files
*** Settings ***
Library     SeleniumLibrary
Resource    ../Common/App_Launch.robot
Resource    ../PageKeywords/KW_WorkOrder.robot
Resource    ../PageKeywords/KW_Inventory.robot

Test Setup  Validate that the user is able to Launch and Login into the app
Test Teardown  Browser Close to End Test Case


*** Test Cases ***

Validate User is able to Navigate to Service Call Page and All Fields are Present
    [Tags]   Service Call  WO_SC_001
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Validate All Labels and Buttons are Present

Validate User is able to Add a New Service Call for SC Offline
    [Tags]   Service Call  WO_SC_002
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Click Add New Service Call Button and Enter the Service Type  SC Offline
    Select Location from Location Dropdown  KINGSLAND - (20698948)
    Select Game From Game Dropdown
    Select Contact from the Dropdown    b
    Select The Priority  Medium
    Input the Reason For the Service Call    SC Offline
    Upload The File for Service Call
#    Click the Create Button

Validate the WO on the Service call home page
    [Tags]   Service Call  WO_SC_003
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Validate Service Call Page Contains Elements    SC Offline   Open

Validate the Work Order Details for Service Log Info
    [Tags]   Service Call  WO_SC_004_1
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Click on the Service Call Link Navigate to Service Call Details Page    SC Offline
    Validate Page Contains All 4 tabs for Service- Log Info, Details, Files & Machine Info
    Validate Service Call Type Name     SC Offline
    Validate Location Name    KINGSLAND
    Verify the License No    20698948
    Verify the reason   sc offline
    Verify the Address    USA, GEORGIA
    Verify the Game    AURORA 1 - KINGSLAND GROCERY - 1 - 1
    Validate Service Log Info Contains Creation and Modification Details
    Validate the Status of the Service Call    Open
    Validate the Contact of the Service Call    b
    Validate the Priority of the Service Call    High

Validate the Work Order Details for Service Details
    [Tags]   Service Call  WO_SC_004_2
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Click on the Service Call Link Navigate to Service Call Details Page    SC Offline
    Validate the Service Details Section

Validate the Work Order Details for Service Files
    [Tags]   Service Call  WO_SC_004_3
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Click on the Service Call Link Navigate to Service Call Details Page    SC Offline
    Validate Upload Section has some file

Validate the Work Order Details for Service Machine Info and Cancel Button takes back to Service Call Page
    [Tags]   Service Call  WO_SC_004_4
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Click on the Service Call Link Navigate to Service Call Details Page    SC Offline
    Validate the Service Machine Info Details
    Click Cancel Button and Navigate to Service Call Page

Update the status of the WO-SC offline to Inprogress
    [Tags]   Service Call  WO_SC_005
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Click on the Service Call Link Navigate to Service Call Details Page    SC Offline
    Select the Status from the dropdown and Apply Changes    In Progress

Update the status of the WO-SC offline to Fixed
    [Tags]   Service Call  WO_SC_006
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Click on the Service Call Link Navigate to Service Call Details Page    SC Offline
    Select the Status from the dropdown and Apply Changes    Fixed

Validate User is able to Add a New Service Call for Service Call
    [Tags]   Service Call  WO_SC_007
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Click Add New Service Call Button and Enter the Service Type  Service Call
    Select Location from Location Dropdown  KINGSLAND - (20698948)
    Select Game From Game Dropdown 2
    Select Contact from the Dropdown    b
    Select The Priority  High
    Input the Reason For the Service Call    Game Board Issue
    Upload The File for Service Call
    Sleep    3s
#    Click the Create Button

Validate the Work Order Details for Service Call - Service Log Info
    [Tags]   Service Call  WO_SC_008_1
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Click on the Service Call Link Navigate to Service Call Details Page    - Service Call
    Validate Page Contains All 5 tabs for Service- Log Info, Files, Machine Info, Checklist & Log
    Validate Service Call Type Name     Service Call
    Validate Location Name    KINGSLAND
    Verify the License No    20698948
    Verify the reason   Game Board Issue
    Verify the Address    USA, GEORGIA
    Verify the Game    AURORA 1 - KINGSLAND GROCERY - 1 - 1
    Validate Service Log Info Contains Creation and Modification Details
    Validate the Status of the Service Call    Open
    Validate the Contact of the Service Call    b
    Validate the Priority of the Service Call    High

Validate the Work Order Details for Service Call - Service Files
    [Tags]   Service Call  WO_SC_008_2
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Click on the Service Call Link Navigate to Service Call Details Page    - Service Call
    Validate Upload Section has some file

Validate the Work Order Details for Service Call-Service Machine Info and Cancel Button takes back to Service Call Page
    [Tags]   Service Call  WO_SC_008_3
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Click on the Service Call Link Navigate to Service Call Details Page    - Service Call
    Validate the Service Machine Info Details
    Click Cancel Button and Navigate to Service Call Page

Validate User is able to Create Add a Machine Serive call type
    [Tags]   Service Call  WO_SC_010_1
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Click Add New Service Call Button and Enter the Service Type  Add a machine
    Select Location from Location Dropdown  KINGSLAND - (20698948)
    Select Contact from the Dropdown    b
    Select The Priority  High
    Input the Reason For the Service Call    Kingsland, Adding a new machine
#    Click the Create Button

Validate User is able to Verify the update of Add a Machine Serive call type
    [Tags]   Service Call  WO_SC_010_2
    Click Work Order Tab
    Click Service Call tab & Navigate to Service Call Page
    Click on the Service Call Link Navigate to Service Call Details Page    Add a machine
    Validate Service Call Type Name     Add a machine
    Select FG Name from the FG Dropdown
    Select the Status from the dropdown and Apply Changes    Fixed

Validate User is able to search for the newly created FG Group
    [Tags]   Service Call  WO_SC_010_3
    Click Inventory Tab
    Validate Finished Goods is Present
    Click Finished Goods Tab
    Search for Newly Created Finished Group    FORTKNOX - 2533316    2533316    IGT     KINGSLAND


