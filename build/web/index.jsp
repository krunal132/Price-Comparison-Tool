<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>SmartPrice | Home</title>
    <style>
        /* --- GLOBAL STYLES --- */
        body { 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
            text-align: center; 
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            background-attachment: fixed;
            margin: 0; 
            padding: 120px 20px 80px 20px; 
            color: #2c3e50;
            min-height: 100vh;
            display: block;
        }

        /* --- GLASS HEADER BAR --- */
        .header-bar { 
            position: fixed; 
            top: 25px; 
            right: 35px; 
            display: flex; 
            align-items: center; 
            gap: 15px;
            background: rgba(255, 255, 255, 0.3);
            padding: 10px 25px; 
            border-radius: 50px;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.1);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.4);
            z-index: 1000;
        }
        
        .profile-img {
            width: 35px; height: 35px; border-radius: 50%;
            background-color: #fff; border: 2px solid #28a745;
            display: flex; align-items: center; justify-content: center;
            overflow: hidden;
        }
        .profile-img img { width: 100%; height: 100%; object-fit: cover; }

        /* --- TYPOGRAPHY --- */
        h1 { font-size: 4rem; font-weight: 800; margin-bottom: 5px; color: #1a2a6c; letter-spacing: -1px; }
        .subtitle { font-size: 1.2rem; color: #5a67d8; margin-bottom: 60px; font-weight: 500; }

        /* --- TOOL CONTAINER & CARDS --- */
        .tool-container { 
            display: flex; 
            justify-content: center; 
            gap: 35px; 
            flex-wrap: wrap; 
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .card {
            background: rgba(255, 255, 255, 0.35); 
            backdrop-filter: blur(15px);
            -webkit-backdrop-filter: blur(15px);
            border-radius: 30px; 
            padding: 50px 35px; 
            width: 300px;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.08); 
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            text-decoration: none; 
            color: inherit; 
            display: flex;
            flex-direction: column;
            align-items: center;
            border: 1px solid rgba(255,255,255,0.4);
        }

        .card:hover { 
            transform: translateY(-15px); 
            box-shadow: 0 20px 45px rgba(0,0,0,0.12);
            background: rgba(255, 255, 255, 0.5);
        }

        .card h3 { font-size: 1.8rem; margin: 0 0 15px 0; color: #1a2a6c; }
        .card p { font-size: 0.95rem; color: #555; line-height: 1.6; margin-bottom: 25px; }

        /* --- BRAND ACCENTS --- */
        .stor1-btn { border-bottom: 8px solid #ff9900; }
        .stor2-btn { border-bottom: 8px solid #2874f0; }
        .compare-btn { border-bottom: 8px solid #28a745; }

        /* --- BUTTON TEXT STYLING --- */
        .btn-text { 
            font-weight: 800; 
            padding: 10px 25px;
            border-radius: 50px;
            transition: all 0.3s ease;
            text-transform: uppercase;
            font-size: 0.85rem;
            letter-spacing: 1px;
            display: inline-block;
        }
        
        /* Default brand colored backgrounds (subtle) */
        .stor1-text { color: #ff9900; background: rgba(255, 153, 0, 0.1); }
        .stor2-text { color: #2874f0; background: rgba(40, 116, 240, 0.1); }
        .compare-text { color: #28a745; background: rgba(40, 167, 69, 0.1); }

        /* --- HOVER STATES: FIXING THE "INVISIBLE TEXT" ISSUE --- */
        .stor1-btn:hover .stor1-text {
            background-color: #ff9900 !important;
            color: white !important;
        }

        .stor2-btn:hover .stor2-text {
            background-color: #2874f0 !important;
            color: white !important;
        }

        .compare-btn:hover .compare-text {
            background-color: #28a745 !important;
            color: white !important;
        }

        /* --- AUTH LINKS --- */
        .auth-link { text-decoration: none; font-weight: bold; transition: 0.3s; }
        .btn-join { background: #28a745; color: white; padding: 10px 22px; border-radius: 50px; }
        .btn-join:hover { background: #218838; transform: scale(1.05); }

    </style>
</head>
<body>

    <div class="header-bar">
        <c:choose>
            <c:when test="${not empty user}">
                <span class="user-name">Welcome, <strong>${user}</strong></span>
                <div class="profile-img">
                    <img src="https://cdn-icons-png.flaticon.com/512/149/149071.png" alt="User">
                </div>
                <a href="logout" class="auth-link" style="color:#e74c3c; font-size:0.8rem; margin-left:10px;">LOGOUT</a>
            </c:when>
            <c:otherwise>
                <a href="login.jsp" class="auth-link" style="color:#2c3e50;">Sign In</a> 
                <a href="register.jsp" class="auth-link btn-join">Join Now</a>
            </c:otherwise>
        </c:choose>
    </div>

    <h1>SmartPrice</h1>
    <p class="subtitle">Search. Compare. Everything in one place.</p>

    <div class="tool-container">
        <a href="stor1_page?type=stor1" class="card stor1-btn">
            <br>
            <h3>Stor1</h3>
            <br><br><br>
            <span class="btn-text stor1-text">Open Store →</span>
        </a>

        <a href="stor2_page?type=stor2" class="card stor2-btn">
            <br>
            <h3>Stor2</h3>
            <br><br><br>
            <span class="btn-text stor2-text">Open Store →</span>
        </a>

        <a href="compare_tool.jsp" class="card compare-btn">
            <br>
            <h3>Master Tool</h3>
            <br><br><br>
            <span class="btn-text compare-text">Compare Now →</span>
        </a>
    </div>

</body>
</html>