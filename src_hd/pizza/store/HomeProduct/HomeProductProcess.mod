[Ivy]
[>Created: Mon Dec 12 11:00:04 ICT 2022]
184E19F71E2C7142 3.18 #module
>Proto >Proto Collection #zClass
Hs0 HomeProductProcess Big #zClass
Hs0 RD #cInfo
Hs0 #process
Hs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Hs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Hs0 @TextInP .resExport .resExport #zField
Hs0 @TextInP .type .type #zField
Hs0 @TextInP .processKind .processKind #zField
Hs0 @AnnotationInP-0n ai ai #zField
Hs0 @MessageFlowInP-0n messageIn messageIn #zField
Hs0 @MessageFlowOutP-0n messageOut messageOut #zField
Hs0 @TextInP .xml .xml #zField
Hs0 @TextInP .responsibility .responsibility #zField
Hs0 @RichDialogInitStart f0 '' #zField
Hs0 @RichDialogProcessStart f3 '' #zField
Hs0 @RichDialogEnd f4 '' #zField
Hs0 @PushWFArc f5 '' #zField
Hs0 @GridStep f6 '' #zField
Hs0 @PushWFArc f7 '' #zField
Hs0 @RichDialogProcessStart f8 '' #zField
Hs0 @RichDialogEnd f9 '' #zField
Hs0 @GridStep f11 '' #zField
Hs0 @PushWFArc f12 '' #zField
Hs0 @PushWFArc f10 '' #zField
Hs0 @RichDialogProcessStart f13 '' #zField
Hs0 @RichDialogProcessEnd f1 '' #zField
Hs0 @PushWFArc f2 '' #zField
Hs0 @RichDialogProcessEnd f14 '' #zField
Hs0 @GridStep f16 '' #zField
Hs0 @PushWFArc f17 '' #zField
Hs0 @PushWFArc f15 '' #zField
>Proto Hs0 Hs0 HomeProductProcess #zField
Hs0 f0 guid 184E19F7209B2DE1 #txt
Hs0 f0 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f0 method start() #txt
Hs0 f0 disableUIEvents true #txt
Hs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Hs0 f0 inActionCode 'import pizza.store.model.Order;
import pizza.store.model.NGModal;
out.NgModal = new NGModal();
out.order = new Order();' #txt
Hs0 f0 outParameterDecl '<> result;
' #txt
Hs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f0 83 51 26 26 -16 15 #rect
Hs0 f0 @|RichDialogInitStartIcon #fIcon
Hs0 f3 guid 184E19F721EBBD6F #txt
Hs0 f3 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f3 actionDecl 'pizza.store.HomeProduct.HomeProductData out;
' #txt
Hs0 f3 actionTable 'out=in;
out.dataDrinks=in.dataDrinks;
out.dataPizzas=in.dataPizzas;
' #txt
Hs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f3 83 115 26 26 -15 15 #rect
Hs0 f3 @|RichDialogProcessStartIcon #fIcon
Hs0 f4 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f4 guid 184E19F721FC4179 #txt
Hs0 f4 211 115 26 26 0 12 #rect
Hs0 f4 @|RichDialogEndIcon #fIcon
Hs0 f5 expr out #txt
Hs0 f5 109 128 211 128 #arcP
Hs0 f6 actionDecl 'pizza.store.HomeProduct.HomeProductData out;
' #txt
Hs0 f6 actionTable 'out=in;
' #txt
Hs0 f6 actionCode 'import pizza.store.service.ProductService;
in.dataPizzas = ProductService.getPizzas();
in.dataDrinks = ProductService.getDrinks();' #txt
Hs0 f6 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init data home screen</name>
        <nameStyle>21
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f6 160 42 128 44 -59 -8 #rect
Hs0 f6 @|StepIcon #fIcon
Hs0 f7 expr out #txt
Hs0 f7 109 64 160 64 #arcP
Hs0 f8 guid 184EBFE5CC9F7C85 #txt
Hs0 f8 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f8 actionDecl 'pizza.store.HomeProduct.HomeProductData out;
' #txt
Hs0 f8 actionTable 'out=in;
' #txt
Hs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logout</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f8 83 323 26 26 -17 15 #rect
Hs0 f8 @|RichDialogProcessStartIcon #fIcon
Hs0 f9 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f9 guid 184EBFE974724014 #txt
Hs0 f9 339 323 26 26 0 12 #rect
Hs0 f9 @|RichDialogEndIcon #fIcon
Hs0 f11 actionDecl 'pizza.store.HomeProduct.HomeProductData out;
' #txt
Hs0 f11 actionTable 'out=in;
' #txt
Hs0 f11 actionCode ivy.session.logoutSessionUser(); #txt
Hs0 f11 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>processLogout</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f11 168 314 112 44 -41 -8 #rect
Hs0 f11 @|StepIcon #fIcon
Hs0 f12 expr out #txt
Hs0 f12 109 336 168 336 #arcP
Hs0 f10 expr out #txt
Hs0 f10 280 336 339 336 #arcP
Hs0 f13 guid 184F0951B903C397 #txt
Hs0 f13 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f13 actionDecl 'pizza.store.HomeProduct.HomeProductData out;
' #txt
Hs0 f13 actionTable 'out=in;
' #txt
Hs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>order</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f13 83 179 26 26 -14 15 #rect
Hs0 f13 @|RichDialogProcessStartIcon #fIcon
Hs0 f1 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f1 403 51 26 26 0 12 #rect
Hs0 f1 @|RichDialogProcessEndIcon #fIcon
Hs0 f2 expr out #txt
Hs0 f2 288 64 403 64 #arcP
Hs0 f14 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f14 387 179 26 26 0 12 #rect
Hs0 f14 @|RichDialogProcessEndIcon #fIcon
Hs0 f16 actionDecl 'pizza.store.HomeProduct.HomeProductData out;
' #txt
Hs0 f16 actionTable 'out=in;
' #txt
Hs0 f16 actionCode 'import pizza.store.service.ProductService;

ProductService.createOrder(in.order);' #txt
Hs0 f16 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Create order</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f16 168 170 112 44 -34 -8 #rect
Hs0 f16 @|StepIcon #fIcon
Hs0 f17 expr out #txt
Hs0 f17 109 192 168 192 #arcP
Hs0 f15 expr out #txt
Hs0 f15 280 192 387 192 #arcP
>Proto Hs0 .type pizza.store.HomeProduct.HomeProductData #txt
>Proto Hs0 .processKind HTML_DIALOG #txt
>Proto Hs0 -8 -8 16 16 16 26 #rect
>Proto Hs0 '' #fIcon
Hs0 f3 mainOut f5 tail #connect
Hs0 f5 head f4 mainIn #connect
Hs0 f0 mainOut f7 tail #connect
Hs0 f7 head f6 mainIn #connect
Hs0 f8 mainOut f12 tail #connect
Hs0 f12 head f11 mainIn #connect
Hs0 f11 mainOut f10 tail #connect
Hs0 f10 head f9 mainIn #connect
Hs0 f6 mainOut f2 tail #connect
Hs0 f2 head f1 mainIn #connect
Hs0 f13 mainOut f17 tail #connect
Hs0 f17 head f16 mainIn #connect
Hs0 f16 mainOut f15 tail #connect
Hs0 f15 head f14 mainIn #connect
