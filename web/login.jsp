<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Login | SmartPrice</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

    <div class="glass-card">
        <a href="index.jsp" class="close-btn" title="Go to Home">&times;</a>

        <h2>Welcome Back</h2>
        <p class="sub-text">Login to manage your watchlist and comparisons.</p>

        <c:if test="${not empty error}">
            <div style="color: #721c24; background: #f8d7da; padding: 10px; border-radius: 8px; margin-bottom: 20px; font-size: 0.85rem;">
                ${error}
            </div>
        </c:if>

        <form action="login" method="post">
            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username" placeholder="Enter your username" required>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="btn-action">Sign In</button>
        </form>

        <div class="footer-text">
            Don't have an account? <a href="register.jsp">Create one</a>
        </div>
    </div>

</body>
</html>