Gui, Font, cWhite
Gui, Font, s10, Verdana
Gui, Add, Text, x10 y10, Use the AutoHotKey Definitions Excel sheet to find
Gui, +AlwaysOnTop
Gui, Color, Black
Gui, Add, Text, x10 y30, applicable shortcuts.
Gui, +AlwaysOnTop
Gui, Color, Black
Gui, Show, x800 y50 w370 h120, CRM Autocorrect

FormatTime, CurrentDateTime,, dd MMM yyyy
FormatTime, CurrentDatePD,, MM/dd/yy

Gui, Font, s14, Courier New
Gui, Add, Button, x35 y80 w300 h30 gTerminate, Press to End Autocorrect
Return

GuiClose:
ExitApp
Return

Terminate:
ExitApp
Return

^!r::Reload   ; Reload script with Ctrl+Alt+R

::h::
SendInput sgsdfg
Return

::.prodinfo::
SendInput Can you please provide the serial number of the device? `n`nDoes the physician allege a malfunction on the device? If so, what? `n`nWhat does the physician believe was the cause of this event?`n`nWhat are the dates of implant and explant? `n`nWill the device be returned for analysis? If not, please provide a justification as to why it will not be returned.
Return

::.sn::
SendInput Can you please provide the serial number of the device? If it is unknown, please provide a justification as to why.
Return

::.implant::
SendInput What is the implant date of the device?  If it is unknown, please provide a justification as to why.
Return

::.explant::
SendInput What is the explant date of the device?  If it is unknown, please provide a justification as to why.
Return

::.return::
SendInput Will the device be returned for analysis? If not, please provide a justification as to why it will not be returned.
Return

::.mal::
SendInput Does the physician allege a malfunction on the device? If so, what?
Return

::.cause::
SendInput What does the physician believe was the cause of this event? 
Return

::.oldreturn::
SendInput Can you please confirm the device will still be returned for analysis? If so, please provide the tracking number for the return. If not, please provide a justification as to why it will not be returned.
Return

::.customerinfo::
SendInput Can you please provide the first name, last name, and title of the healthcare professional for this event?`n`nWhat is the name, address, city, and phone number of the hospital or clinic? 
Return

::.dr::
SendInput Can you please provide the first name, last name, and title of the healthcare professional for this event?
Return

::.clinic::
SendInput What is the name, address, city, and phone number of the hospital or clinic? 
Return

::.eventinfo::
SendInput Where was this event observed (in-clinic, during procedure, remotely, etc.)?`n`nHow was this event resolved (reprograming, currently being monitoring, etc.)?`n`nWhat was the condition of the patient following this event (stable, etc.)? `n`nDid the patient experience any adverse health consequences?`n`nWhat is the date of this event?  If it is unknown, please provide a justification as to why.`n
Return

::.obs::
SendInput Where was this event observed (in-clinic, during procedure, remotely, etc.)?
Return

::.res::
SendInput How was this event resolved (reprograming, currently being monitoring, etc.)?
Return

::.condition::
SendInput What was the condition of the patient following this event (stable, etc.)? `n`nDid the patient experience any adverse health consequences?
Return

::.ed::
SendInput What is the date of this event?  If it is unknown, please provide a justification as to why.
Return

::.perf::
SendInput What does the healthcare professional allege was the cause of the cardiac perforation?`n`nWere there any performance issues with any Abbott device(s)? Please provide the model and/or serial number of the device.`n`nWas any intervention/treatment administered to treat the cardiac perforation?
Return

::.perfcause::
SendInput What does the healthcare professional allege was the cause of the cardiac perforation (which device)? Were there any performance issues with any Abbott device(s)? Please provide the model and/or serial number of the device.
Return

::.perftreatment::
SendInput Was any intervention/treatment administered to treat the cardiac perforation?
Return

::.inf::
SendInput How was the infection identified?`n`nWas the infection a pocket or systemic infection? `n`nHow was the infection treated?`n`nAccording to the physician, is the infection related to the procedure? Is it realted to the device?
Return

::.inffound::
SendInput How was the infection identified?
Return

::.inftype::
SendInput Was the infection a pocket or systemic infection?
Return

::.inftreatment::
SendInput How was the infection treated?
Return

::.infcause::
SendInput According to the physician, is the infection related to the procedure? Is it realted to the device?
Return

::.start::
SendInput Hello,`n`nCan you please assist with this investigation by answering the following questions? If you are unable to provide sufficient information to any of these questions please provide a justification as to why you are unable to.
Return

::.nore::
SendInput The product return status was checked from "Yes/Unk" to "No" as a part of record closures. If additional information is received the record will be reopened and reassessed.
Return

::.fup::
SendInput Thank you for the information. As we are waiting on the customer/site to determine the next course of action, the file will be closed. If additional information is received, it will be reviewed and assessed.
Return

::.clinicalstudy::
SendInput Is the patient part of a clinical study? If so, please provide the clinic name and patient ID.
Return

::.addinfo::
SendInput Is there any additional information regarding the event?
Return

::.lateper::
SendInput Can you provide justification for the complaint being sent more than 2 days after the aware date?
Return

::.mn::
SendInput model number
Return

::.emailtss::
SendInput %CurrentDateTime% J. Peterson: The following questions were sent to Technical Support on %CurrentDateTime% via email:
Return

::.emailtsr::
SendInput %CurrentDateTime% J. Peterson: The following response was received from Technical Support on %CurrentDateTime% via email:
Return

::.email3::
SendInput %CurrentDateTime% J. Peterson: The following questions were sent by Postmarket Surveillance Supervisor Jennifer Caquelin to sales representative Patrick Sabourin on %CurrentDateTime% via email:
Return

::.emails::
SendInput %CurrentDateTime% J. Peterson: The following questions were sent to sales representative Uli Storz on %CurrentDateTime% via email:
Return

::.emailr::
SendInput %CurrentDateTime% J. Peterson: The following response was received from sales representative Uli Storz on %CurrentDateTime% via email:
Return

::.just::
SendInput If you cannot provide these answers, please provide the reason why (required per PPG procedure).`n`nIf you can provide the answers but they are not yet available, please respond in the comm hub to state the next time you will follow up with the customer.`n
Return

