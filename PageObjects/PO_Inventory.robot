*** Variables ***
#Xpaths defined for Inventory Page

${inventory_tab}                  //*[@id="t_TreeNav_5"]/span
${vendor}                         //a[contains(text(),'Vendor')][1]
${item_groups}                    //a[contains(text(),'Item Groups')]
${items}                          //a[contains(text(),'Items')]
${finished_goods}                 //a[contains(text(),'Finished Goods')]
${vendor_item_mapping}            //a[contains(text(),'Vendor Item Mapping')]
${inventory_adjustment}           //a[contains(text(),'Inventory Adjustment')]
${stock_detail_report}            //a[contains(text(),'Stock Detail Report')]

${vendor_card_name}               //*[@id="card_vendor_Cards"]/div/div[3]/ul/li[1]/div/div[1]
${vendor_card_email}              //*[@id="card_vendor_Cards"]/div/div[3]/ul/li[1]/div/div[2]/div[1]/strong[1]
${vendor_card_phone}              //*[@id="card_vendor_Cards"]/div/div[3]/ul/li[1]/div/div[2]/div[1]/strong[2]
${vendor_card_website}            //*[@id="card_vendor_Cards"]/div/div[3]/ul/li[1]/div/div[2]/div[1]/strong[3]
${vendor_add_new_btn}             //*[contains(text(),'Add New Vendor')]
${vendor_new_vendor_dtls}         //*[@class='ui-dialog-title']
${vendor_container}               //*[@id="P22_VENDOR_TYPE_CONTAINER"]
${vendor_type_company}            //*[contains(text(),'Company')]
${vendor_type_individual}         //*[@id="P22_VENDOR_TYPE"]/div/div/div[2]/label
${vendor_fname}                   //*[@id="P22_FIRST_NAME"]
${vendor_mname}                   //*[@id="P22_MIDDLE_NAME"]
${vendor_lname}                   //*[@id="P22_LAST_NAME"]
${vendor_email}                   //*[@id="P22_EMAIL"]
${vendor_website}                 //*[@id="P22_WEBSITE"]
${vendor_phone_ib}                //input[@id="P22_PHONE_NUMBER"]
${vendor_add1}                    //*[@id="P22_ADDRESS"]
${vendor_add2}                    //*[@id="P22_ADDRESS2"]
${vendor_city}                    //*[@id="P22_CITY"]
${vendor_zip_code}                //*[@id="P22_ZIP_CODE"]
${vendor_state}                   //*[@id="P22_STATE_CODE"]
${vendor_country}                 //*[@id="P22_COUNTRY_CODE"]
${vendor_create_btn}              //*[@id="B21005821692027227"]/span

${item_group_name}                //*[@id="card_vendor_Cards"]/div/div[3]/ul/li[1]/div/div[1]/div[2]/h3/a
${item_group_dtls}                //*[@id="card_vendor_Cards"]/div/div[3]/ul/li[1]/div/div[2]/div/p
${item_group_add_new_btn}         //*[contains(text(),'Add Item Group')]
${item_group_new_group_dtls}      //*[@class='ui-dialog-title']
${slider_new_iFrame}              //*[@id="apex_dialog_1"]/iframe
${item_group_new_grp_name}        //div[@class="t-Form-itemWrapper"]//input[@id="P24_GROUP_NAME"]
${item_group_new_grp_desc}        //div[@class="t-Form-itemWrapper"]//*[@id="P24_GROUP_DESC"]
${item_group_create_btn}          //*[@id="B21477385256621942"]/span

