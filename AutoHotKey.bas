Attribute VB_Name = "AutoHotKey"
Sub TextFile_Create()

Dim TextFile, i As Integer
Dim FilePath, Start_Script1, Start_Script2, UserName, Abbreviations, Temp As String

'General AHK interface
Start_Script1 = "Gui, Font, cWhite" & vbCrLf & "Gui, Font, s10, Verdana" & vbCrLf & "Gui, Add, Text, x10 y10, Use the AutoHotKey Definitions Excel sheet to find" & vbCrLf & "Gui, +AlwaysOnTop" & vbCrLf & "Gui, Color, Black" & vbCrLf & "Gui, Add, Text, x10 y30, applicable shortcuts." & vbCrLf & "Gui, +AlwaysOnTop" & vbCrLf & "Gui, Color, Black"
Start_Script1 = Start_Script1 & vbCrLf & "Gui, Show, x800 y50 w370 h120, CRM Autocorrect" & vbCrLf & vbCrLf & "FormatTime, CurrentDateTime,, dd MMM yyyy" & vbCrLf & "FormatTime, CurrentDatePD,, MM/dd/yy" & vbCrLf & vbCrLf & "Gui, Font, s14, Courier New" & vbCrLf & "Gui, Add, Button, x35 y80 w300 h30 gTerminate, Press to End Autocorrect"
Start_Script2 = "Return" & vbCrLf & vbCrLf & "GuiClose:" & vbCrLf & "ExitApp" & vbCrLf & "Return" & vbCrLf & vbCrLf & "Terminate:" & vbCrLf & "ExitApp" & vbCrLf & "Return" & vbCrLf & vbCrLf & "^!r::Reload   ; Reload script with Ctrl+Alt+R" & vbCrLf
UserName = Environ$("UserProfile")

'What is the file path and name for the new text file?
UserName = Environ$("UserProfile")

FilePath = Environ$("UserProfile") & "\Desktop\AHK\CRM EU AutoHotKey.ahk"

'Open the text file
Open FilePath For Output As #1

'Write text
Print #1, Start_Script1
Print #1, Start_Script2


Abbreviations = Workbooks("AutoHotKey Definitions.xlsm").Worksheets("CRM Definitions").Range("C2:D" & Workbooks("AutoHotKey Definitions.xlsm").Worksheets("CRM Definitions").Range("D" & Rows.Count).End(xlUp).Row)
i = 1

While i < (UBound(Abbreviations) - LBound(Abbreviations)) + 2
    If Not Abbreviations(i, 1) = "" And Not Abbreviations(i, 2) = "" Then
        If Not InStr(Abbreviations(i, 2), Chr(10)) = 0 Then
            While InStr(Abbreviations(i, 2), Chr(10)) <> 0
                Abbreviations(i, 2) = replace(Abbreviations(i, 2), Chr(10), "`n")
            Wend
        End If
        If Abbreviations(i, 2) Like "*## ??? ####*" Or Abbreviations(i, 2) Like "## ??? ####" Or Abbreviations(i, 2) Like "*##/##/##*" Or Abbreviations(i, 2) Like "##/##/##" Then
            If Abbreviations(i, 2) Like "*## ??? ####*" Or Abbreviations(i, 2) Like "## ??? ####" Then
                Abbreviations(i, 2) = FindReplaceDate(Abbreviations(i, 2), "\d{2}\s\w{3}\s\d{4}", "%CurrentDateTime%")
            End If
            If Abbreviations(i, 2) Like "*##/##/##*" Or Abbreviations(i, 2) Like "##/##/##" Then
                Abbreviations(i, 2) = FindReplaceDate(Abbreviations(i, 2), "\d{2}[/]\d{2}[/]\d{2}", "%CurrentDatePD%")
            End If
        End If
        Temp = "::" & Abbreviations(i, 1) & "::" & vbCrLf & "SendInput " & Abbreviations(i, 2) & vbCrLf & "Return" & vbCrLf
        Print #1, Temp
    End If
    i = i + 1
Wend
  
Close #1

End Sub


Function FindReplaceDate(Statement, datepattern As String, replacewith As String)
    
    
    Dim regex As Object
    Set regex = CreateObject("VBScript.RegExp")
    
    With regex
        .pattern = datepattern
        .IgnoreCase = True
        .Global = True
    End With

    FindReplaceDate = regex.replace(Statement, replacewith)
    
End Function
