[Ivy]
[>Created: Thu Dec 15 14:21:05 ICT 2022]
184F07E0F8EE34DB 3.18 #module
>Proto >Proto Collection #zClass
Os0 OrderDeliveryProcess Big #zClass
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
Os0 @PushWFArc f8 '' #zField
>Proto Os0 Os0 OrderDeliveryProcess #zField
Os0 f0 guid 184F07E0F9CAFEB5 #txt
Os0 f0 type pizza.store.OrderDelivery.OrderDeliveryData #txt
Os0 f0 method start() #txt
Os0 f0 disableUIEvents true #txt
Os0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Os0 f0 inActionCode 'import pizza.store.StatusOrder;
import org.apache.commons.lang.StringUtils;
import pizza.store.restClient.OrderClient;
import pizza.store.service.OrderService;

// out.dataOrdered = OrderService.getOrders();
out.dataOrdered = OrderClient.getOrders(StringUtils.EMPTY, StatusOrder.COOKED);' #txt
Os0 f0 outParameterDecl '<> result;
' #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f0 83 51 26 26 -16 15 #rect
Os0 f0 @|RichDialogInitStartIcon #fIcon
Os0 f1 type pizza.store.OrderDelivery.OrderDeliveryData #txt
Os0 f1 211 51 26 26 0 12 #rect
Os0 f1 @|RichDialogProcessEndIcon #fIcon
Os0 f2 expr out #txt
Os0 f2 109 64 211 64 #arcP
Os0 f3 guid 184F07E0FA78137B #txt
Os0 f3 type pizza.store.OrderDelivery.OrderDeliveryData #txt
Os0 f3 actionDecl 'pizza.store.OrderDelivery.OrderDeliveryData out;
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
Os0 f4 type pizza.store.OrderDelivery.OrderDeliveryData #txt
Os0 f4 guid 184F07E0FA7176B5 #txt
Os0 f4 211 147 26 26 0 12 #rect
Os0 f4 @|RichDialogEndIcon #fIcon
Os0 f5 expr out #txt
Os0 f5 109 160 211 160 #arcP
Os0 f6 guid 1850AB489041DE79 #txt
Os0 f6 type pizza.store.OrderDelivery.OrderDeliveryData #txt
Os0 f6 method confirmOrder(java.lang.Integer,pizza.store.StatusOrder) #txt
Os0 f6 disableUIEvents false #txt
Os0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Integer orderId,pizza.store.StatusOrder statusOrder> param = methodEvent.getInputArguments();
' #txt
Os0 f6 inActionCode 'import org.apache.commons.lang.StringUtils;
import pizza.store.restClient.OrderClient;
import pizza.store.StatusOrder;
import pizza.store.service.OrderService;
//OrderService.changeStatusOrder(param.orderId, StatusOrder.PAIED);
//out.dataOrdered = OrderService.getOrders();

OrderClient.updateStatusOrder(param.orderId,StatusOrder.PAIED);
out.dataOrdered = OrderClient.getOrders(StringUtils.EMPTY, StatusOrder.COOKED);
' #txt
Os0 f6 outParameterDecl '<> result;
' #txt
Os0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>confirmOrder(Integer,StatusOrder)</name>
        <nameStyle>33,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f6 83 243 26 26 -93 15 #rect
Os0 f6 @|RichDialogMethodStartIcon #fIcon
Os0 f7 type pizza.store.OrderDelivery.OrderDeliveryData #txt
Os0 f7 211 243 26 26 0 12 #rect
Os0 f7 @|RichDialogProcessEndIcon #fIcon
Os0 f8 expr out #txt
Os0 f8 109 256 211 256 #arcP
>Proto Os0 .type pizza.store.OrderDelivery.OrderDeliveryData #txt
>Proto Os0 .processKind HTML_DIALOG #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
>Proto Os0 '' #fIcon
Os0 f0 mainOut f2 tail #connect
Os0 f2 head f1 mainIn #connect
Os0 f3 mainOut f5 tail #connect
Os0 f5 head f4 mainIn #connect
Os0 f6 mainOut f8 tail #connect
Os0 f8 head f7 mainIn #connect
