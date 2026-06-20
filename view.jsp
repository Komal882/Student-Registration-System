<%@ page import="java.sql.*" %>

<html>
<head>
<title>View Data</title>

<style>
body {
    margin: 0;
    font-family: Arial;
    background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
    color: white;
    text-align: center;
    animation: fadeIn 1s ease-in;
}

@keyframes fadeIn {
    from {opacity: 0;}
    to {opacity: 1;}
}

h2 {
    margin-top: 30px;
}

table {
    margin: auto;
    margin-top: 20px;
    border-collapse: collapse;
    width: 70%;
}

th {
    background: #00c6ff;
    color: black;
    padding: 12px;
}

td {
    padding: 10px;
    background: #ffffff10;
}

tr:hover {
    background: #ffffff20;
}

.btn {
    padding: 5px 10px;
    border-radius: 6px;
    text-decoration: none;
    color: white;
}

.delete {
    background: red;
}

.update {
    background: green;
}

a.back {
    display: inline-block;
    margin-top: 20px;
    padding: 10px 20px;
    background: #00c6ff;
    color: black;
    text-decoration: none;
    border-radius: 8px;
}
</style>

</head>

<body>

<h2>Student Records</h2>

<table>
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Action</th>
</tr>

<%
try {
    Class.forName("oracle.jdbc.driver.OracleDriver");

    Connection con = DriverManager.getConnection(
    "jdbc:oracle:thin:@localhost:1521:xe", "system", "12345");

    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM users");

    while(rs.next()) {
%>

<tr>
    <td><%= rs.getInt(1) %></td>
    <td><%= rs.getString(2) %></td>
    <td><%= rs.getString(3) %></td>
    <td>
        <a class="btn update" href="edit.jsp?id=<%= rs.getInt(1) %>">✏ Edit</a>
        <a class="btn delete" href="delete.jsp?id=<%= rs.getInt(1) %>">🗑 Delete</a>
    </td>
</tr>

<%
    }

    con.close();
} catch(Exception e) {
    out.println(e);
}
%>

</table>

<a class="back" href="form.jsp">⬅ Back</a>

</body>
</html>