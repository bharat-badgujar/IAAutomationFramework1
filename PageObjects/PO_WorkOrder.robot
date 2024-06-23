*** Variables ***

${work_order_tab}                        //*[@id="t_TreeNav_6"]/span
${svc_call_tab}                          //a[contains(text(),'Service Call')]

${date_range}                            //*[@id="P32_DATE_RANGE_LABEL"]
${status_label}                          //*[@id="P32_STATUS_LABEL"]
${type_label}                            //*[@id="P32_SERVICE_TYPE_LABEL"]
${location_label}                        //*[@id="P32_LOCATION_LABEL"]
${game_label}                            //*[@id="P32_GAME_LABEL"]
${search_btn}                            //*[@id="B22898902906712024"]/span
${download_btn}                          //*[@id="B22898902906712024"]/span
${add_new_svc_call}                      //*[@id="B22980315201746057"]
${service_call_frame}                    //*[@id="apex_dialog_1"]/iframe
${service_call_type}                     //*[@id="P31_SERVICE_CALL_TYPE"]
${location_container}                    //*[@id="P31_LOCATION"]
${game_dropdown_multi}                   P31_GAME_MULTIPLE
${game_dropdown_single}                  //*[@id="P31_GAME_SINGLE"]
${contact_name}                          //*[@id="P31_CONTACT"]
${reason_text}                           //*[@id="P31_REASON"]
${upload_btn}                            //*[@id="P31_FILE_UPLOAD_input"]
${create_btn}                            //*[@id="B54110251456282100"]/span


${wo#_card}                              //a[contains(text(),'WO#')]
${priority_disp}                         //*[@id="priority-H"]
${view_details}                          //*[@id="serviceCards_Cards"]//span[@class='a-CardView-buttonLabel']
${contact_label}                         //*[text()="Contact:"]
${location_label_2}                      //*[text()="Location:"]
${address_label}                         //*[text()="Address:"]
${game_label_2}                          //*[text()="Game:"]
${desc_label}                            //*[text()="Description:"]
${created_by_label}                      //span[contains(text(),'Created By')]
${created_date_label}                    //span[contains(text(),'Created Date')]
${last_modified_by}                      //span[contains(text(),'Last Modified By')]
${last_modified_date}                    //span[contains(text(),'Last Modified Date')]

${svc_log_info}                          //button[contains(text(),'Service Log Info')]
${svc_files}                             //button[contains(text(),'Service FIles')]
${svc_details}                           //button[contains(text(),'Service Details')]
${svc_machine_info}                      //button[contains(text(),'Service Machine Info')]
${svc_log}                               //button[contains(text(),'Service Log')]
${svc_checklist}                         //button[contains(text(),'Checklist')]

${svc_call_type}                         //*[text()="Sevice Call Type"]//following::span[1]
${location}                              //*[text()="Location"]//following::span[1]
${license_no}                            //*[text()="Licence No"]//following::span[1]
${reason}                                //*[text()="Reason"]//following::span[1]
${description}                           //*[text()="Description"]//following::span[1]
${address}                               //*[text()="Address"]//following::span[1]
${game_name}                             //*[text()="Game"]//following::span[1]
${svc_call_status}                       //*[@id="P33_STATUS"]
${svc_call_cont}                         //*[@id="P33_CONTACT"]
${svc_call_priority}                     //*[@id="P33_PRIORITY"]

${ft_in_person}                          //label[text()="In-Person"]
${ft_over_phone}                         //label[text()="Over the phone"]
${svc_dtls_notes}                        //*[@id="P33_FIX_TYPE_NOTES"]

${upload_date}                           //*[@id="ig_service_files_ig_grid_vc"]/div[3]/div[3]/table/tbody/tr/td[3]

${smi_game}                              //*[@id="P33_GAME"]
${smi_manufacturer}                      //*[@id="P33_MANUFACTURER"]
${smi_port_no}                           //*[text()="Port No"]
${smi_asset_no}                          //*[text()="Asset No"]
${smi_decal_no}                          //*[text()="Decal No"]
${smi_difficulty}                        //*[text()="Difficulty"]
${smi_serial_no}                         //*[text()="Serial No"]
${smi_seal_no}                           //*[text()="Seal No"]
${smi_notes}                             //*[@id="P33_NOTES_CONTAINER"]
${smi_item_grp}                          //*[text()="Item Group"]
${smi_raw_item}                          //*[text()="Raw Item"]

${cancel_btn}                            //*[@id="B23054854520914785"]/span
${apply_changes}                         //*[@id="B23055270269914786"]/span

${fg_name_dd}                             P33_FG_ITEM

