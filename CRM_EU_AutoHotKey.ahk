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

