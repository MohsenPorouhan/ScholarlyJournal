<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<s:set var='result' value='#attr.output'/>--%>
<%--<c:out value='${result}'/>--%>
<%--<s:property value="#attr.list" escape="false" />--%>
<table class="table table-striped table-bordered table-hover" id="sample_dt">
    <thead>
    <tr>
        <th id="th1">
            Idea
        </th>
        <th id="th2">
            Created Date
        </th>
        <th id="th3">
            Referee Name
        </th>
    </tr>
    </thead>
    <tbody>
    <s:iterator value="list" var="evaluator">
        <tr>
            <td><s:property value="#evaluator[0]"/></td>
            <td><s:property value="#evaluator[1]"/></td>
            <td><s:property value="#evaluator[2]"/></td>
        </tr>
    </s:iterator>
    </tbody>
</table>
