*** Variables ***
#POs defined for Import EFT page

${ImpEFT_tab}                   //a[contains(text(),'Import EFT')]
${ImpEFT_EFT_radio}             //*[@id="P5_CSV_UPLOAD_TYPE"]/div/div/div[1]/label
${ImpEFT_EFTComm_radio}         //*[@id="P5_CSV_UPLOAD_TYPE_1"]
${ImpEFT_UpldFile}              //*[@id="P5_FILE_UPLOAD_input"]
${ImpEFT_UpldEFT_btn}           //*[@id="B9371585830318446"]
${ImpEFT_ImportLog_btn}         //*[@id="B12265001168125539"]/span[2]

${ImpEFT_ImpLog_EFTComm}        //*[@id="P7_EFT_TYPE"]/div/div/div[2]/label
${ImpEFT_ImpLog_Back_btn}       //*[@id="B12265842324125547"]
${ImpEFT_ImpLog_FilNam}         //*[@id="C12265132874125540_HDR"]
${ImpEFT_ImpLog_CreDate}        //*[@id="C12265429684125543_HDR"]
${ImpEFT_ImpLog_NofRec}         //*[@id="C12265553159125544_HDR"]
${ImpEFT_ImpLog_Period}         //*[@id="C12265658439125545_HDR"]
${ImpEFT_ImpLog_EFTDwnld}       //*[@id="ig_import_log_ig_grid_vc"]/div[3]/div[3]/table/tbody/tr[1]/td[5]/a
${ImpEFT_ImpLog_EFTCommDwnld}   //*[@id="ig_import_commission_log_ig_grid_vc"]/div[3]/div[3]/table/tbody/tr[1]/td[5]/a

