<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SHOP_ZONE</title>
    <link rel="stylesheet" href="bootstrap.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.2/css/fontawesome.min.css"
        integrity="sha384-BY+fdrpOd3gfeRvTSMT+VUZmA728cfF9Z2G42xpaRkUGu2i3DyzpTURDo5A6CaLK" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400..900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+Display:ital,wght@0,100..900;1,100..900&family=Orbitron:wght@400..900&display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body { margin: 0; padding: 0; overflow: none; }
        .top-navbar { font-size: 35px; font-family: "Orbitron", sans-serif; }
        .nav-item { margin: 0 5px; font-size: large; text-decoration: none; }
        .box { background-color: #fff; margin-bottom: 30px; padding: 20px; box-shadow: 0 1px 5px rgba(0, 0, 0, 0.1); }
        #hotbox { text-transform: uppercase; font-size: 36px; color: #4993e4; text-align: center; }
        img { width: 200px; height: 250px; object-fit: contain; }
        .x { display: flex; }
    </style>
</head>

<body>

<%
    String user = (String) session.getAttribute("admin_name");
    Integer custId = (Integer) session.getAttribute("cust_id");

    if (user == null || custId == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String orderDetailsQuery = "";

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop_zone", "root", "");
        
        if (request.getParameter("see_order_details") != null) {
            int fetchOrderId = Integer.parseInt(request.getParameter("see_order_details"));
            orderDetailsQuery = "SELECT * FROM orders WHERE order_id = ?";
            ps = con.prepareStatement(orderDetailsQuery);
            ps.setInt(1, fetchOrderId);
            rs = ps.executeQuery();

            if (rs.next()) {
%>
<div class="container">
    <div id="hotbox">
        <div class="box">
            <div class="shop_by_cat container bg-dark text-light">
                <div class="col-md-12">
                    <h1> ORDER DETAILS</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-3 border border-secondary rounded">
                    <p class='mb-0 text-secondary'> Order Date: </p>
                    <h4><%= rs.getDate("order_date") %></h4>
                </div>
                <div class="col-3 border border-secondary rounded">
                    <p class='mb-0 text-secondary'> Total Amount: </p>
                    <h4><%= rs.getDouble("amount") %>/-</h4>
                </div>
                <div class="col-3 border border-secondary rounded">
                    <p class='mb-0 text-secondary'> Pincode: </p>
                    <h4><%= rs.getString("pincode") %></h4>
                </div>
                <div class="col-3 border border-secondary rounded">
                    <p class='mb-0 text-secondary'> Shipping Address: </p>
                    <h4><%= rs.getString("shipping_address") %></h4>
                </div>
            </div>

            <div class="row">
                <h3>Items in Order</h3>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Product Name</th>
                            <th>Quantity</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
<%
            PreparedStatement psItems = con.prepareStatement("SELECT p.product_name, o.quantity, o.price FROM order_line_item o JOIN products p ON o.product_id = p.product_id WHERE o.order_id = ?");
            psItems.setInt(1, fetchOrderId);
            ResultSet rsItems = psItems.executeQuery();
            while (rsItems.next()) {
%>
                        <tr>
                            <td><%= rsItems.getString("product_name") %></td>
                            <td><%= rsItems.getInt("quantity") %></td>
                            <td><%= rsItems.getDouble("price") %></td>
                        </tr>
<%
            }
            rsItems.close();
            psItems.close();
%>
                    </tbody>
                </table>
            </div>
<%
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try { if (rs != null) rs.close(); if (ps != null) ps.close(); if (con != null) con.close(); } catch (Exception e) { }
    }
%>
        </div>
    </div>
</div>

</body>
</html>
