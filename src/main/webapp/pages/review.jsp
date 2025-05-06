<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product Reviews</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Submit Your Review</h2>
    <form action="${pageContext.request.contextPath}/ReviewController" method="post">
        <div class="form-group">
            <label for="userName">Your Name</label>
            <input type="text" class="form-control" id="userName" name="userName" required>
        </div>
        <div class="form-group">
            <label for="rating">Rating (1 to 5)</label>
            <select class="form-control" id="rating" name="rating" required>
                <c:forEach var="i" begin="1" end="5">
                    <option value="${i}">${i}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="message">Your Review</label>
            <textarea class="form-control" id="message" name="message" rows="3" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit Review</button>
    </form>

    <hr>

    <h3 class="mt-5">All Reviews</h3>
    <c:if test="${not empty reviews}">
        <c:forEach var="review" items="${reviews}">
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">${review.userName} <small class="text-muted">⭐ ${review.rating}/5</small></h5>
                    <p class="card-text">${review.message}</p>
                </div>
            </div>
        </c:forEach>
    </c:if>
    <c:if test="${empty reviews}">
        <p>No reviews available yet.</p>
    </c:if>
</div>
</body>
</html>
