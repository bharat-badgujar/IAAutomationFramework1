# Import files
*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/PO_Inventory.robot
Resource    ../Common/Common_Actions.robot

*** Variables ***
${title_vendor}               Vendor
${vendor_first_name}          Automation
${vendor_mid_name}            Framework
${vendor_last_name}           Testing
${vendor_mail}                automationframeworktesting@gmail.com
${vendor_ph_nbr}              7894561230
${vendor_web}                 www.automationframeworktesting.com
${vendor_addr1}               House No. 64
${vendor_addr2}               Maple Avenues
${vendor_cty}                 Lake City
${vendor_zcode}               587951
${vendor_cntry}               USA
${vendor_st_nm}               Georgia
${title_item_groups}          Item Groups
${new_group_name}             Automation Testing
${new_group_desc}             This group is controlled by automation framework
${new_group_name_lnk}         //a[contains(text(),'${new_group_name}')]
${new_group_desc_vld}         //h4[contains(text(),'${new_group_desc}')]
${unit_value}                 Centimeter
${sku}                        10
${cost_price}                 100
${opening_stock}              50
${item_vendor}                Raman Mehra


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
    Validate Title of the Page  ${title_vendor}

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

Select Individual for New Vendor
    Select Frame    ${slider_new_iFrame}
    Scroll Page    0    -10000
    Click   ${vendor_type_individual}

Enter Individual Name
    Input Text in Textbox   ${vendor_fname}   ${vendor_first_name}
    Input Text in Textbox    ${vendor_mname}    ${vendor_mid_name}
    Input Text in Textbox    ${vendor_lname}    ${vendor_last_name}

Enter Individual Details - Address Phone Number Email Website
    Input Text in Textbox    ${vendor_email}     ${vendor_mail}
    Input Text in Textbox    ${vendor_phone_ib}    ${vendor_ph_nbr}
    Input Text in Textbox    ${vendor_website}     ${vendor_web}
    Input Text in Textbox    ${vendor_add1}     ${vendor_addr1}
    Input Text in Textbox    ${vendor_add2}     ${vendor_addr2}
    Input Text in Textbox    ${vendor_city}    ${vendor_cty}
    Input Text in Textbox    ${vendor_zip_code}    ${vendor_zcode}
    Select Value from Dropdown    ${vendor_state}    ${vendor_st_nm}
    Select Value from Dropdown    ${vendor_country}     ${vendor_cntry}
    
Click Create New Vendor Button
    Click    ${vendor_create_btn} 

Click Item Groups Tab
    Click  ${item_groups}

Validate Page loaded is Item Groups Home Page
    Validate Title of the Page  ${title_item_groups}

Verify Name is Present on Card for Item Groups
    Verify element text is not blank    ${item_group_name}

Verify Status is present on Card for Item Group
    Verify Element Contains Some Text   ${item_group_dtls}  Status

Verify Created By is present on Card for Item Group
    Verify Element Contains Some Text   ${item_group_dtls}  Created By

Verify Created Date is present on Card for Item Group
    Verify Element Contains Some Text   ${item_group_dtls}  Created Date

Verify Add New Item Group is Present on the Page
    Validate Page Contains Element   ${item_group_add_new_btn}

Click Add New Item Group Button
    Click  ${item_group_add_new_btn}

Verify Add New Item Group Frame is Displayed
    Verify Element Contains Specific Text  ${item_group_new_group_dtls}    Item Group

Enter Name for New Item Group
   Select Frame    ${slider_new_iFrame}
   Input Text in Textbox    ${item_group_new_grp_name}    ${new_group_name}

Enter Description for New Item Group
    Input Text in Textbox  ${item_group_new_grp_desc}   ${new_group_desc}
    
Click Create Button New Item Group 
    Click    ${item_group_create_btn}
    
Validate New Item has been created
    Page Should Contain Element    ${new_group_name_lnk}
    Page Should Contain Element    ${new_group_desc_vld}

Click Items Tab
    Click    ${items}

Click Add New Item Button
    Click    ${items_add_new_btn}
    
