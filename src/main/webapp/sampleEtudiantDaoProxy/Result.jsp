<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleEtudiantDaoProxyid" scope="session" class="Dao.EtudiantDaoProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleEtudiantDaoProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleEtudiantDaoProxyid.getEndpoint();
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
                sampleEtudiantDaoProxyid.setEndpoint(endpoint_0idTemp);
        break;
        case 10:
                gotMethod = true;
                Service.EtudiantDao getEtudiantDao10mtemp = sampleEtudiantDaoProxyid.getEtudiantDao();
        if(getEtudiantDao10mtemp == null){
        %>
<%=getEtudiantDao10mtemp %>
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
        String idF_1id=  request.getParameter("idF18");
        int idF_1idTemp  = Integer.parseInt(idF_1id);
        String nom_3id=  request.getParameter("nom22");
            java.lang.String nom_3idTemp = null;
        if(!nom_3id.equals("")){
         nom_3idTemp  = nom_3id;
        }
        String nom_5id=  request.getParameter("nom26");
            java.lang.String nom_5idTemp = null;
        if(!nom_5id.equals("")){
         nom_5idTemp  = nom_5id;
        }
        String description_6id=  request.getParameter("description28");
            java.lang.String description_6idTemp = null;
        if(!description_6id.equals("")){
         description_6idTemp  = description_6id;
        }
        String id_7id=  request.getParameter("id30");
        int id_7idTemp  = Integer.parseInt(id_7id);
        %>
        <jsp:useBean id="Models1Filliere_4id" scope="session" class="Service.Filliere" />
        <%
        Models1Filliere_4id.setNom(nom_5idTemp);
                Models1Filliere_4id.setDescription(description_6idTemp);
                Models1Filliere_4id.setId(id_7idTemp);
                String id_8id=  request.getParameter("id32");
                int id_8idTemp  = Integer.parseInt(id_8id);
        %>
        <jsp:useBean id="Models1Etudiant_2id" scope="session" class="Service.Etudiant" />
        <%
        Models1Etudiant_2id.setNom(nom_3idTemp);
                        Models1Etudiant_2id.setFiliere(Models1Filliere_4id);
                        Models1Etudiant_2id.setId(id_8idTemp);
                        int addEtudiant15mtemp = sampleEtudiantDaoProxyid.addEtudiant(idF_1idTemp,Models1Etudiant_2id);
                        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addEtudiant15mtemp));
        %>
        <%=tempResultreturnp16%>
        <%
        break;
                case 34:
                        gotMethod = true;
                        String nom_9id=  request.getParameter("nom37");
                            java.lang.String nom_9idTemp = null;
                        if(!nom_9id.equals("")){
                         nom_9idTemp  = nom_9id;
                        }
                        String nom_11id=  request.getParameter("nom41");
                            java.lang.String nom_11idTemp = null;
                        if(!nom_11id.equals("")){
                         nom_11idTemp  = nom_11id;
                        }
                        String description_12id=  request.getParameter("description43");
                            java.lang.String description_12idTemp = null;
                        if(!description_12id.equals("")){
                         description_12idTemp  = description_12id;
                        }
                        String id_13id=  request.getParameter("id45");
                        int id_13idTemp  = Integer.parseInt(id_13id);
        %>
        <jsp:useBean id="Models1Filliere_10id" scope="session" class="Service.Filliere" />
        <%
        Models1Filliere_10id.setNom(nom_11idTemp);
                        Models1Filliere_10id.setDescription(description_12idTemp);
                        Models1Filliere_10id.setId(id_13idTemp);
                        int addEtudiant134mtemp = sampleEtudiantDaoProxyid.addEtudiant1(nom_9idTemp,Models1Filliere_10id);
                        String tempResultreturnp35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addEtudiant134mtemp));
        %>
        <%=tempResultreturnp35%>
        <%
        break;
                case 47:
                        gotMethod = true;
                        Service.Etudiant[] getAlletudiants47mtemp = sampleEtudiantDaoProxyid.getAlletudiants();
                if(getAlletudiants47mtemp == null){
        %>
<%=getAlletudiants47mtemp%>
<%
}else{
        String tempreturnp48 = null;
        if(getAlletudiants47mtemp != null){
        java.util.List listreturnp48= java.util.Arrays.asList(getAlletudiants47mtemp);
        tempreturnp48 = listreturnp48.toString();
        }
%>
        <%=tempreturnp48%>
        <%
        }
                break;
                case 50:
                        gotMethod = true;
                        String id_14id=  request.getParameter("id65");
                        int id_14idTemp  = Integer.parseInt(id_14id);
                        Service.Etudiant getEtudiant50mtemp = sampleEtudiantDaoProxyid.getEtudiant(id_14idTemp);
                if(getEtudiant50mtemp == null){
        %>
<%=getEtudiant50mtemp%>
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
if(getEtudiant50mtemp != null){
java.lang.String typenom53 = getEtudiant50mtemp.getNom();
        String tempResultnom53 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenom53));
