[Ivy]
[>Created: Mon Dec 05 17:01:46 ICT 2022]
184E1759A6B17E94 3.18 #module
>Proto >Proto Collection #zClass
is0 initStoreProcess Big #zClass
is0 B #cInfo
is0 #process
is0 @TextInP .resExport .resExport #zField
is0 @TextInP .type .type #zField
is0 @TextInP .processKind .processKind #zField
is0 @AnnotationInP-0n ai ai #zField
is0 @MessageFlowInP-0n messageIn messageIn #zField
is0 @MessageFlowOutP-0n messageOut messageOut #zField
is0 @TextInP .xml .xml #zField
is0 @TextInP .responsibility .responsibility #zField
is0 @StartRequest f0 '' #zField
is0 @EndTask f1 '' #zField
is0 @RichDialog f3 '' #zField
is0 @PushWFArc f4 '' #zField
is0 @RichDialog f5 '' #zField
is0 @PushWFArc f6 '' #zField
is0 @PushWFArc f2 '' #zField
>Proto is0 is0 initStoreProcess #zField
is0 f0 outLink start.ivp #txt
is0 f0 type pizza.store.Data #txt
is0 f0 inParamDecl '<> param;' #txt
is0 f0 actionDecl 'pizza.store.Data out;
' #txt
is0 f0 guid 184E1759A76F4125 #txt
is0 f0 requestEnabled true #txt
is0 f0 triggerEnabled false #txt
is0 f0 callSignature start() #txt
is0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
is0 f0 @C|.responsibility Everybody #txt
is0 f0 81 49 30 30 -21 17 #rect
is0 f0 @|StartRequestIcon #fIcon
is0 f1 type pizza.store.Data #txt
is0 f1 577 49 30 30 0 15 #rect
is0 f1 @|EndIcon #fIcon
is0 f3 targetWindow NEW:card: #txt
is0 f3 targetDisplay TOP #txt
is0 f3 richDialogId pizza.store.Login #txt
is0 f3 startMethod start() #txt
is0 f3 type pizza.store.Data #txt
is0 f3 requestActionDecl '<> param;' #txt
is0 f3 responseActionDecl 'pizza.store.Data out;
' #txt
is0 f3 responseMappingAction 'out=in;
' #txt
is0 f3 windowConfiguration '* ' #txt
is0 f3 isAsynch false #txt
is0 f3 isInnerRd false #txt
is0 f3 userContext '* ' #txt
is0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login</name>
        <nameStyle>5
</nameStyle>
    </language>
</elementInfo>
' #txt
is0 f3 168 42 112 44 -15 -8 #rect
is0 f3 @|RichDialogIcon #fIcon
is0 f4 expr out #txt
is0 f4 111 64 168 64 #arcP
is0 f5 targetWindow NEW:card: #txt
is0 f5 targetDisplay TOP #txt
is0 f5 richDialogId pizza.store.HomeProduct #txt
is0 f5 startMethod start() #txt
is0 f5 type pizza.store.Data #txt
is0 f5 requestActionDecl '<> param;' #txt
is0 f5 responseActionDecl 'pizza.store.Data out;
' #txt
is0 f5 responseMappingAction 'out=in;
' #txt
is0 f5 windowConfiguration '* ' #txt
is0 f5 isAsynch false #txt
is0 f5 isInnerRd false #txt
is0 f5 userContext '* ' #txt
is0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Home Product</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
is0 f5 392 42 112 44 -39 -8 #rect
is0 f5 @|RichDialogIcon #fIcon
is0 f6 expr out #txt
is0 f6 280 64 392 64 #arcP
is0 f2 expr out #txt
is0 f2 504 64 577 64 #arcP
>Proto is0 .type pizza.store.Data #txt
>Proto is0 .processKind NORMAL #txt
>Proto is0 0 0 32 24 18 0 #rect
>Proto is0 @|BIcon #fIcon
is0 f0 mainOut f4 tail #connect
is0 f4 head f3 mainIn #connect
is0 f3 mainOut f6 tail #connect
is0 f6 head f5 mainIn #connect
is0 f5 mainOut f2 tail #connect
is0 f2 head f1 mainIn #connect