::.end::
SendInput If you cannot provide these answers, please provide the reason why (required per PPG procedure).`n`nIf you can provide the answers but they are not yet available, please respond in the comm hub to state the next time you will follow up with the customer.`n`nThanks,`nJake`n
Return

::nc::
SendInput This does not meet the definition of a complaint.
Return

::capas::
SendInput Based on the information available at this time the specific complaint file covered by this investigation does not warrant CAPA escalation individually. If new information is received the need for corrective action will be reassessed. Device complaints will be monitored through tracking and trending and escalated to CAPA when appropriate.
Return

::capanum::
SendInput CAPA (XXXXX) has been issued to address this condition.
Return

::nocapa::
SendInput No CAPA required as this event does not meet the definition of complaint.
Return

::ncnd::
SendInput The reported event of (XXX) could not be confirmed. The event was resolved by (XXX). The results of the investigation are inconclusive since the device was not returned for analysis. Based on the information received the cause of the reported incident could not be conclusively determined.
Return

::cnd::
SendInput The reported event of (XXX) could be confirmed. The event was resolved by (XXX). The results of the investigation are inconclusive since the device was not returned for analysis. Based on the information received the cause of the reported incident could not be conclusively determined.
Return

::arnc::
SendInput Analysis reviewed. Remains NRC. %CurrentDatePD%. JP?
Return

::arrc::
SendInput Analysis reviewed. No change in reportability, follow-up MDR required. %CurrentDatePD%. JP?
Return

::chrnc::
SendInput CHR- SN - Complaint History Review performed on %CurrentDatePD% revealed no prior complaints on this product. JP
Return

::chrsnu::
SendInput CHR- SN Unknown- A Complaint History Review could not be performed on %CurrentDatePD% as the identifying serial number is not known. JP
Return

::chrnsn::
SendInput CHR- A Complaint History Review could not be performed on %CurrentDatePD% as the product does not have an identifying serial number. JP
Return

::chrurc::
SendInput CHR- SN - Complaint History Review performed on %CurrentDatePD% revealed a prior complaint of [] in [] on this product and is unrelated to this complaint. JP
Return

::chrrc::
SendInput CHR- SN - Complaint History Review performed on %CurrentDatePD% revealed a prior complaint of [] in [] and the complaints are most likely related. JP
Return

::chrukr::
SendInput CHR- SN - Complaint History Review performed on %CurrentDatePD% revealed a prior complaint of [] in [] but it is unknown if there is a relationship between these complaints. JP
Return

