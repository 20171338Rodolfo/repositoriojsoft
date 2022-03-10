<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleServiceCrudS_RegionProxyid" scope="session" class="org.service.sregion.ServiceCrudS_RegionProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleServiceCrudS_RegionProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        String id_0id=  request.getParameter("id5");
        int id_0idTemp  = Integer.parseInt(id_0id);
        String name_1id=  request.getParameter("name7");
            java.lang.String name_1idTemp = null;
        if(!name_1id.equals("")){
         name_1idTemp  = name_1id;
        }
        java.lang.String agregaS_Region2mtemp = sampleServiceCrudS_RegionProxyid.agregaS_Region(id_0idTemp,name_1idTemp);
if(agregaS_Region2mtemp == null){
%>
<%=agregaS_Region2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(agregaS_Region2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 9:
        gotMethod = true;
        String id_2id=  request.getParameter("id12");
        int id_2idTemp  = Integer.parseInt(id_2id);
        java.lang.String eliminaS_Region9mtemp = sampleServiceCrudS_RegionProxyid.eliminaS_Region(id_2idTemp);
if(eliminaS_Region9mtemp == null){
%>
<%=eliminaS_Region9mtemp %>
<%
}else{
        String tempResultreturnp10 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(eliminaS_Region9mtemp));
        %>
        <%= tempResultreturnp10 %>
        <%
}
break;
case 14:
        gotMethod = true;
        String name_3id=  request.getParameter("name17");
            java.lang.String name_3idTemp = null;
        if(!name_3id.equals("")){
         name_3idTemp  = name_3id;
        }
        String id_4id=  request.getParameter("id19");
        int id_4idTemp  = Integer.parseInt(id_4id);
        java.lang.String actualizarS_Region14mtemp = sampleServiceCrudS_RegionProxyid.actualizarS_Region(name_3idTemp,id_4idTemp);
if(actualizarS_Region14mtemp == null){
%>
<%=actualizarS_Region14mtemp %>
<%
}else{
        String tempResultreturnp15 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(actualizarS_Region14mtemp));
        %>
        <%= tempResultreturnp15 %>
        <%
}
break;
case 21:
        gotMethod = true;
        String id_5id=  request.getParameter("id24");
        int id_5idTemp  = Integer.parseInt(id_5id);
        java.lang.String consultaIndividualS_Region21mtemp = sampleServiceCrudS_RegionProxyid.consultaIndividualS_Region(id_5idTemp);
if(consultaIndividualS_Region21mtemp == null){
%>
<%=consultaIndividualS_Region21mtemp %>
<%
}else{
        String tempResultreturnp22 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(consultaIndividualS_Region21mtemp));
        %>
        <%= tempResultreturnp22 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>