<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<!-- Bootstrap CSS CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <form>
        <h3 class="text-center mb-4">Login</h3>

        <!-- Email input -->
        <div class="mb-3">
          <label for="email" class="form-label">Email address</label>
          <input type="email" id="email" name="email" class="form-control" placeholder="Enter email" required>
        </div>

        <!-- Password input -->
        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
        </div>

        <!-- Remember me and Forgot password -->
        <div class="d-flex justify-content-between align-items-center mb-4">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="rememberMe" checked>
            <label class="form-check-label" for="rememberMe">Remember me</label>
          </div>
          <a href="#">Forgot password?</a>
        </div>

        <!-- Submit button -->
        <div class="d-grid">
          <button type="submit" class="btn btn-primary">Sign in</button>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- Bootstrap JS CDN (for responsiveness) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- Font Awesome CDN for social icons -->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</body>
</html>