Enter Item Details - Name Description Item Group Unit
    Select Frame    ${slider_new_iFrame}
    Input Text in Textbox    ${item_name}    ${new_group_name}
    Input Text in Textbox    ${item_description}   ${new_group_desc}
    Select Value from Dropdown    ${item_grp_select}     ${new_group_name}
    Select Value from Dropdown    ${items_unit}     ${unit_value}
    Input Text in Textbox    ${items_sku}      ${sku}
    Input Text in Textbox    ${items_cost_price}    ${cost_price}
    Input Text in Textbox    ${items_opening_stock}    ${opening_stock}
    
Click Create Button to Create New Item
    Click    ${item_create_btn}
    Log    New Item ${new_group_name} has been created!
    
Search for the Newly Created Item
    Input Text in Textbox    ${item_search_bar}    ${new_group_name}
    Click    ${item_search_go}

Validate Details for the Newly Created Element
    Verify Element Contains Specific Text    ${item_grp_name_v}    ${new_group_name}
    Verify Element Contains Specific Text    ${item_name_v}    ${new_group_name}
    Verify Element Contains Specific Text    ${item_desc_v}    ${new_group_desc}
    Log    ${new_group_name} details are correct!

Deleting The Newly Created Item
    Click    ${item_name_v}
    Select Frame    ${slider_new_iFrame}
    Click    ${item_delete_btn}
    Unselect Frame
    Click  ${delete_conf}


Searching for the Deleting Item to make sure it is deleted
    Click    ${item_search_clr}
    Input Text in Textbox    ${item_search_bar}    ${new_group_name}
    Click    ${item_search_go}
    ${result_text}=  Get Text    ${item_no_match}
    Should Be Equal    ${item_no_match}    No data found
    Log    ${new_group_name} has been deleted!

Click Finished Goods Tab
    Click    ${finished_goods}
    
Click Add New Finished Goods Button
    Click    ${fg_add_new_btn}

Enter Finished Good Details
    Input Text in Textbox    ${fg_name}    SKYRISER AUTO
    Input Text in Textbox    ${fg_desc}     Skyriser 43"
    Input Text in Textbox    ${fg_serial_no}    227690
    Select Value from Dropdown    ${fg_manufacturer}    BANILLA
    Select Value from Dropdown    ${fg_game_name}    SKYRISER
    Input Text in Textbox    ${fg_cost_price}    12000
    Input Text in Textbox    ${fg_notes}     Purchased on 01/01/2010 from Banilla for a new Location PETRO LLC
    Click    ${fg_finished_cb}

 Click Create Button for Finished Goods
    Click    //*[@id="B11974396553610832"]
    Sleep    3s

Search for Newly Created Finished Group
    Input Text in Textbox    ${fg_search_bar}    SKYRISER AUTO
    Press Keys  ${fg_search_bar}    ENTER
    Click    ${fg_search_go}
    Verify Element Contains Specific Text    ${fg_srch_name}     SKYRISER AUTO
    Verify Element Contains Specific Text    ${fg_srch_Sno}    227690
    Verify Element Contains Specific Text    ${fg_srch_manuf}    BANILLA
    Log    SKYRISER AUTO finished good is created successfully!

Click Inventory Adjustment Tab
    Click    ${inventory_adjustment}

Check User is landed on Inventory Adjustment Page
    Validate Title of the Page  Inventory Adjustment
    
Check Page Contains Adjustment Date Reason & Description
    Verify Element Contains Specific Text    ${inventory_adjsmnt_dt}    Adjustment Date
    Verify Element Contains Specific Text    ${inventory_adjsmnt_rsn}     Reason
    Verify Element Contains Specific Text    ${inventory_adjsmnt_dsc}    Description

Check Page Contains Add Adjustment Button
    Page Should Contain Element    ${inventory_add_adjstmnt}
    
Click Add Adjustment Button
    Click    ${inventory_add_adjstmnt}

Select the Adjustment Date
    Click    ${adjustment_date}
    Input Text in Textbox    ${adjustment_date}     05/06/2023

Enter Reason & Description for Inventory Adjustment
    Input Text in Textbox    ${adjustment_reason}    Purchased Skyriser on 01/01/2020
    Input Text in Textbox    ${adjustment_desc}    Purchased Skryriser from Banilla on 01/01/2020

Select Item Group Item & Quantity Adjusted for Adjustment
    Select Value from Dropdown    ${adjustment_vendor}    Raman Test
    Click    ${item_search_box}
    Input Text in Textbox    ${item_search_po}     New Item
    Press Keys  ${item_search_po}    ENTER





