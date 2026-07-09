<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>

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
    width:450px;
    background:rgba(255,255,255,0.08);
    backdrop-filter:blur(15px);
    border-radius:18px;
    padding:40px;
    box-shadow:0 15px 40px rgba(0,0,0,.45);
    border:1px solid rgba(255,255,255,.12);
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
}

input::placeholder{
    color:#9ca3af;
}

input:focus{
    border:2px solid #3b82f6;
}

.btn{
    width:100%;
    padding:15px;
    margin-top:10px;
    border:none;
    border-radius:10px;
    background:#10b981;
    color:white;
    font-size:18px;
    font-weight:bold;
    cursor:pointer;
    transition:.3s;
}

.btn:hover{
    background:#059669;
    transform:translateY(-2px);
}

.back{
    display:block;
    text-align:center;
    margin-top:18px;
    color:#60a5fa;
    text-decoration:none;
    font-weight:bold;
}

.back:hover{
    color:white;
}

.footer{
    text-align:center;
    color:#9ca3af;
    margin-top:25px;
    font-size:13px;
}

</style>

</head>

<body>

<div class="container">

<h2>➕ Add Employee</h2>

<form action="add" method="post">

<div class="input-group">
<label>Employee Name</label>
<input type="text" name="name" placeholder="Enter employee name" required>
</div>

<div class="input-group">
<label>Email Address</label>
<input type="email" name="email" placeholder="Enter email address" required>
</div>

<div class="input-group">
<label>Salary</label>
<input type="number" name="salary" placeholder="Enter salary" required>
</div>

<button class="btn" type="submit">
💾 Save Employee
</button>

</form>

<a href="index.jsp" class="back">⬅ Back to Home</a>

<div class="footer">
Employee Management System | JSP • Servlet • JDBC • MySQL
</div>

</div>

</body>
</html>
