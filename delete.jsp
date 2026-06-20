<%@ page import="java.sql.*" %>

<%
int id = Integer.parseInt(request.getParameter("id"));

try {
    Class.forName("oracle.jdbc.driver.OracleDriver");

    Connection con = DriverManager.getConnection(
        "jdbc:oracle:thin:@localhost:1521:xe",
        "system",
        "12345"
    );

    PreparedStatement ps = con.prepareStatement("DELETE FROM users WHERE id=?");
    ps.setInt(1, id);

    ps.executeUpdate();

    response.sendRedirect("view.jsp");

    con.close();

} catch(Exception e) {
    out.println(e);
}
%>