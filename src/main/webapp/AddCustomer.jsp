<%--
  Created by IntelliJ IDEA.
  User: Akitoshi
  Date: 28-Jul-21
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
<form action="/customer" method="post">
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
            <tr>
                <td><input placeholder="nhập name" name="name"></td>
                <td><input placeholder="nhập date" name="date"></td>
                <td><input placeholder="nhập address" name="address"></td>
                <td><input type="file" name="img"></td>
            </tr>
            </tbody>
        </table>
    </div>
    <button type="submit" class="btn btn-success">Create</button>
</form>
</body>
</html>