${items_add_new_btn}              //*[contains(text(),'Add New Item')]
${item_name}                      //*[@id="P26_ITEM_NAME"]
${item_description}               //*[@id="P26_ITEM_DESC"]
${item_grp_select}                //*[@id="P26_ITEM_GROUP"]
${items_unit}                     //*[@id="P26_UNIT"]
${items_sku}                      //*[@id="P26_SKU"]
${items_vendor}                   //*[@id="P26_VENDORS"]
${item_vendor_pop}                //*[@id="PopupLov_26_P26_VENDORS_dlg"]/div[1]/input
${items_cost_price}               //*[@id="P26_COST_PRICE"]
${items_opening_stock}            //*[@id="P26_OPENING_STOCK"]
${item_create_btn}                //*[@id="B21611597584110769"]/span
${item_search_bar}                //*[@id="ig_items_ig_toolbar_static_search"]
${item_search_go}                 //*[@id="ig_items_ig_toolbar_static_search"]
${item_search_clr}                //*[@id="ig_items_ig_toolbar_clear_search"]
${item_grp_name_v}                //*[@id="ig_items_ig_grid_vc"]/div[3]/div[3]/table/tbody/tr/td[2]
${item_name_v}                    //*[@id="ig_items_ig_grid_vc"]/div[3]/div[3]/table/tbody/tr/td[3]
${item_desc_v}                    //*[@id="ig_items_ig_grid_vc"]/div[3]/div[3]/table/tbody/tr/td[4]
${item_delete_btn}                //*[@id="B14744540477630347"]
${item_no_match}                  //*[@id="ig_items_ig_grid_vc_no_msg"]

${fg_add_new_btn}                 //*[contains(text(),'Add New Finished Goods')]
${fg_name}                        //*[@id="P53_ITEM_NAME"]
${fg_desc}                        //*[@id="P53_ITEM_DESC"]
${fg_serial_no}                   //*[@id="P53_SKU"]
${fg_manufacturer}                //*[@id="P53_MANUFACTURER"]
${fg_game_name}                   //*[@id="P53_GAME_GROUP"]
${fg_vendor}                      //*[@id="P53_VENDORS_CONTAINER"]/div[2]/div/div/ul
${fg_cost_price}                  //*[@id="P53_COST_PRICE"]
${fg_notes}                       //*[@id="P53_NOTES"]
${fg_item_grp}                    //*[@id="ig_finished_goods_id_ig_grid_vc_cur"]
${fg_raw_item}                    //*[@id="ig_finished_goods_id_ig_grid_vc"]/div[3]/div[3]/table/tbody/tr/td[3]
${fg_item_qty}                    //*[@id="ig_finished_goods_id_ig_grid_vc_cur"]
${fg_finished_cb}                 //*[@id="P53_FINISHED_Y_N"]
${fg_create}                      //*[@id="B11974396553610832"]
${fg_search_bar}                  //*[@id="ig_items_ig_toolbar_static_search"]
${fg_search_go}                   //*[@id="ig_items_ig_toolbar_static_search"]/span
${fg_srch_name}                   //*[@id="ig_items_ig_grid_vc_cur"]/a
${fg_srch_Sno}                    //*[@id="ig_items_ig_grid_vc"]/div[3]/div[3]/table/tbody/tr/td[3]
${fg_srch_manuf}                  //*[@id="ig_items_ig_grid_vc"]/div[3]/div[3]/table/tbody/tr/td[5]

${inventory_adjsmnt_dt}           //*[@id="C22219184633129319_HDR"]
${inventory_adjsmnt_rsn}          //*[@id="C22219255506129320_HDR"]
${inventory_adjsmnt_dsc}          //*[@id="C22219330543129321_HDR"]
${inventory_add_adjstmnt}         //*[@id="B22317378031535480"]
${adjustment_date}                //*[@id="P29_ADJUSTMENT_DATE_input"]
${adjustment_calendar}            //*[@id="P29_ADJUSTMENT_DATE_calendar"]
${adjustment_year}                //*[@id="P29_ADJUSTMENT_DATE_year"]
${adjustment_month}               //*[@id="P29_ADJUSTMENT_DATE_month"]
${adjustment_reason}              //*[@id="P29_REASON"]
${adjustment_desc}                //*[@id="P29_DESCRIPTION"]
${adjustment_vendor}              //*[@id="ig_items_ig_grid_vc_cur"]
${item_search_box}                //*[@id="ig_items_ig_grid_vc_cur"]
${item_search_po}                 //*[@id="PopupLov_29_C22219820356129326_dlg"]/div[1]/input


