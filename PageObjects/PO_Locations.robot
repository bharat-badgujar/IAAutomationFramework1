*** Variables ***
#Xpaths defined for Locations Page

${location_tab}              //a[contains(text(),'Locations')]
${all_btn}                   //a[contains(text(),'All')]
${draft_btn}                 //a[contains(text(),'Draft')]
${active_btn}                //a[contains(text(),'Active')]
${inactive_btn}              //a[contains(text(),'Inactive')]
${search_bar}                //input[@id="ig_location_ig_toolbar_static_search"]
${search_go_btn}             //button[@id="ig_location_ig_toolbar_static_search"]
${search_clr_btn}            //*[@id="ig_location_ig_toolbar_clear_search"]
${download_btn}              //*[@id="B17649630481232106"]
${location_name}             //*[@id="C9367382757318404_HDR"]
${license_no}                //*[@id="C10415400874488504_HDR"]
${address}                   //*[@id="C9367590168318406_HDR"]
${no_of_coams}               //*[@id="no_of_coams_col_HDR"]
${status}                    //*[@id="STATUS_HDR"]

${work_order_tab}            //*[@id="t_TreeNav_6"]/span
${new_install}               //a[contains(text(),'New Install')]
${install_btn}               //*[@id="B15230666648264075"]
${slider_frame}              //*[@id="apex_dialog_1"]/iframe
${location_nam}              //*[@id="P3_LOCATION_NAME"]
${licence_no}                //*[@id="P3_LICENSE_NO"]
${installation_dt}           //*[@id="P3_INSTALLATION_DATE_input"]
${cont_strt_dt}              //*[@id="P3_CONTRACT_START_DATE_input"]
${dur_years}                 //*[@id="P3_DURATION_YEARS"]
${dur_months}                //*[@id="P3_DURATION_MONTHS"]
${notice_prd}                //*[@id="P3_NOTICE_PERIOD"]
${location_type}             //*[@id="P3_LOCATION_TYPE"]
${notes}                     //*[@id="P3_NOTE"]

${draft_loc_name}            //*[contains(text(),'Draft')]//preceding::a[2]
${loc_hdr}                   //*[@id="locationInfo-name"]/span
${new_link_btn}              //*[@id="linkMachine"]
${slider_link_frame}         //*[@id="apex_dialog_1"]/iframe
${fg_name_dropdown}          //*[@id="P9_ITEM_FG"]
${manuf_cont}                //*[@id="P9_MANUFACTURER_CONTAINER"]
${game_name2}                //*[@id="P9_GAME_GROUP_ID_CONTAINER"]
${game_code}                 //*[@id="P9_GAME_CONTAINER"]
${port_no_dropdown}          //*[@id="P9_COAM_NO"]
${status_lbl}                //*[@id="P9_STATUS_LABEL"]
${seal_no}                   //*[@id="P9_SEAL_NO"]
${serial_no}                 //*[@id="P9_SERIAL_NO"]
${asset}                     //*[@id="P9_ASSET_NO"]
${decal}                     //*[@id="P9_DECAL_NO"]
${difficulty}                //*[@id="P9_DIFFICULTY"]
${jackpot_val}               //*[@id="P9_JACKPOT_VALUE"]
${order_no}                  //*[@id="P9_ORDER_NUMBER"]
${item_grp_tbl}              //*[@id="ig_finished_goods_id_ig_grid_vc"]/div[4]/div[3]/table/tbody/tr[1]
${link_btn}                  //*[@id="B14422469286714123"]
${linked_fg_name}            //*[@id="13906850711515232"]/tbody/tr[2]/td[1]/a

${active_loc}                //*[contains(text(),'DUMMY')][1]
${map_icon}                  //*[@id="locationInfo-map"]/a/img

${machine_info}              //*[@id="machine_info_head_tab"]/a/span
${contract_info}             //*[text()="Contract Info"]
${service_info}              //*[text()="Service Info"]
${contact_details}           //*[text()="Contact Details"]
${license_&_videos}          //*[text()="License & Videos"]
${inspection_info}           //*[text()="Inspection Info"]

${machine_num}               //*[@id="C14744459284630346_HDR"]
${fg_name_hdr}               //*[@id="C13285814375690646_HDR"]
${manufacturer}              //*[@id="C19625412975339825_HDR"]
${game_hdr}                  //*[@id="C19625575599339826_HDR"]
${port_no}                   //*[@id="C17764370582221349_HDR"]
${status_hdr}                //*[@id="C17764271128221348_HDR"]
${asset_no}                  //*[@id="C17764409297221350_HDR"]
${decal_no}                  //*[@id="C17840984837325301_HDR"]

