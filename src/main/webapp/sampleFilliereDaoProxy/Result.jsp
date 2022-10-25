<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleFilliereDaoProxyid" scope="session" class="Dao.FilliereDaoProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleFilliereDaoProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleFilliereDaoProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleFilliereDaoProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        Dao.FilliereDao getFilliereDao10mtemp = sampleFilliereDaoProxyid.getFilliereDao();
if(getFilliereDao10mtemp == null){
%>
<%=getFilliereDao10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        String id_1id=  request.getParameter("id18");
        int id_1idTemp  = Integer.parseInt(id_1id);
        String nom_3id=  request.getParameter("nom22");
            java.lang.String nom_3idTemp = null;
        if(!nom_3id.equals("")){
         nom_3idTemp  = nom_3id;
        }
        String description_4id=  request.getParameter("description24");
            java.lang.String description_4idTemp = null;
        if(!description_4id.equals("")){
         description_4idTemp  = description_4id;
        }
        String id_5id=  request.getParameter("id26");
        int id_5idTemp  = Integer.parseInt(id_5id);
        %>
        <jsp:useBean id="Models1Filliere_2id" scope="session" class="Service.Filliere" />
        <%
        Models1Filliere_2id.setNom(nom_3idTemp);
                Models1Filliere_2id.setDescription(description_4idTemp);
                Models1Filliere_2id.setId(id_5idTemp);
                int updateFilliere15mtemp = sampleFilliereDaoProxyid.updateFilliere(id_1idTemp,Models1Filliere_2id);
                String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateFilliere15mtemp));
        %>
        <%=tempResultreturnp16%>
        <%
        break;
        case 28:
                gotMethod = true;
                Service.Filliere[] getAllFillieres28mtemp = sampleFilliereDaoProxyid.getAllFillieres();
        if(getAllFillieres28mtemp == null){
        %>
<%=getAllFillieres28mtemp%>
<%
}else{
        String tempreturnp29 = null;
        if(getAllFillieres28mtemp != null){
        java.util.List listreturnp29= java.util.Arrays.asList(getAllFillieres28mtemp);
        tempreturnp29 = listreturnp29.toString();
        }
%>
        <%=tempreturnp29%>
        <%
        }
        break;
        case 31:
                gotMethod = true;
                String nom_7id=  request.getParameter("nom36");
                    java.lang.String nom_7idTemp = null;
                if(!nom_7id.equals("")){
                 nom_7idTemp  = nom_7id;
                }
                String description_8id=  request.getParameter("description38");
                    java.lang.String description_8idTemp = null;
                if(!description_8id.equals("")){
                 description_8idTemp  = description_8id;
                }
                String id_9id=  request.getParameter("id40");
                int id_9idTemp  = Integer.parseInt(id_9id);
        %>
        <jsp:useBean id="Models1Filliere_6id" scope="session" class="Service.Filliere" />
        <%
        Models1Filliere_6id.setNom(nom_7idTemp);
                Models1Filliere_6id.setDescription(description_8idTemp);
                Models1Filliere_6id.setId(id_9idTemp);
                int addFilliere31mtemp = sampleFilliereDaoProxyid.addFilliere(Models1Filliere_6id);
                String tempResultreturnp32 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addFilliere31mtemp));
        %>
        <%=tempResultreturnp32%>
        <%
        break;
        case 42:
                gotMethod = true;
                String id_10id=  request.getParameter("id45");
                int id_10idTemp  = Integer.parseInt(id_10id);
                int deleteFilliere42mtemp = sampleFilliereDaoProxyid.deleteFilliere(id_10idTemp);
                String tempResultreturnp43 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteFilliere42mtemp));
        %>
        <%=tempResultreturnp43%>
        <%
        break;
        case 47:
                gotMethod = true;
                String nom_11id=  request.getParameter("nom50");
                    java.lang.String nom_11idTemp = null;
                if(!nom_11id.equals("")){
                 nom_11idTemp  = nom_11id;
                }
                String description_12id=  request.getParameter("description52");
                    java.lang.String description_12idTemp = null;
                if(!description_12id.equals("")){
                 description_12idTemp  = description_12id;
                }
                int addFilliere147mtemp = sampleFilliereDaoProxyid.addFilliere1(nom_11idTemp,description_12idTemp);
                String tempResultreturnp48 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addFilliere147mtemp));
        %>
        <%=tempResultreturnp48%>
        <%
        break;
        case 54:
                gotMethod = true;
                String id_13id=  request.getParameter("id63");
                int id_13idTemp  = Integer.parseInt(id_13id);
                Service.Filliere getFilliere54mtemp = sampleFilliereDaoProxyid.getFilliere(id_13idTemp);
        if(getFilliere54mtemp == null){
        %>
<%=getFilliere54mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nom:</TD>
<TD>
<%
if(getFilliere54mtemp != null){
java.lang.String typenom57 = getFilliere54mtemp.getNom();
        String tempResultnom57 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenom57));
        %>
        <%= tempResultnom57 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">description:</TD>
<TD>
<%
if(getFilliere54mtemp != null){
java.lang.String typedescription59 = getFilliere54mtemp.getDescription();
        String tempResultdescription59 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescription59));
        %>
        <%= tempResultdescription59 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getFilliere54mtemp != null){
%>
<%=getFilliere54mtemp.getId()
%><%}%>
</TD>
</TABLE>
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