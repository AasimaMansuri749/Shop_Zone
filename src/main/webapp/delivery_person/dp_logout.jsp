<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>

<%
    // Check if the session attribute "delivery_person_of_shop_zone" is set
    if (session.getAttribute("delivery_person_of_shop_zone") != null) {
        // Remove session attributes and invalidate the session
        session.removeAttribute("delivery_person_of_shop_zone");
        session.removeAttribute("dp_id");
        session.invalidate();

        // Redirect to the dashboard page
        response.sendRedirect("dp_dashboard.jsp");
    } else {
        // If the session attribute is not set, redirect to the dashboard page
        response.sendRedirect("dp_dashboard.jsp");
    }
%>