${game_name}                 //a[@class="game_col"][1]
${save_btn}                  //*[@id="B17615715442408424"]
${cancel_btn}                //*[@id="B17615551008408422"]

${locations_eft}             //*[text()='EFT'][1]
${location_eft_hdr}          //h1[@class="t-Breadcrumb-label"]

${contract_info_tab}         //*[text()="Contract Info"][1]
${location_type2}            //*[@id="P4_LOCATION_TYPE"]
${no_of_coams2}              //*[@id="P4_NO_OF_COAMS"]
${save_changes_btn}          //*[@id="B10485915735751251"]
${notes_2}                   //*[text()="Notes"][2]

${contract_st_dt}            //*[@id="P4_CONTRACT_START_DATE_input"]
${dura_yrs}                  //*[@id="P4_DURATION_YEARS"]
${dura_mths}                 //*[@id="P4_DURATION_MONTHS"]
${contract_end_dt}           //input[@id="P4_CONTRACT_END_DATE" and @class="text_field apex-item-text"]
${not_prd_days}              //*[@id="P4_NOTICE_PERIOD"]

${auto_renewal_tg}           //*[@id="P4_AUTO_RENEWAL_CONTAINER"]/div[2]/div[2]/span/span
${auto_renewal_yr}           //*[@id="P4_AUTO_RENEWAL_YEARS"]
${auto_renewal_mt}           //*[@id="P4_AUTO_RENEWAL_MONTHS"]
${active_coams}              //*[@id="P4_NO_OF_COAMS"]
${upload_btn}                //*[@id="P4_FILE_UPLOAD_input"]
${uploaded_file}             //*[@id="contractAttachments_ig_grid_vc_cur"]
${view}                      //*[@id="contractAttachments_ig_grid_vc_cur"]/a/i[1]
${file_type}                 P4_FILE_TYPE
${status_toggle}             //*[@id="P4_STATUS_CONTAINER"]/div[2]/div[2]/span/span

${upload_delete}             //*[@id="contractAttachments_ig_grid_vc_cur"]/a

${new_notes}                 //*[@id="B22081001092130534"]
${notes_desc}                //*[@id="P4_NOTE_DESC"]
${note_save_btn}             //*[@id="B22082482156130548"]/span
${note_header}               //*[@id="noteHeader"]

${inactive_header}           P4_DUE_IN_DISPLAY

${work_order_#}              //*[@id="C22887736418815118_HDR"]
${service_call_type}         //*[@id="C15411309335780727_HDR"]
${reason}                    //*[@id="C22887839296815119_HDR"]
${status_svc_info}           //*[@id="C22887249557815113_HDR"]
${priority}                  //*[@id="C22887983892815120_HDR"]
${created_by}                //*[@id="C22887576279815116_HDR"]
${created_date}              //*[@id="C22887630221815117_HDR"]

${first_WO#}                 //*[@id="R17483511222899741_ig_grid_vc_cur"]/a

${slider_frame_cont}         //*[@id="apex_dialog_1"]/iframe
${add_new_contact}           //*[@id="addContact"]/span[2]
${contact_name}              //*[@id="P30_NAME"]
${contact_email}             //*[@id="P30_EMAIL"]
${contact_phone}             //*[@id="P30_PHONE"]
${create_contact}            //*[@id="B22658628509654958"]/span
${set_primary}               //*[text()="Set Primary"]/preceding::input[1]
${send_eft_msg}              //*[text()="Send EFT Message"]/preceding::input[1]
${provide_app_access}        //*[text()="Provide Application Access"]/preceding::input[1]
${save_contact}              //*[@id="B22659477194654959"]/span
${contact_pwd}               //*[@id="P30_PASSWORD"]

${primary_cont_name}         //*[@id="locationInfo-contact"]/span
${primary_cont_ph}           //*[@id="locationInfo-contactNo"]/span


${lic_vid_doc}               //*[@id="R11975126729610840_ig_grid_vc_cur"]

${ii_in#}                    //*[@id="C18697728455750034_HDR"]
${ii_reason}                 //*[@id="C18697943690750036_HDR"]
${ii_status}                 //*[@id="C18698093312750037_HDR"]
${ii_priority}               //*[@id="C18698124654750038_HDR"]
${ii_created_by}             //*[@id="C18698222416750039_HDR"]
${ii_created_date}           //*[@id="C18698351384750040_HDR"]
${ii_done_by}                //*[@id="C8987293354249742_HDR"]
${ii_done_on}                //*[@id="C8987330965249743_HDR"]

${first_IN#}                 //*[@id="R18697561372750032_ig_grid_vc_cur"]/a




