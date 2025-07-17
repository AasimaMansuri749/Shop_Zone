<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%
    // Start session
    session.setAttribute("delivery_person_of_shop_zone", session.getAttribute("delivery_person_of_shop_zone"));
    session.setAttribute("dp_id", session.getAttribute("dp_id"));
    
    if (session.getAttribute("delivery_person_of_shop_zone") == null || session.getAttribute("dp_id") == null) {
        response.sendRedirect("dp_login.jsp");
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADMIN OF SHOP ZONE</title>
    
    <link rel="stylesheet" href="../bootstrap.css">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
   
    <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    <style>
        body {
            margin: 0;
            padding: 0;
            overflow: none;
        }
        .top-navbar {
            font-size: 35px;
            font-family: "Orbitron", sans-serif;
        }
        .nav-item {
            margin-left: 5px;
            margin-right: 5px;
            font-size: large;
        }
        .box {
            background-color: #fff;
            margin: 0px 0px 30px;
            padding: 20px;
            box-shadow: 0 1ox 5px rgba(0, 0, 0, 0.1);
        }
        #hotbox {
            text-transform: uppercase;
            font-size: 36px;
            color: #4993e4;
            font-weight: 100;
            text-align: center;
        }
        .shop_by_cat {
            padding: 20px;
            border-radius: 35px;
            font-family: "Noto Serif Display", serif;
            font-weight: 700;
            color: aqua;
        }
        .fun:hover {
            background-color: #4993e4;
            color: black;
        }
        .ship_w {
            max-width: 100px;
            word-wrap: break-word;
        }
    </style>
</head>
<body>
    <!-- FIRST NAV -->
     <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container bg-dark">
                <a class="top-navbar navbar-brand text-light" href="#">SHOP ZONE</a>

                <form class="d-flex" role="search">
                    <% if (session.getAttribute("delivery_person_of_shop_zone") == null) { %>
                        <button class="btn btn-outline-light text-light bg-success" type="button">
                            <a class="text-light text-decoration-none" href="dp_login.jsp">Login</a>
                        </button>
                    <% } else { %>
                        <button class="btn btn-outline-light text-light bg-success x" type="button">
                            <a class="text-light text-decoration-none" href="dp_logout.jsp">Logout</a>
                        </button>
                    <% } %>
                </form>
            </div>
        </nav>

    <!-- SECOND -->
   
        <div class="bg-light">
            <h2 class="text-center p-2">
                <% 
                if (session.getAttribute("delivery_person_of_shop_zone") != null) {
                    out.print("Welcome " + session.getAttribute("delivery_person_of_shop_zone"));
                } else {
                    out.print("Welcome Delivery Person");
                }
                %>
            </h2>
        </div>

    <!-- THIRD -->
    <div class="container">
        <div id="hotbox">
            <div class="box">
                <div class="shop_by_cat container bg-dark text-light">
                    <div class="col-md-12">
                        <h1> ${sessionScope.delivery_person_of_shop_zone}'s all deliveries </h1>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- FOURTH -->
    <div class="container">
    <div class="row">
        <c:choose>
            <c:when test="${not empty orders}">
                <!-- Render the table only if orders are present -->
                <table class="table table-bordered border-warning">
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Customer ID</th>
                            <th>Order Date</th>
                            <th>Amount</th>
                            <th>Shipping Address</th>
                            <th>Pincode</th>
                            <th>Number of Items</th>
                            <th>Order Status</th>
                            <th>Payment Status</th>
                            <th>Delivery Date</th>
                            <th>Edit Order Status</th>
                            <th>Edit Payment Status</th>
                            <th>See Items of Order</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="order" items="${orders}">
                            <tr>
                                <td>${order.order_id}</td>
                                <td>${order.cust_id}</td>
                                <td>${order.order_date}</td>
                                <td>${order.amount} /-</td>
                                <td>${order.shipping_address}</td>
                                <td>${order.pincode}</td>
                                <td>${order.num_items}</td>
                                <td>${order.order_status}</td>
                                <td>${order.payment_status}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${order.delivery_date != null}">
                                            ${order.delivery_date}
                                        </c:when>
                                        <c:otherwise>-</c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <a href="edit_order_status.jsp?see_order_details=${order.order_id}" class="fun btn btn-secondary col-12 mb-2">Edit Order Status</a>
                                </td>
                                <td>
                                    <a href="edit_payment_status.jsp?see_order_details=${order.order_id}" class="fun btn btn-secondary col-12 mb-2">Edit Payment Status</a>
                                </td>
                                <td>
                                    <a href="delivery_person_see_order_details.jsp?see_order_details=${order.order_id}&cust_id=${order.cust_id}" class="fun btn btn-secondary col-12 mb-2">See Order Details</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <!-- Display only the message when no orders exist -->
                <h2 class="text-center text-danger">No orders available for this delivery person.</h2>
            </c:otherwise>
        </c:choose>
    </div>
</div>

    <!-- Footer -->
    <div class="container-fluid bg-dark mt-3 mb-0">
        <h1 class="text-dark" style="margin-bottom:0%; height:200px;">#</h1>
    </div>
</body>
</html>