::over90::
SendInput %CurrentDateTime% JP: File open greater than 90 days. This file is awaiting: Product return, product analysis, Final MDR, customer letter
Return

::pdr::
SendInput %CurrentDatePD% JP Return
Return

::pdt::
SendInput %CurrentDatePD% JP RCIT Ticket Resolution #
Return

::pdg::
SendInput %CurrentDatePD% JP GFE
Return

::pda::
SendInput %CurrentDatePD% JP Analysis
Return

::pdu::
SendInput %CurrentDatePD% JP Update in Comm Hub
Return

::pdrv::
SendInput %CurrentDatePD% JP Review
Return

::pdi::
SendInput %CurrentDatePD% JP Initiate
Return

::pdl::
SendInput %CurrentDatePD% JP Letter
Return

::pdrt::
SendInput %CurrentDatePD% JP Report
Return

::ncyes::
SendInput The complaint yes button was clicked in error as the event does not meet the definition of a complaint.
Return

::nrci::
SendInput The complaint of a communication issue on an external product is non-reportable since the complaint does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore it is not likely to cause or contribute to death or serious injury.
Return

::nrdi::
SendInput A touch screen anomaly with no report of serious injury or death is a nonreportable complaint since the complaint or malfunction does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore a touch screen anomaly is not likely to cause or contribute to death or serious injury.
Return

::nrss::
SendInput The complaint of system slow on an external product is non-reportable since the complaint does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore it is not likely to cause or contribute to death or serious injury.
Return

::nrem::
SendInput The complaint of an error message on an external product is non-reportable since the complaint does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore it is not likely to cause or contribute to death or serious injury.
Return

::nrni::
SendInput The complaint of a network issue on an external product is non-reportable since the complaint does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore it is not likely to cause or contribute to death or serious injury.
Return

::nrftsu::
SendInput If an external product will not power-up it is a nonreportable complaint since the complaint and/or malfunction does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore an external that will not power-up is not likely to cause or contribute to death or serious injury.
Return

::nrtse::
SendInput A transmission send error is a nonreportable complaint since the complaint or malfunction does not involve a long-term implant or a device considered to be life supporting or life sustaining. Furthermore a transmission send error is not likely to cause or contribute to death or serious injury.
Return

::nrtre::
SendInput A transmission read error is a nonreportable complaint since the complaint or malfunction does not involve a long-term implant or a device considered to be life supporting or life sustaining. Furthermore a transmission read error is not likely to cause or contribute to death or serious injury.
Return

::nrui::
SendInput The complaint of an unspecified issue on an external product is non-reportable since the complaint does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore it is not likely to cause or contribute to death or serious injury. 
Return

::nrud::
SendInput The complaint of unspecified damage on an external product is non-reportable since the complaint does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore it is not likely to cause or contribute to death or serious injury. 
Return

::nride::
SendInput IDE products are reported through alternative reporting requirements per FDA regulation CFR 803.19 and do not require MDR reporting.
Return

::vnrci::
SendInput The complaint of a communication issue on an external product is non-reportable since the complaint does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore it is not likely to cause or contribute to death or serious deterioration in the state of health.
Return

::vnrdi::
SendInput A touch screen anomaly with no report of serious injury or death is a nonreportable complaint since the complaint or malfunction does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore a touch screen anomaly is not likely to cause or contribute to death or serious deterioration in the state of health.
Return

::vnrss::
SendInput The complaint of system slow on an external product is non-reportable since the complaint does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore it is not likely to cause or contribute to death or serious deterioration in the state of health.
Return

::vnrem::
SendInput The complaint of an error message on an external product is non-reportable since the complaint does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore it is not likely to cause or contribute to death or serious deterioration in the state of health.
Return

::vnrni::
SendInput The complaint of a network issue on an external product is non-reportable since the complaint does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore it is not likely to cause or contribute to death or serious deterioration in the state of health.
Return

::vnrftsu::
SendInput If an external product will not power-up it is a nonreportable complaint since the complaint and/or malfunction does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore an external that will not power-up is not likely to cause or contribute to death or serious deterioration in the state of health.
Return

::vnrtse::
SendInput A transmission send error is a nonreportable complaint since the complaint or malfunction does not involve a long-term implant or a device considered to be life supporting or life sustaining. Furthermore a transmission send error is not likely to cause or contribute to death or serious deterioration in the state of health.
Return

