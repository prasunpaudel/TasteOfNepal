<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-12 text-center">
            <h1>
                Welcome, <c:out value="${sessionScope.userWithSession.name}" />!
            </h1>
            <p class="lead">Welcome to My Store. We are glad to have you here. Explore the products and services we offer!</p>
        </div>
    </div>
    <a href="${pageContext.request.contextPath}/ReviewController" class="btn btn-info mt-3">Go to Reviews</a>
    

    <!-- User Role -->
    <div class="row mt-3">
        <div class="col-12 text-center">
            <p>Your Role: <strong><c:out value="${sessionScope.userWithSession.role}" /></strong></p>
        </div>
    </div>
</div>
</body>
</html>