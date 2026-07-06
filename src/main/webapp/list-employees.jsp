<%@ page import="java.util.*, com.nit.dto.Employee" %>

<a href="add-employee.jsp">Add New Employee</a><br><br>

<table border="1">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Salary</th>
    <th>Action</th>
</tr>

<%
List<Employee> list = (List<Employee>) request.getAttribute("list");
for(Employee e : list) {
%>
<tr>
    <td><%=e.getId()%></td>
    <td><%=e.getName()%></td>
    <td><%=e.getEmail()%></td>
    <td><%=e.getSalary()%></td>
    <td>
        <a href="edit?id=<%=e.getId()%>">Edit</a> |
        <a href="delete?id=<%=e.getId()%>">Delete</a>
    </td>
</tr>
<% } %>
</table>