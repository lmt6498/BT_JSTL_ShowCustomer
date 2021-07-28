<%@ page import="java.util.ArrayList" %>
<%@ page import="bob.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  </head>
  <body>
  <div class="container">
    <h2>Product Table</h2>
    <table class="table">
      <thead>
      <tr>
        <th>Name</th>
        <th>Date</th>
        <th>Address</th>
        <th>Image</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${listCustomer}" var="sp">
      <tr>
        <td>${sp.name}</td>
        <td>${sp.date}</td>
        <td>${sp.address}</td>
        <td><img src="${sp.img}" width="100" height="100"></td>
      </tr>
    </c:forEach>


<%--      <%--%>
<%--        ArrayList<Customer> list = (ArrayList<Customer>) request.getAttribute("listCustomer");--%>
<%--        String str ="";--%>
<%--        for (Customer p:list) {--%>
<%--          str +="<tr> <td>" + p.getName() + "</td><td>" + p.getDate() + "</td><td>" + p.getAddress()+ "</td><td>"+p.getImg()+ "</td></tr>";--%>
<%--        }--%>
<%--        out.println(str);--%>
<%--      %>--%>
      </tbody>
    </table>
  </div>
  <a href="/AddCustomer.jsp" class="btn btn-success">Create</a>
  </body>
</html>
