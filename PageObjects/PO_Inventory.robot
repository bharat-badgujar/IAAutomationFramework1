*** Variables ***
#Xpaths defined for Inventory Page

${inventory_tab}              //*[@id="t_TreeNav_5"]/span
${vendor}                     //a[contains(text(),'Vendor')][1]
${item_groups}                //a[contains(text(),'Item Groups')]
${items}                      //a[contains(text(),'Items')]
${finished_goods}             //a[contains(text(),'Finished Goods')]
${vendor_item_mapping}        //a[contains(text(),'Vendor Item Mapping')]
${inventory_adjustment}       //a[contains(text(),'Inventory Adjustment')]
${stock_detail_report}        //a[contains(text(),'Stock Detail Report')]
${vendor_card_name}           //*[@id="card_vendor_Cards"]/div/div[3]/ul/li[1]/div/div[1]
${vendor_card_email}          //*[@id="card_vendor_Cards"]/div/div[3]/ul/li[1]/div/div[2]/div[1]/strong[1]
${vendor_card_phone}          //*[@id="card_vendor_Cards"]/div/div[3]/ul/li[1]/div/div[2]/div[1]/strong[2]
${vendor_card_website}        //*[@id="card_vendor_Cards"]/div/div[3]/ul/li[1]/div/div[2]/div[1]/strong[3]
${vendor_add_new_btn}         //*[contains(text(),'Add New Vendor')]
${vendor_new_vendor_dtls}     //*[@class='ui-dialog-title']
${vendor_container}           //*[@id="P22_VENDOR_TYPE_CONTAINER"]
${vendor_type_company}        //*[contains(text(),'Company')]
${vendor_type_individual}     //*[@class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required apex-item-wrapper apex-item-wrapper--has-initial-value apex-item-wrapper--radiogroup js-show-label" ]//child::input[@id="P22_VENDOR_TYPE_1"]
${company_name_ib}            //*[@id="P22_COMPANY_NAME"]

