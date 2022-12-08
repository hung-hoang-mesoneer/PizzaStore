[Ivy]
[>Created: Thu Dec 08 13:52:39 ICT 2022]
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
Ls0 @RichDialog f14 '' #zField
Ls0 @RichDialogProcessEnd f15 '' #zField
Ls0 @PushWFArc f16 '' #zField
Ls0 @PushWFArc f17 '' #zField
Ls0 @RichDialogProcessEnd f18 '' #zField
Ls0 @RichDialogProcessEnd f19 '' #zField
Ls0 @RichDialog f20 '' #zField
Ls0 @RichDialog f21 '' #zField
Ls0 @PushWFArc f22 '' #zField
Ls0 @PushWFArc f23 '' #zField
Ls0 @PushWFArc f24 '' #zField
Ls0 @PushWFArc f25 '' #zField
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
Ls0 f4 867 147 26 26 0 12 #rect
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
Ls0 f6 368 144 32 32 25 -22 #rect
Ls0 f6 @|AlternativeIcon #fIcon
Ls0 f5 expr in #txt
Ls0 f5 outCond 'in.isValid && in.currentRole == "Everybody"' #txt
Ls0 f5 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
        <nameStyle>3
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f5 400 160 867 160 #arcP
Ls0 f5 0 0.6188436830835118 0 -12 #arcLabel
Ls0 f8 actionDecl 'pizza.store.Login.LoginData out;
' #txt
Ls0 f8 actionTable 'out=in;
' #txt
Ls0 f8 actionCode 'import pizaa.store.security.SecurityUtils;
import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.security.ISecurityManager;

ISecurityManager securityManager = ch.ivyteam.ivy.security.internal.SecurityManager.getSecurityManager();
ISession currentSession = securityManager.getCurrentSession();
in.isValid = currentSession.loginSessionUser(in.username,in.password);
in.currentRole = SecurityUtils.getCurrentRole();
' #txt
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
Ls0 f10 328 66 112 44 -29 -8 #rect
Ls0 f10 @|StepIcon #fIcon
Ls0 f11 type pizza.store.Login.LoginData #txt
Ls0 f11 523 75 26 26 0 12 #rect
Ls0 f11 @|RichDialogProcessEndIcon #fIcon
Ls0 f12 expr in #txt
Ls0 f12 outCond !in.isValid #txt
Ls0 f12 384 144 384 110 #arcP
Ls0 f13 expr out #txt
Ls0 f13 440 88 523 88 #arcP
Ls0 f14 targetWindow NEW:card: #txt
Ls0 f14 targetDisplay TOP #txt
Ls0 f14 richDialogId pizza.store.OrderReceptionist #txt
Ls0 f14 startMethod start(pizza.store.Data) #txt
Ls0 f14 type pizza.store.Login.LoginData #txt
Ls0 f14 requestActionDecl '<pizza.store.Data data> param;' #txt
Ls0 f14 responseActionDecl 'pizza.store.Login.LoginData out;
' #txt
Ls0 f14 responseMappingAction 'out=in;
' #txt
Ls0 f14 windowConfiguration '* ' #txt
Ls0 f14 isAsynch false #txt
Ls0 f14 isInnerRd true #txt
Ls0 f14 userContext '* ' #txt
Ls0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Screen Order For Receptionist</name>
        <nameStyle>29
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f14 584 242 176 44 -83 -8 #rect
Ls0 f14 @|RichDialogIcon #fIcon
Ls0 f15 type pizza.store.Login.LoginData #txt
Ls0 f15 819 251 26 26 0 12 #rect
Ls0 f15 @|RichDialogProcessEndIcon #fIcon
Ls0 f16 expr out #txt
Ls0 f16 760 264 819 264 #arcP
Ls0 f17 expr in #txt
Ls0 f17 outCond 'in.isValid && in.currentRole == "Receptionist"' #txt
Ls0 f17 388 172 584 264 #arcP
Ls0 f17 1 424 264 #addKink
Ls0 f17 1 0.22423861692701622 0 0 #arcLabel
Ls0 f18 type pizza.store.Login.LoginData #txt
Ls0 f18 819 339 26 26 0 12 #rect
Ls0 f18 @|RichDialogProcessEndIcon #fIcon
Ls0 f19 type pizza.store.Login.LoginData #txt
Ls0 f19 819 427 26 26 0 12 #rect
Ls0 f19 @|RichDialogProcessEndIcon #fIcon
Ls0 f20 targetWindow NEW:card: #txt
Ls0 f20 targetDisplay TOP #txt
Ls0 f20 richDialogId pizza.store.OrderChef #txt
Ls0 f20 startMethod start() #txt
Ls0 f20 type pizza.store.Login.LoginData #txt
Ls0 f20 requestActionDecl '<> param;' #txt
Ls0 f20 responseActionDecl 'pizza.store.Login.LoginData out;
' #txt
Ls0 f20 responseMappingAction 'out=in;
' #txt
Ls0 f20 windowConfiguration '* ' #txt
Ls0 f20 isAsynch false #txt
Ls0 f20 isInnerRd true #txt
Ls0 f20 userContext '* ' #txt
Ls0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Screen Order For Chef</name>
        <nameStyle>21
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f20 584 330 128 44 -61 -8 #rect
Ls0 f20 @|RichDialogIcon #fIcon
Ls0 f21 targetWindow NEW:card: #txt
Ls0 f21 targetDisplay TOP #txt
Ls0 f21 richDialogId pizza.store.OrderDelivery #txt
Ls0 f21 startMethod start() #txt
Ls0 f21 type pizza.store.Login.LoginData #txt
Ls0 f21 requestActionDecl '<> param;' #txt
Ls0 f21 responseActionDecl 'pizza.store.Login.LoginData out;
' #txt
Ls0 f21 responseMappingAction 'out=in;
' #txt
Ls0 f21 windowConfiguration '* ' #txt
Ls0 f21 isAsynch false #txt
Ls0 f21 isInnerRd true #txt
Ls0 f21 userContext '* ' #txt
Ls0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Screen Order For Delivery</name>
        <nameStyle>25
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f21 592 418 144 44 -69 -8 #rect
Ls0 f21 @|RichDialogIcon #fIcon
Ls0 f22 expr out #txt
Ls0 f22 712 352 819 352 #arcP
Ls0 f23 expr out #txt
Ls0 f23 736 440 819 440 #arcP
Ls0 f24 expr in #txt
Ls0 f24 outCond 'in.isValid && in.currentRole == "Chef"' #txt
Ls0 f24 387 173 584 352 #arcP
Ls0 f24 1 432 352 #addKink
Ls0 f24 1 0.15041856237322854 0 0 #arcLabel
Ls0 f25 expr in #txt
Ls0 f25 outCond 'in.isValid && in.currentRole == "Devlivery"' #txt
Ls0 f25 384 176 592 440 #arcP
Ls0 f25 1 384 440 #addKink
Ls0 f25 0 0.9035247871475722 0 0 #arcLabel
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
Ls0 f14 mainOut f16 tail #connect
Ls0 f16 head f15 mainIn #connect
Ls0 f6 out f17 tail #connect
Ls0 f17 head f14 mainIn #connect
Ls0 f20 mainOut f22 tail #connect
Ls0 f22 head f18 mainIn #connect
Ls0 f21 mainOut f23 tail #connect
Ls0 f23 head f19 mainIn #connect
Ls0 f6 out f24 tail #connect
Ls0 f24 head f20 mainIn #connect
Ls0 f6 out f25 tail #connect
Ls0 f25 head f21 mainIn #connect
