<%@ page import="java.util.*, com.nit.dto.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    background:linear-gradient(135deg,#111827,#1f2937,#0f172a);
    min-height:100vh;
    padding:40px;
}

.container{
    max-width:1100px;
    margin:auto;
    background:rgba(255,255,255,.08);
    backdrop-filter:blur(15px);
    border-radius:20px;
    padding:35px;
    border:1px solid rgba(255,255,255,.12);
    box-shadow:0 15px 40px rgba(0,0,0,.4);
}

.header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:30px;
}

h2{
    color:white;
}

.add-btn{
    text-decoration:none;
    background:#10b981;
    color:white;
    padding:12px 22px;
    border-radius:10px;
    font-weight:bold;
    transition:.3s;
}

.add-btn:hover{
    background:#059669;
    transform:translateY(-2px);
}

table{
    width:100%;
    border-collapse:collapse;
    overflow:hidden;
    border-radius:12px;
}

th{
    background:#2563eb;
    color:white;
    padding:16px;
}

td{
    background:#374151;
    color:white;
    padding:14px;
    text-align:center;
    border-bottom:1px solid rgba(255,255,255,.08);
}

tr:hover td{
    background:#4b5563;
}

.edit{
    text-decoration:none;
    background:#f59e0b;
    color:white;
    padding:8px 15px;
    border-radius:8px;
    margin-right:8px;
    transition:.3s;
}

.edit:hover{
    background:#d97706;
}

.delete{
    text-decoration:none;
    background:#ef4444;
    color:white;
    padding:8px 15px;
    border-radius:8px;
    transition:.3s;
}

.delete:hover{
    background:#dc2626;
}

.home{
    display:inline-block;
    margin-top:25px;
    text-decoration:none;
    color:#60a5fa;
    font-weight:bold;
}

.home:hover{
    color:white;
}

.footer{
    margin-top:30px;
    text-align:center;
    color:#9ca3af;
    font-size:14px;
}

</style>

</head>

<body>

<div class="container">

<div class="header">
<h2>📋 Employee List</h2>

<a href="add-employee.jsp" class="add-btn">
➕ Add Employee
</a>

</div>

<table>

<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Salary</th>
<th>Actions</th>
</tr>

<%
List<Employee> list=(List<Employee>)request.getAttribute("list");

if(list!=null && !list.isEmpty()){
    for(Employee e:list){
%>

<tr>

<td><%=e.getId()%></td>
<td><%=e.getName()%></td>
<td><%=e.getEmail()%></td>
<td>₹ <%=e.getSalary()%></td>

<td>

<a href="edit?id=<%=e.getId()%>" class="edit">
✏ Edit
</a>

<a href="delete?id=<%=e.getId()%>"
class="delete"
onclick="return confirm('Are you sure you want to delete this employee?');">
🗑 Delete
</a>

</td>

</tr>

<%
    }
}
else{
%>

<tr>
<td colspan="5">
No Employees Found
</td>
</tr>

<%
}
%>

</table>

<a href="index.jsp" class="home">
🏠 Back to Home
</a>

<div class="footer">
Employee Management System | JSP • Servlet • JDBC • MySQL
</div>

</div>

</body>
</html>
