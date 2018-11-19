<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="com.teamsankya.shoppingcart.dto.Category" %>
<%@page import="com.teamsankya.shoppingcart.dto.Details" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%-- <%List<Details> dbean=(List<Details>)request.getAttribute("detailsBean");%> --%>
<script type="text/javascript">
List<Details> dbean=(List<Details>)request.getAttribute("detailsBean");
    var list = new Array();
    var pageList = new Array();
    var currentPage = 1;
    var numberPerPage = 10;
    var numberOfPages = 0;
    var length=dbean.size();
function makeList() {
     for (x = 0; x < length; x++)
        list.push(x); 
       
    numberOfPages = getNumberOfPages();
}
    
function getNumberOfPages() {
    return Math.ceil(list.length / numberPerPage);
}

function nextPage() {
    currentPage += 1;
    loadList();
}

function previousPage() {
    currentPage -= 1;
    loadList();
}

function firstPage() {
    currentPage = 1;
    loadList();
}

function lastPage() {
    currentPage = numberOfPages;
    loadList();
}

function loadList() {
    var begin = ((currentPage - 1) * numberPerPage);
    var end = begin + numberPerPage;

    pageList = list.slice(begin, end);
    drawList();
    check();
}
    
function drawList() {
    document.getElementById("list").innerHTML = "";
    for (r = 0; r < pageList.length; r++) {
        document.getElementById("list").innerHTML += pageList[r] + "  ";
    }
}

function check() {
    document.getElementById("next").disabled = currentPage == numberOfPages ? true : false;
    document.getElementById("previous").disabled = currentPage == 1 ? true : false;
    document.getElementById("first").disabled = currentPage == 1 ? true : false;
    document.getElementById("last").disabled = currentPage == numberOfPages ? true : false;
}

function load() {
    makeList();
    loadList();
}
    
window.onload = load;
</script>

<body>
    <div style="text-align:center;">
    <input type="button" id="first" onclick="firstPage()" value="first" />
    <input type="button" id="next" onclick="nextPage()" value="next" />
    <input type="button" id="previous" onclick="previousPage()" value="previous" />
    <input type="button" id="last" onclick="lastPage()" value="last" />

    <div id="list"></div>
    </div>
</body>

</html>