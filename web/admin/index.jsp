<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<c:out value="yess"></c:out>--%>
<s:set var="test" value="#attr.ttttttt"/>
<c:if test="${test=='yess'}">
    <c:out value="${test}"></c:out>
</c:if>