%>
        <%=tempResultnom53%>
        <%
        }
        %>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">filiere:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">nom:</TD>
<TD>
<%
if(getEtudiant50mtemp != null){
Service.Filliere tebece0=getEtudiant50mtemp.getFiliere();
if(tebece0 != null){
java.lang.String typenom57 = tebece0.getNom();
        String tempResultnom57 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenom57));
%>
        <%=tempResultnom57%>
        <%
        }}
        %>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">description:</TD>
<TD>
<%
if(getEtudiant50mtemp != null){
Service.Filliere tebece0=getEtudiant50mtemp.getFiliere();
if(tebece0 != null){
java.lang.String typedescription59 = tebece0.getDescription();
        String tempResultdescription59 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescription59));
%>
        <%=tempResultdescription59%>
        <%
        }}
        %>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getEtudiant50mtemp != null){
Service.Filliere tebece0=getEtudiant50mtemp.getFiliere();
if(tebece0 != null){
%>
<%=tebece0.getId()%><%
}}
%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getEtudiant50mtemp != null){
%>
<%=getEtudiant50mtemp.getId()%><%
}
%>
</TD>
</TABLE>
<%
}
break;
case 67:
        gotMethod = true;
        String id_15id=  request.getParameter("id70");
        int id_15idTemp  = Integer.parseInt(id_15id);
        int deleteEtudiant67mtemp = sampleEtudiantDaoProxyid.deleteEtudiant(id_15idTemp);
        String tempResultreturnp68 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteEtudiant67mtemp));
%>
        <%=tempResultreturnp68%>
        <%
        break;
                case 72:
                        gotMethod = true;
                        String id_16id=  request.getParameter("id75");
                        int id_16idTemp  = Integer.parseInt(id_16id);
                        String nom_18id=  request.getParameter("nom79");
                            java.lang.String nom_18idTemp = null;
                        if(!nom_18id.equals("")){
                         nom_18idTemp  = nom_18id;
                        }
                        String nom_20id=  request.getParameter("nom83");
                            java.lang.String nom_20idTemp = null;
                        if(!nom_20id.equals("")){
                         nom_20idTemp  = nom_20id;
                        }
                        String description_21id=  request.getParameter("description85");
                            java.lang.String description_21idTemp = null;
                        if(!description_21id.equals("")){
                         description_21idTemp  = description_21id;
                        }
                        String id_22id=  request.getParameter("id87");
                        int id_22idTemp  = Integer.parseInt(id_22id);
        %>
        <jsp:useBean id="Models1Filliere_19id" scope="session" class="Service.Filliere" />
        <%
        Models1Filliere_19id.setNom(nom_20idTemp);
                Models1Filliere_19id.setDescription(description_21idTemp);
                Models1Filliere_19id.setId(id_22idTemp);
                String id_23id=  request.getParameter("id89");
                int id_23idTemp  = Integer.parseInt(id_23id);
        %>
        <jsp:useBean id="Models1Etudiant_17id" scope="session" class="Service.Etudiant" />
        <%
        Models1Etudiant_17id.setNom(nom_18idTemp);
        Models1Etudiant_17id.setFiliere(Models1Filliere_19id);
        Models1Etudiant_17id.setId(id_23idTemp);
        String idF_24id=  request.getParameter("idF91");
        int idF_24idTemp  = Integer.parseInt(idF_24id);
        int updateEtudiant72mtemp = sampleEtudiantDaoProxyid.updateEtudiant(id_16idTemp,Models1Etudiant_17id,idF_24idTemp);
        String tempResultreturnp73 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateEtudiant72mtemp));
        %>
        <%= tempResultreturnp73 %>
        <%
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