::vnrtre::
SendInput A transmission read error is a nonreportable complaint since the complaint or malfunction does not involve a long-term implant or a device considered to be life supporting or life sustaining. Furthermore a transmission send error is not likely to cause or contribute to death or serious deterioration in the state of health.
Return

::vnrui::
SendInput The complaint of an unspecified issue on an external product is non-reportable since the complaint does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore it is not likely to cause or contribute to death or serious deterioration in the state of health.
Return

::vnrud::
SendInput The complaint of unspecified damage on an external product is non-reportable since the complaint does not involve a long-term implant or a device considered to be life-supporting or life-sustaining. Furthermore it is not likely to cause or contribute to death or serious deterioration in the state of health.
Return

::arrdmdv::
SendInput %CurrentDateTime% J. Peterson: Additional regulatory report required per MedDev guidelines.
Return

::arrdni::
SendInput %CurrentDateTime% J. Peterson: Additional regulatory report required for new information received on %CurrentDateTime% indicating
Return

::arrdar::
SendInput %CurrentDateTime% J. Peterson: Additional regulatory report required for return and analysis results completed on %CurrentDateTime%
Return

::arrdcorrect::
SendInput %CurrentDateTime% J. Peterson: Additional regulatory report required for correction of explant date identified on %CurrentDateTime%
Return

::arrdretract::
SendInput %CurrentDateTime% J. Peterson: Additional regulatory report required for retraction of MDR report identified on %CurrentDateTime%
Return

::arrdchange::
SendInput %CurrentDateTime% J. Peterson: Initial regulatory report required following reportability change after reviewed with manager on %CurrentDateTime%
Return

::mnar::
SendInput The results/method and conclusion codes along with investigation results will be provided in the final report.
Return

::mnnr::
SendInput The results of the investigation are inconclusive since the device was not returned for analysis. Based on the information received, the cause of the reported incident could not be conclusively determined.
Return

::mnfi::
SendInput Further information was requested but not received.
Return

::ccd::
SendInput NFER@sjm.com
Return

::ccg::
SendInput Vigilanz_Germany@abbott.com
Return

::cci::
SendInput DG-APP-EPIQ-CC-ITA@sjm.com
Return

::ccf::
SendInput FERFR@sjm.com
Return

::ccswit::
SendInput DG-APP-EPIQ-CC-LIE@sjm.com
Return

::rmrn::
SendInput Related Manufacturer Reference Number:
Return

::mninf::
SendInput The sterilization records were reviewed and no evidence of abnormal sterilization cycle was found.
Return

::ivrs::
SendInput Abbott Initial Vigilance Report for PER-2019-0181130 REG MDV-2019-02782-01
Return

::fvrs::
SendInput Abbott Final Vigilance Report for PER-2019-0181130 REG MDV-2019-02782-01
Return

::fupvrs::
SendInput Abbott Follow-up Vigilance Report for PER-2019-0181130 REG MDV-2019-02782-01
Return

::ivrb::
SendInput Dear Madam/Sir, `n`nPlease find enclosed the Initial Vigilance Report Abbott ref. MDV-2019-02782-01. Please quote our reference number in any reply regarding this incident. `n`nSincerely, `n`nJake Peterson`n`nProduct Performance Group
Return

::fvrb::
SendInput Dear Madam/Sir, `n`nPlease find enclosed the Final Vigilance Report Abbott ref. MDV-2019-02782-01. Please quote our reference number in any reply regarding this incident. `n`nSincerely, `n`nJake Peterson`n`nProduct Performance Group
Return

::fupvrb::
SendInput Dear Madam/Sir, `n`nPlease find enclosed the Follow-up Vigilance Report Abbott ref. MDV-2019-02782-01. Please quote our reference number in any reply regarding this incident. `n`nSincerely, `n`nJake Peterson`n`nProduct Performance Group
Return

::jpe::
SendInput Jake.peterson@abbott.com
Return

::ppg::
SendInput Product Performance Group
Return

::dlong::
SendInput %CurrentDateTime%
Return

::dshort::
SendInput %CurrentDatePD%
Return

::rgs::
SendInput Returned goods.
Return

::raa::
SendInput Reviewed and approved. JP
Return

::rcf::
SendInput Copied from PER-2018-.
Return

::rhi::
SendInput This return will be handled in PER-2018-.
Return

