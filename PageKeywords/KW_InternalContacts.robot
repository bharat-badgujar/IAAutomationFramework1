# Import files
*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/PO_InternalContacts.robot
Resource    ../Common/Common_Actions.robot

*** Variables ***
${Page_Name}    Internal Contacts

*** Keywords ***

Click Internal Contacts and Navigate
    Click    ${internal_contacts_tab}

Validate Internal Contacts Page is loaded correctly
    Validate Title of the Page    ${Page_Name}