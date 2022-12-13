[Ivy]
[>Created: Mon Dec 12 23:12:55 ICT 2022]
18507183255B6751 3.18 #module
>Proto >Proto Collection #zClass
Ls0 LogoutProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ls0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ls0 @TextInP .resExport .resExport #zField
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @MessageFlowInP-0n messageIn messageIn #zField
Ls0 @MessageFlowOutP-0n messageOut messageOut #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @RichDialogInitStart f0 '' #zField
Ls0 @RichDialogProcessEnd f1 '' #zField
Ls0 @PushWFArc f2 '' #zField
Ls0 @RichDialogProcessStart f3 '' #zField
Ls0 @RichDialogEnd f4 '' #zField
Ls0 @RichDialog f6 '' #zField
Ls0 @PushWFArc f7 '' #zField
Ls0 @PushWFArc f5 '' #zField
>Proto Ls0 Ls0 LogoutProcess #zField
Ls0 f0 guid 185071832981A4EA #txt
Ls0 f0 type pizza.store.Logout.LogoutData #txt
Ls0 f0 method start() #txt
Ls0 f0 disableUIEvents true #txt
Ls0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f0 outParameterDecl '<> result;
' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ls0 f0 83 51 26 26 -16 15 #rect
Ls0 f0 @|RichDialogInitStartIcon #fIcon
Ls0 f1 type pizza.store.Logout.LogoutData #txt
Ls0 f1 211 51 26 26 0 12 #rect
Ls0 f1 @|RichDialogProcessEndIcon #fIcon
Ls0 f2 expr out #txt
Ls0 f2 109 64 211 64 #arcP
Ls0 f3 guid 185071832B1DF445 #txt
Ls0 f3 type pizza.store.Logout.LogoutData #txt
Ls0 f3 actionDecl 'pizza.store.Logout.LogoutData out;
' #txt
Ls0 f3 actionTable 'out=in;
' #txt
Ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logout</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f3 83 147 26 26 -17 15 #rect
Ls0 f3 @|RichDialogProcessStartIcon #fIcon
Ls0 f4 type pizza.store.Logout.LogoutData #txt
Ls0 f4 guid 185071832B19F655 #txt
Ls0 f4 339 147 26 26 0 12 #rect
Ls0 f4 @|RichDialogEndIcon #fIcon
Ls0 f6 targetWindow NEW:card: #txt
Ls0 f6 targetDisplay TOP #txt
Ls0 f6 richDialogId pizza.store.Login #txt
Ls0 f6 startMethod start() #txt
Ls0 f6 type pizza.store.Logout.LogoutData #txt
Ls0 f6 requestActionDecl '<> param;' #txt
Ls0 f6 responseActionDecl 'pizza.store.Logout.LogoutData out;
' #txt
Ls0 f6 responseMappingAction 'out=in;
' #txt
Ls0 f6 responseActionCode ivy.session.logoutSessionUser(); #txt
Ls0 f6 windowConfiguration '* ' #txt
Ls0 f6 isAsynch false #txt
Ls0 f6 isInnerRd true #txt
Ls0 f6 userContext '* ' #txt
Ls0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Go to Login</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f6 168 138 112 44 -31 -8 #rect
Ls0 f6 @|RichDialogIcon #fIcon
Ls0 f7 expr out #txt
Ls0 f7 109 160 168 160 #arcP
Ls0 f5 expr out #txt
Ls0 f5 280 160 339 160 #arcP
>Proto Ls0 .type pizza.store.Logout.LogoutData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f0 mainOut f2 tail #connect
Ls0 f2 head f1 mainIn #connect
Ls0 f3 mainOut f7 tail #connect
Ls0 f7 head f6 mainIn #connect
Ls0 f6 mainOut f5 tail #connect
Ls0 f5 head f4 mainIn #connect
