*** Variables ***
#Xpaths defined for NewInstall creation


${Workorder_Dropd} =     //*[@id="t_TreeNav_6"]/span
#${NewInstall_clk} =   //*[@id="t_TreeNav_25"]
${NewInstall_clk} =    //a[contains(text(),'New Install')]
${Install_btn} =   //*[@id="B15230666648264075"]/span[2]
#${LocName_inputTxt} =  //*[@id="P3_LOCATION_NAME"]
${AddLocation _Title} =    //*[@id="ui-id-1"]
${LocName_tb}=   //*[@id="P3_LOCATION_NAME"]
${Lic_No_tb} =   //*[@id="P3_LICENSE_NO"]
${Cancel_btn} =  //*[@id="B9351552018258550"]/span
${AddLoc_frame} =  //*[@id="apex_dialog_1"]/iframe
${Install_date_btn} =   //*[@id="P3_INSTALLATION_DATE"]/button/span
${Install_date_Select}  =    //*[@id="P3_INSTALLATION_DATE_calendar"]/div/table/tbody/tr[3]/td[3]/span
${Loc_address1} =   //*[@id="P3_ADDRESS"]
${Loc_city} =   //*[@id="P3_CITY"]
${Loc_zip} =    //*[@id="P3_ZIPCODE"]
${Loc_Notes} =  //*[@id="P3_NOTE"]
${Loc_Create} =    //*[@id="B9353776851258558"]/span


