<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="com.nit.dto.Employee" %>
<%
Employee emp = (Employee) request.getAttribute("emp");
%>

<form action="update" method="post">
    <input type="hidden" name="id" value="<%=emp.getId()%>">

    Name: <input type="text" name="name" value="<%=emp.getName()%>"><br>
    Email: <input type="text" name="email" value="<%=emp.getEmail()%>"><br>
    Salary: <input type="text" name="salary" value="<%=emp.getSalary()%>"><br>

    <button type="submit">Update</button>
</form>
</body>
</html>