<%@ page import="com.google.gson.Gson" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<s:set var='result' value='#attr.output'/>--%>
<%--<c:out value='${result}'/>--%>
<s:property value="#attr.output" escape="false" />
<%
    System.out.println(request.getParameter("iDisplayLength")+"gggggggggg");
//    String input = "{\"sEcho\":2,\"iTotalRecords\":1,\"iTotalDisplayRecords\":1,\"aaData\":[{\"name\":\"hello\",\"message\":\"55555555\",\"edit\":\"a.shouman\"}]}";
//      String input="{\"draw\":2,\"recordsTotal\":57,\"recordsFiltered\":57,\"data\":[{\"name\":\"Airi\",\"name2\":\"Satou\",\"name3\":\"Accountant\",\"name4\":\"Tokyo\",\"name5\":\"28th Nov 08\",\"name6\":\"$162,700\"},{\"name\":\"Angelica\",\"name2\":\"Ramos\",\"name3\":\"Chief Executive Officer (CEO)\",\"name4\":\"London\",\"name5\":\"28th Nov 08\",\"name6\":\"$1,200,000\"},{\"name\":\"Ashton\",\"name2\":\"Cox\",\"name3\":\"Junior Technical Author\",\"name4\":\"San Francisco\",\"name5\":\"12th Jan 09\",\"name6\":\"$86,000\"},{\"name\":\"Bradley\",\"name2\":\"Greer\",\"name3\":\"Software Engineer\",\"name4\":\"London\",\"name5\":\"13th Oct 12\",\"name6\":\"$132,000\"}]}";
//    System.out.println(input);
//    out.print(gson.toJson(input));
//    response.getWriter().write(gson.toJson(input));

//    <s:set var="result" value="#attr.output"/>
//    <c:out value='{"data":[{"path":"/upload/m.porouhanSun-2018-08-26_10-42-53-294-AMJavaScript_js_-_Ming_Li.pdf","peopleID":"1","subject":"JavaScript_js_-_Ming_Li","articleID":"8","status":"unknown"},{"path":"/upload/m.porouhanSat-2018-08-25_05-41-11-625-PMGAN.pdf","peopleID":"1","subject":"Generative Adversarial Networks","articleID":"3","status":"unknown"},{"path":"/upload/m.porouhanSat-2018-08-25_05-01-41-374-PMIntroduction to Deep Learning Business Applications for Developers.pdf","peopleID":"1","subject":"Introduction to Deep Learning Business Applications for Developers","articleID":"2","status":"unknown"}]}'/>
%>