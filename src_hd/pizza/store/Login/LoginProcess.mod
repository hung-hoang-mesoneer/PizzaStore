[Ivy]
[>Created: Tue Dec 06 16:24:10 ICT 2022]
184E169C5C622E4C 3.18 #module
>Proto >Proto Collection #zClass
Ls0 LoginProcess Big #zClass
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
Ls0 @Alternative f6 '' #zField
Ls0 @PushWFArc f5 '' #zField
Ls0 @GridStep f8 '' #zField
Ls0 @PushWFArc f9 '' #zField
Ls0 @PushWFArc f7 '' #zField
Ls0 @GridStep f10 '' #zField
Ls0 @RichDialogProcessEnd f11 '' #zField
Ls0 @PushWFArc f12 '' #zField
Ls0 @PushWFArc f13 '' #zField
>Proto Ls0 Ls0 LoginProcess #zField
Ls0 f0 guid 184E169C5E68F88D #txt
Ls0 f0 type pizza.store.Login.LoginData #txt
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
Ls0 f1 type pizza.store.Login.LoginData #txt
Ls0 f1 211 51 26 26 0 12 #rect
Ls0 f1 @|RichDialogProcessEndIcon #fIcon
Ls0 f2 expr out #txt
Ls0 f2 109 64 211 64 #arcP
Ls0 f3 guid 184E169C5F6BFE0F #txt
Ls0 f3 type pizza.store.Login.LoginData #txt
Ls0 f3 actionDecl 'pizza.store.Login.LoginData out;
' #txt
Ls0 f3 actionTable 'out=in;
' #txt
Ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f3 83 147 26 26 -13 15 #rect
Ls0 f3 @|RichDialogProcessStartIcon #fIcon
Ls0 f4 type pizza.store.Login.LoginData #txt
Ls0 f4 guid 184E169C5F64D97F #txt
Ls0 f4 515 147 26 26 0 12 #rect
Ls0 f4 @|RichDialogEndIcon #fIcon
Ls0 f6 type pizza.store.Login.LoginData #txt
Ls0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>isValid</name>
        <nameStyle>7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f6 368 144 32 32 -18 18 #rect
Ls0 f6 @|AlternativeIcon #fIcon
Ls0 f5 expr in #txt
Ls0 f5 outCond in.isValid #txt
Ls0 f5 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
        <nameStyle>3
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f5 400 160 515 160 #arcP
Ls0 f8 actionDecl 'pizza.store.Login.LoginData out;
' #txt
Ls0 f8 actionTable 'out=in;
' #txt
Ls0 f8 actionCode 'import pizza.store.LoginService;

in.isValid = LoginService.checkLogin(in.username,in.password);

if (!in.isValid) {
	in.messageError = "login failed";	
}' #txt
Ls0 f8 type pizza.store.Login.LoginData #txt
Ls0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validate</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f8 168 138 112 44 -21 -8 #rect
Ls0 f8 @|StepIcon #fIcon
Ls0 f9 expr out #txt
Ls0 f9 109 160 168 160 #arcP
Ls0 f7 expr out #txt
Ls0 f7 280 160 368 160 #arcP
Ls0 f10 actionDecl 'pizza.store.Login.LoginData out;
' #txt
Ls0 f10 actionTable 'out=in;
' #txt
Ls0 f10 type pizza.store.Login.LoginData #txt
Ls0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show error</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f10 328 242 112 44 -29 -8 #rect
Ls0 f10 @|StepIcon #fIcon
Ls0 f11 type pizza.store.Login.LoginData #txt
Ls0 f11 523 251 26 26 0 12 #rect
Ls0 f11 @|RichDialogProcessEndIcon #fIcon
Ls0 f12 expr in #txt
Ls0 f12 outCond !in.isValid #txt
Ls0 f12 384 176 384 242 #arcP
Ls0 f13 expr out #txt
Ls0 f13 440 264 523 264 #arcP
>Proto Ls0 .type pizza.store.Login.LoginData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f0 mainOut f2 tail #connect
Ls0 f2 head f1 mainIn #connect
Ls0 f6 out f5 tail #connect
Ls0 f5 head f4 mainIn #connect
Ls0 f3 mainOut f9 tail #connect
Ls0 f9 head f8 mainIn #connect
Ls0 f8 mainOut f7 tail #connect
Ls0 f7 head f6 in #connect
Ls0 f6 out f12 tail #connect
Ls0 f12 head f10 mainIn #connect
Ls0 f10 mainOut f13 tail #connect
Ls0 f13 head f11 mainIn #connect
