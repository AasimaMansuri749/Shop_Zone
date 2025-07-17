<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Users List</title>
</head>
<body>
    <h1>Users List</h1>

    <table border="1">
        <tr>
            <th>Name</th>
        </tr>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "");
                Statement stmt = con.createStatement();

                // Display original data
                ResultSet rs = stmt.executeQuery("SELECT name FROM users");
                while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("name") %></td>
        </tr>
        <%
                }
                rs.close(); // Close result set before executing update

                // Execute UPDATE query
                int updatedRows = stmt.executeUpdate("UPDATE users SET name='aasima' WHERE name='jinal	'");

                // Display updated data
                if (updatedRows > 0) {
                    rs = stmt.executeQuery("SELECT name FROM users");
                    while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("name") %> (Updated)</td>
        </tr>
        <%
                    }
                } else
                {
                	out.println("no data found");
                }
                
               
                rs.close();
                stmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
</body>
</html>
