<html>
<head>
<title>User Form</title>

<style>
body {
    margin: 0;
    font-family: Arial;
    background: linear-gradient(135deg, #667eea, #764ba2);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    background: white;
    padding: 30px;
    border-radius: 12px;
    text-align: center;
    width: 300px;
    box-shadow: 0px 0px 20px rgba(0,0,0,0.2);
}

h2 {
    margin-bottom: 20px;
}

input {
    width: 90%;
    padding: 10px;
    margin: 10px;
    border-radius: 8px;
    border: 1px solid #ccc;
}

button {
    padding: 10px 20px;
    border: none;
    border-radius: 8px;
    background: #667eea;
    color: white;
    cursor: pointer;
}

button:hover {
    background: #764ba2;
}

a {
    display: block;
    margin-top: 15px;
    text-decoration: none;
    color: #333;
}
</style>

</head>

<body>

<div class="container">

<h2>User Form</h2>

<form action="insert.jsp" method="post">
    <input type="text" name="id" placeholder="Enter ID"><br>
    <input type="text" name="name" placeholder="Enter Name"><br>
    <input type="text" name="email" placeholder="Enter Email"><br>
    <button type="submit">Submit</button>
</form>

<a href="view.jsp">View Records</a>

</div>

</body>
</html>