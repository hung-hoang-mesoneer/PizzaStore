[Ivy]
[>Created: Tue Dec 13 15:15:59 ICT 2022]
184EB7F7E508BB7B 3.18 #module
>Proto >Proto Collection #zClass
Os0 OrderReceptionistProcess Big #zClass
Os0 RD #cInfo
Os0 #process
Os0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Os0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Os0 @TextInP .resExport .resExport #zField
Os0 @TextInP .type .type #zField
Os0 @TextInP .processKind .processKind #zField
Os0 @AnnotationInP-0n ai ai #zField
Os0 @MessageFlowInP-0n messageIn messageIn #zField
Os0 @MessageFlowOutP-0n messageOut messageOut #zField
Os0 @TextInP .xml .xml #zField
Os0 @TextInP .responsibility .responsibility #zField
Os0 @RichDialogInitStart f0 '' #zField
Os0 @RichDialogProcessEnd f1 '' #zField
Os0 @PushWFArc f2 '' #zField
Os0 @RichDialogProcessStart f3 '' #zField
Os0 @RichDialogEnd f4 '' #zField
Os0 @PushWFArc f5 '' #zField
Os0 @RichDialogMethodStart f6 '' #zField
Os0 @RichDialogProcessEnd f7 '' #zField
Os0 @RichDialogMethodStart f9 '' #zField
Os0 @RichDialogProcessEnd f10 '' #zField
Os0 @PushWFArc f11 '' #zField
Os0 @PushWFArc f8 '' #zField
>Proto Os0 Os0 OrderReceptionistProcess #zField
Os0 f0 guid 184EB7F7E64C943B #txt
Os0 f0 type pizza.store.OrderReceptionist.OrderReceptionistData #txt
Os0 f0 method start(pizza.store.Data) #txt
Os0 f0 disableUIEvents true #txt
Os0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<pizza.store.Data data> param = methodEvent.getInputArguments();
' #txt
Os0 f0 inActionCode 'import pizza.store.service.OrderService;
import pizza.store.service.ProductService;
out.dataOrdered = OrderService.getOrders();' #txt
Os0 f0 outParameterDecl '<pizza.store.Data data> result;
' #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f0 84 52 24 24 -29 15 #rect
Os0 f0 @|RichDialogInitStartIcon #fIcon
Os0 f1 type pizza.store.OrderReceptionist.OrderReceptionistData #txt
Os0 f1 211 51 26 26 0 12 #rect
Os0 f1 @|RichDialogProcessEndIcon #fIcon
Os0 f2 expr out #txt
Os0 f2 108 64 211 64 #arcP
Os0 f3 guid 184EB7F7E73A46D9 #txt
Os0 f3 type pizza.store.OrderReceptionist.OrderReceptionistData #txt
Os0 f3 actionDecl 'pizza.store.OrderReceptionist.OrderReceptionistData out;
' #txt
Os0 f3 actionTable 'out=in;
' #txt
Os0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Os0 f3 83 147 26 26 -15 12 #rect
Os0 f3 @|RichDialogProcessStartIcon #fIcon
Os0 f4 type pizza.store.OrderReceptionist.OrderReceptionistData #txt
Os0 f4 guid 184EB7F7E737D8C8 #txt
Os0 f4 211 147 26 26 0 12 #rect
Os0 f4 @|RichDialogEndIcon #fIcon
Os0 f5 expr out #txt
Os0 f5 109 160 211 160 #arcP
Os0 f6 guid 1850A6BF2F3B1AE3 #txt
Os0 f6 type pizza.store.OrderReceptionist.OrderReceptionistData #txt
Os0 f6 method confirmOrder(java.lang.Integer,pizza.store.StatusOrder) #txt
Os0 f6 disableUIEvents false #txt
Os0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Integer orderId,pizza.store.StatusOrder statusOrder> param = methodEvent.getInputArguments();
' #txt
Os0 f6 inActionCode 'import pizza.store.StatusOrder;
import pizza.store.service.OrderService;
OrderService.changeStatusOrder(param.orderId,StatusOrder.CONFIRMED);' #txt
Os0 f6 outParameterDecl '<> result;
' #txt
Os0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>confirm</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f6 83 227 26 26 -20 15 #rect
Os0 f6 @|RichDialogMethodStartIcon #fIcon
Os0 f7 type pizza.store.OrderReceptionist.OrderReceptionistData #txt
Os0 f7 219 227 26 26 0 12 #rect
Os0 f7 @|RichDialogProcessEndIcon #fIcon
Os0 f9 guid 1850A6EEEA64484D #txt
Os0 f9 type pizza.store.OrderReceptionist.OrderReceptionistData #txt
Os0 f9 method cancelOrder(java.lang.Integer,pizza.store.StatusOrder) #txt
Os0 f9 disableUIEvents false #txt
Os0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Integer orderId,pizza.store.StatusOrder statusOrder> param = methodEvent.getInputArguments();
' #txt
Os0 f9 inActionCode 'import pizza.store.StatusOrder;
import pizza.store.service.OrderService;
OrderService.changeStatusOrder(param.orderId, StatusOrder.CANCELED);' #txt
Os0 f9 outParameterDecl '<> result;
' #txt
Os0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancelOrder</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f9 83 307 26 26 -33 15 #rect
Os0 f9 @|RichDialogMethodStartIcon #fIcon
Os0 f10 type pizza.store.OrderReceptionist.OrderReceptionistData #txt
Os0 f10 211 307 26 26 0 12 #rect
Os0 f10 @|RichDialogProcessEndIcon #fIcon
Os0 f11 expr out #txt
Os0 f11 109 320 211 320 #arcP
Os0 f8 expr out #txt
Os0 f8 109 240 219 240 #arcP
>Proto Os0 .type pizza.store.OrderReceptionist.OrderReceptionistData #txt
>Proto Os0 .processKind HTML_DIALOG #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
>Proto Os0 '' #fIcon
Os0 f0 mainOut f2 tail #connect
Os0 f2 head f1 mainIn #connect
Os0 f3 mainOut f5 tail #connect
Os0 f5 head f4 mainIn #connect
Os0 f9 mainOut f11 tail #connect
Os0 f11 head f10 mainIn #connect
Os0 f6 mainOut f8 tail #connect
Os0 f8 head f7 mainIn #connect
