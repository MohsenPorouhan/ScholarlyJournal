<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<s:set var='result' value='#attr.output'/>--%>
<%--<c:out value='${result}'/>--%>
<%--<s:property value="#attr.list" escape="false" />--%>
<option value=""></option>
<s:iterator value="list" var="referee">
<option value="<s:property value="#referee[0]"/>"><s:property value="#referee[1]"/> <s:property value="#referee[2]"/></option>
</s:iterator>