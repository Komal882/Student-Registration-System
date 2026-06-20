<%@ page import="java.sql.*" %>

<%
int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String email = request.getParameter("email");

Connection con = DriverManager.getConnection(
"jdbc:oracle:thin:@localhost:1521:xe", "system", "12345");

PreparedStatement ps = con.prepareStatement(
"UPDATE users SET name=?, email=? WHERE id=?");

ps.setString(1, name);
ps.setString(2, email);
ps.setInt(3, id);

ps.executeUpdate();

response.sendRedirect("view.jsp");
%>