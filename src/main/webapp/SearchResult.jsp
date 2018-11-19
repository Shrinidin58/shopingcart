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
<jsp:include page="welcome.jsp"></jsp:include>
</head>
<body>

<%List<Details> dbean=(List<Details>)request.getAttribute("detailsBean");%>
<table width="100%" height="100%">
<%if(dbean!=null){ %>

<%for(Details details:dbean){ %>

<table >
<tr>
<a href= "#">
<!-- <img  src="shoppingcart/src/main/webapp/images/parker pen.png" width="50%" height="50%"></img></a>  -->
 <img  src="webapp/images/"+"<%=details.getId() %>"+".jpg" width="50%" height="50%"></img> </a> 
</tr><tr>

</tr><tr>
<h5>Name of the product : <%=details.getFullName() %></h5>

</tr><tr>
<h5>Price : <%=details.getPrice() %></h5>

</tr>
</table>

<%} %>
<%}else{ %>
<h5>no product found</h5>
<%} %>

</table>
</body>
<img  src="webapp/images/gel pen.jpg" width="50%" height="50%"></img>
<%-- <jsp:include page="footer.jsp"></jsp:include> --%>
</html>