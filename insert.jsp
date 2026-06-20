<%@ page import="java.sql.*" %>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String email = request.getParameter("email");

try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection(
        "jdbc:oracle:thin:@localhost:1521:xe", "system", "12345");

    PreparedStatement ps = con.prepareStatement(
        "INSERT INTO users VALUES (?, ?, ?)");

    ps.setInt(1, Integer.parseInt(id));
    ps.setString(2, name);
    ps.setString(3, email);

    int i = ps.executeUpdate();

    if(i > 0){
        out.println("Data Inserted Successfully ");
    } else {
        out.println("Failed ❌");
    }

    con.close();

} catch(Exception e){
    out.println(e);
}
%>