# Import files
*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/PO_Inventory.robot
Resource    ../Common/Common_Actions.robot

*** Variables ***
${title}    Vendor
${company_name}    Bharat

*** Keywords ***

Click Inventory Tab
    Click    ${inventory_tab}

Validate Vendor is Present
    Validate Page Contains Element  ${vendor}

Validate Item Groups is Present
    Validate Page Contains Element  ${item_groups}

Validate Items is Present
    Validate Page Contains Element  ${items}

Validate Finished Goods is Present
    Validate Page Contains Element  ${finished_goods}

Validate Vendor Item Mapping is Present
    Validate Page Contains Element  ${vendor_item_mapping}

Validate Vendor Inventory Adjustment is Present
    Validate Page Contains Element  ${inventory_adjustment}

Validate Vendor Stock Detail Report is Present
    Validate Page Contains Element  ${stock_detail_report}

Click Vendor Tab
    Click  ${vendor}

Validate Page loaded is Vendor Home Page
    Validate Title of the Page  ${title}

Verify Name is Present on Card for Vendor
    Verify element text is not blank    ${vendor_card_name}

Verify Email is present on Card for Vendor
    Verify Element Contains Specific Text   ${vendor_card_email}    Email:

Verify Phone is present on Card for Vendor
    Verify Element Contains Specific Text   ${vendor_card_phone}    Phone:

Verify Website is present on Card for Vendor
    Verify Element Contains Specific Text   ${vendor_card_website}    Website:

Verify Add New Button is Present on the Page
    Validate Page Contains Element   ${vendor_add_new_btn}

Click Add New Vendor Button
    Click  ${vendor_add_new_btn}

Verify Add New Vendor Frame is Displayed
    Verify Element Contains Specific Text  ${vendor_new_vendor_dtls}    Vendor Info
    ${window_title}=  Get Window Titles
    Switch Window    ${window_title}
    Click    ${vendor_new_vendor_dtls}

Select Individual for New Vendor
    Wait Until Element Is Visible   ${vendor_type_individual}
    Click Radio Button    ${vendor_type_individual}

Enter Company Name
    Input Text in Textbox   ${company_name_ib}   ${company_name}
