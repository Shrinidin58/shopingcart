<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="com.teamsankya.shoppingcart.dto.Category" %>
<%@page import="com.teamsankya.shoppingcart.dto.Details" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

</head>
 <%boolean check = true;
 List<Details> dbean=null;%>
<% dbean=(List<Details>)session.getAttribute("detailsBean");%>

<%    /*  boolean check = true;
    ArrayList arrayList = null;
    arrayList = (ArrayList)session.getAttribute("myDataList"); */
    %>
  <%
    int arrayListSize = 0;     
    if(dbean != null)
      arrayListSize = dbean.size();
    // Number of Records that need to displayed per page
    // make the increment value 5 and check it will display only 5 records per page
    int increment = 2;
    int fromIndex = 0;
    int toIndex = increment;
    String uri = request.getRequestURI();
    String previous= "Previous";
    String next = "Next";
    List displayList = null;
    if( null != request.getParameter("next"))
    {
        fromIndex = Integer.parseInt(request.getParameter("next"));
        toIndex = increment + fromIndex;
        if( toIndex+1 > arrayListSize)
        {
            toIndex = arrayListSize;
            check = false;
        }
        if( fromIndex > arrayListSize)
            fromIndex = 0;
    }

    if( null != request.getParameter("prev"))
    {
        toIndex = Integer.parseInt(request.getParameter("prev"));
        fromIndex = toIndex - increment;
    }
    if(arrayListSize > 0)
    {
      if(increment > arrayListSize){
        toIndex = arrayListSize;
        displayList = dbean.subList(fromIndex, toIndex);
        toIndex = 0;
      }else{
          displayList = dbean.subList(fromIndex, toIndex);
          System.out.println(displayList);
      }
   }
    if(fromIndex != 0)
       previous = "<a href="+ uri +"?prev="+ fromIndex +"> Previous </a>";
    if(toIndex != 0 && check)
       next = "<a href="+ uri +"?next="+ toIndex +"> Next </a>";
       System.out.println(displayList.toString());
  %>


</body>
</html>