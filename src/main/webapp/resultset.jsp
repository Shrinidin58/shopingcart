<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="com.teamsankya.shoppingcart.dto.Category" %>
<%@page import="com.teamsankya.shoppingcart.dto.Details" %>
<%@page import="com.teamsankya.shoppingcart.dto.DetailsId" %>
<%@page import="com.teamsankya.shoppingcart.dto.Products" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>search result</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<jsp:include page="welcome.jsp"></jsp:include>

<ui:dataGrid items="${detailsBean}" var="employee" name="datagrid1" cellPadding="0" 

cellSpacing="0" styleClass="datagrid" >
<%List<Details> dbean=(List<Details>)request.getAttribute("detailsBean");%>
<table width="100%" height="100%">
<%if(dbean!=null){ %>
<%for(Details details:dbean){ %>
<columns>
<column width="50">

<header value="" hAlign="left" styleClass="header"/>
</column>
<column width="200">
<header value="Name" hAlign="left" styleClass="header"/>

<%=details.getBean().getName() %>
<styleClass="item"/>
</column>
<column width="200">

<header value="Username" hAlign="left" styleClass="header"/>
<%=details.getBean().getId() %>
</column>
<column width="200">
<header value="Email" hAlign="left" styleClass="header"/>
<%=details.getFullName() %>
</column>
<column width="100">
<header value="Country" hAlign="left" styleClass="header"/>
<%=details.getPrice() %>
</column>
<%} %>
<%}else{ %>
<h5>no product found</h5>
<%}%>



<!-- <column width="50">

<header value="" hAlign="left" styleClass="header"/>



</column>



<column width="200">

<header value="Name" hAlign="left" styleClass="header"/>
 -->
<%-- <item value="${employee.firstName} ${employee.lastName}" hAlign="left"  --%>

<!-- styleClass="item"/>





</column> -->

<!-- <column width="200">

<header value="Username" hAlign="left" styleClass="header"/> -->

<%-- <item value="${employee.username}" hAlign="left" styleClass="item"/>

</column> --%>

<!-- <column width="200">

<header value="Email" hAlign="left" styleClass="header"/> -->

<%-- <item value="${employee.email}" hAlign="left" styleClass="item"/>

</column>
 --%>

<!-- <column width="100">

<header value="Country" hAlign="left" styleClass="header"/>
 -->
<%-- <item value="${employee.country}" hAlign="left" styleClass="item"/>

</column>



</columns> --%>

<rows styleClass="rows" hiliteStyleClass="hiliterows"/>

<alternateRows styleClass="alternaterows"/>



<paging size="10" count="${tCount}" custom="true" nextUrlVar="next" 

previousUrlVar="previous" pagesVar="pages"/>

<order imgAsc="up.gif" imgDesc="down.gif"/>

</ui:dataGrid>

<table width="750" style="font-family: arial; font-size: 10pt" border=0>



<tr>

<td align="left" width="33%">

<c:if test="${previous != null}">

<a href="<c:out value="${previous}"/>">Previous</a>

</c:if>&nbsp;

</td>

<td align="center" width="33%">

<c:forEach items="${pages}" var="page">

<c:choose>

<c:when test="${page.current}">

<b><a href="<c:out value="${page.url}"/>"><c:out value="${page.resultset}"/></a></b>

</c:when>

<c:otherwise>

<a href="<c:out value="${page.url}"/>"><c:out value="${page.resultset}"/></a>

</c:otherwise>

</c:choose>

</c:forEach>

</td>

<td align="right" width="33%">&nbsp;

<c:if test="${next != null}">

<a href="<c:out value="${next}"/>">Next</a>

</c:if>

</td>

</tr>
</columns>

</table>

</body>
</html>