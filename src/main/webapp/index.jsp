<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#1f2937,#111827,#0f172a);
}

.container{
    width:500px;
    background:rgba(255,255,255,0.08);
    backdrop-filter:blur(15px);
    border:1px solid rgba(255,255,255,0.1);
    border-radius:20px;
    padding:50px;
    text-align:center;
    box-shadow:0 10px 40px rgba(0,0,0,0.45);
}

.logo{
    font-size:65px;
    margin-bottom:15px;
}

h1{
    color:white;
    margin-bottom:10px;
    font-size:34px;
}

p{
    color:#d1d5db;
    margin-bottom:40px;
    font-size:17px;
}

.btn{
    display:block;
    width:100%;
    text-decoration:none;
    color:white;
    padding:16px;
    margin:18px 0;
    border-radius:12px;
    font-size:18px;
    font-weight:bold;
    transition:.35s;
}

.view{
    background:#2563eb;
}

.view:hover{
    background:#1d4ed8;
    transform:translateY(-3px);
}

.add{
    background:#10b981;
}

.add:hover{
    background:#059669;
    transform:translateY(-3px);
}

.footer{
    margin-top:35px;
    color:#9ca3af;
    font-size:14px;
}

</style>

</head>

<body>

<div class="container">

<div class="logo">👨‍💼</div>

<h1>Employee Management System</h1>

<p>
Manage employee records quickly and efficiently using
JSP, Servlet, JDBC & MySQL.
</p>

<a href="list" class="btn view">
📋 View Employees
</a>

<a href="add-employee.jsp" class="btn add">
➕ Add Employee
</a>

<div class="footer">
Powered by JSP • Servlet • JDBC • MySQL
</div>

</div>

</body>
</html>
