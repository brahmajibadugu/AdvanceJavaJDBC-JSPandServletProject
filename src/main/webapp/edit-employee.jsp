<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.nit.dto.Employee" %>

<%
Employee emp = (Employee) request.getAttribute("emp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    display:flex;
    justify-content:center;
    align-items:center;
    min-height:100vh;
    background:linear-gradient(135deg,#111827,#1f2937,#0f172a);
}

.container{
    width:480px;
    background:rgba(255,255,255,.08);
    backdrop-filter:blur(15px);
    border-radius:20px;
    padding:40px;
    border:1px solid rgba(255,255,255,.12);
    box-shadow:0 15px 40px rgba(0,0,0,.45);
}

h2{
    color:white;
    text-align:center;
    margin-bottom:30px;
    font-size:30px;
}

.input-group{
    margin-bottom:20px;
}

label{
    display:block;
    color:#d1d5db;
    margin-bottom:8px;
    font-size:15px;
}

input{
    width:100%;
    padding:14px;
    border:none;
    border-radius:10px;
    outline:none;
    background:#374151;
    color:white;
    font-size:16px;
    transition:.3s;
}

input:focus{
    border:2px solid #3b82f6;
}

.update-btn{
    width:100%;
    padding:15px;
    border:none;
    border-radius:10px;
    background:#2563eb;
    color:white;
    font-size:18px;
    font-weight:bold;
    cursor:pointer;
    transition:.3s;
}

.update-btn:hover{
    background:#1d4ed8;
    transform:translateY(-2px);
}

.back{
    display:block;
    text-align:center;
    margin-top:20px;
    text-decoration:none;
    color:#60a5fa;
    font-weight:bold;
}

.back:hover{
    color:white;
}

.footer{
    margin-top:25px;
    text-align:center;
    color:#9ca3af;
    font-size:13px;
}

</style>

</head>

<body>

<div class="container">

<h2>✏ Update Employee</h2>

<form action="update" method="post">

<input type="hidden" name="id" value="<%=emp.getId()%>">

<div class="input-group">
<label>Employee Name</label>
<input
type="text"
name="name"
value="<%=emp.getName()%>"
required>
</div>

<div class="input-group">
<label>Email Address</label>
<input
type="email"
name="email"
value="<%=emp.getEmail()%>"
required>
</div>

<div class="input-group">
<label>Salary</label>
<input
type="number"
name="salary"
value="<%=emp.getSalary()%>"
required>
</div>

<button class="update-btn" type="submit">
💾 Update Employee
</button>

</form>

<a href="list" class="back">
⬅ Back to Employee List
</a>

<div class="footer">
Employee Management System | JSP • Servlet • JDBC • MySQL
</div>

</div>

</body>
</html>
