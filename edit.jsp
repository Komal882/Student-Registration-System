<%@ page import="java.sql.*" %>

<%
int id = Integer.parseInt(request.getParameter("id"));

Connection con = DriverManager.getConnection(
"jdbc:oracle:thin:@localhost:1521:xe", "system", "12345");

PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE id=?");
ps.setInt(1, id);

ResultSet rs = ps.executeQuery();
rs.next();
%>

<html>
<body>

<h2>Edit User</h2>

<form action="update.jsp" method="post">
    <input type="hidden" name="id" value="<%= rs.getInt(1) %>">

    Name: <input type="text" name="name" value="<%= rs.getString(2) %>"><br><br>
    Email: <input type="text" name="email" value="<%= rs.getString(3) %>"><br><br>

    <input type="submit" value="Update">
</form>

</body>
</html>