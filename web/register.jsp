<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Register | SmartPrice</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

    <div class="glass-card">
        <a href="index.jsp" class="close-btn" title="Go to Home">&times;</a>

        <h2>Join Us</h2>
        <p class="sub-text">Create an account to unlock all features.</p>

        <c:if test="${not empty message}">
            <div style="color: #155724; background: #d4edda; padding: 10px; border-radius: 8px; margin-bottom: 20px; font-size: 0.85rem;">
                ${message}
            </div>
        </c:if>

        <form action="register" method="post">
            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username" placeholder="Choose a username" required>
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" placeholder="Create a password" required>
            </div>
            <button type="submit" class="btn-action">Create Account</button>
        </form>

        <div class="footer-text">
            Already have an account? <a href="login.jsp">Sign in here</a>
        </div>
    </div>

</body>
</html>