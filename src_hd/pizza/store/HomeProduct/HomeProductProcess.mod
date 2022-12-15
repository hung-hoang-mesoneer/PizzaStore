[Ivy]
[>Created: Thu Dec 15 11:17:37 ICT 2022]
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
Hs0 @RichDialogProcessStart f13 '' #zField
Hs0 @RichDialogProcessEnd f1 '' #zField
Hs0 @PushWFArc f2 '' #zField
Hs0 @RichDialogProcessEnd f14 '' #zField
Hs0 @GridStep f16 '' #zField
Hs0 @PushWFArc f17 '' #zField
Hs0 @PushWFArc f15 '' #zField
Hs0 @RichDialogMethodStart f23 '' #zField
Hs0 @RichDialogProcessEnd f24 '' #zField
Hs0 @PushWFArc f25 '' #zField
Hs0 @RichDialogProcessStart f8 '' #zField
Hs0 @RichDialogProcessEnd f9 '' #zField
Hs0 @RichDialog f11 '' #zField
Hs0 @PushWFArc f12 '' #zField
Hs0 @PushWFArc f10 '' #zField
>Proto Hs0 Hs0 HomeProductProcess #zField
Hs0 f0 guid 184E19F7209B2DE1 #txt
Hs0 f0 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f0 method start() #txt
Hs0 f0 disableUIEvents true #txt
Hs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Hs0 f0 inActionCode 'import pizza.store.model.Product;
import java.util.ArrayList;
import pizza.store.model.Order;

out.order = new Order();
out.productOrders = new ArrayList<Integer>();' #txt
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
Hs0 f6 actionCode 'import org.apache.commons.lang.StringUtils;
import pizza.store.ProductType;
import pizza.store.restClient.ProductClient;
import pizza.store.service.ProductService;
in.dataPizzas = ProductService.getPizzas();
in.dataDrinks = ProductService.getDrinks();

//in.dataDrinks = ProductClient.getProducts(StringUtils.EMPTY, ProductType.DRINK);
//in.dataPizzas = ProductClient.getProducts(StringUtils.EMPTY,ProductType.PIZZA);
' #txt
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
Hs0 f16 actionCode 'import pizza.store.restClient.OrderClient;
import pizza.store.service.OrderService;
import pizza.store.service.ProductService;
in.order.setProductIds(in.productOrders);
//OrderService.createOrder(in.order);
OrderClient.createOrder(in.order);
in.productOrders.clear();' #txt
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
Hs0 f23 guid 185054E627E1F978 #txt
Hs0 f23 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f23 method addItemToCart(java.lang.Integer) #txt
Hs0 f23 disableUIEvents false #txt
Hs0 f23 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Integer id> param = methodEvent.getInputArguments();
' #txt
Hs0 f23 inActionCode out.productOrders.add(param.id); #txt
Hs0 f23 outParameterDecl '<> result;
' #txt
Hs0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addItemToCart(Integer)</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f23 91 267 26 26 -64 15 #rect
Hs0 f23 @|RichDialogMethodStartIcon #fIcon
Hs0 f24 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f24 283 267 26 26 0 12 #rect
Hs0 f24 @|RichDialogProcessEndIcon #fIcon
Hs0 f25 expr out #txt
Hs0 f25 117 280 283 280 #arcP
Hs0 f8 guid 1850725AC03D85C7 #txt
Hs0 f8 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f8 actionDecl 'pizza.store.HomeProduct.HomeProductData out;
' #txt
Hs0 f8 actionTable 'out=in;
' #txt
Hs0 f8 actionCode 'import pizaa.store.security.SecurityUtils;
SecurityUtils.logout();' #txt
Hs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logout</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f8 83 339 26 26 -17 15 #rect
Hs0 f8 @|RichDialogProcessStartIcon #fIcon
Hs0 f9 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f9 339 339 26 26 0 12 #rect
Hs0 f9 @|RichDialogProcessEndIcon #fIcon
Hs0 f11 targetWindow NEW:card: #txt
Hs0 f11 targetDisplay TOP #txt
Hs0 f11 richDialogId pizza.store.Login #txt
Hs0 f11 startMethod start() #txt
Hs0 f11 type pizza.store.HomeProduct.HomeProductData #txt
Hs0 f11 requestActionDecl '<> param;' #txt
Hs0 f11 responseActionDecl 'pizza.store.HomeProduct.HomeProductData out;
' #txt
Hs0 f11 responseMappingAction 'out=in;
' #txt
Hs0 f11 windowConfiguration '* ' #txt
Hs0 f11 isAsynch false #txt
Hs0 f11 isInnerRd true #txt
Hs0 f11 userContext '* ' #txt
Hs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Go back login</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f11 168 330 112 44 -37 -8 #rect
Hs0 f11 @|RichDialogIcon #fIcon
Hs0 f12 expr out #txt
Hs0 f12 109 352 168 352 #arcP
Hs0 f10 expr out #txt
Hs0 f10 280 352 339 352 #arcP
>Proto Hs0 .type pizza.store.HomeProduct.HomeProductData #txt
>Proto Hs0 .processKind HTML_DIALOG #txt
>Proto Hs0 -8 -8 16 16 16 26 #rect
>Proto Hs0 '' #fIcon
Hs0 f3 mainOut f5 tail #connect
Hs0 f5 head f4 mainIn #connect
Hs0 f0 mainOut f7 tail #connect
Hs0 f7 head f6 mainIn #connect
Hs0 f6 mainOut f2 tail #connect
Hs0 f2 head f1 mainIn #connect
Hs0 f13 mainOut f17 tail #connect
Hs0 f17 head f16 mainIn #connect
Hs0 f16 mainOut f15 tail #connect
Hs0 f15 head f14 mainIn #connect
Hs0 f23 mainOut f25 tail #connect
Hs0 f25 head f24 mainIn #connect
Hs0 f8 mainOut f12 tail #connect
Hs0 f12 head f11 mainIn #connect
Hs0 f11 mainOut f10 tail #connect
Hs0 f10 head f9 mainIn #connect
