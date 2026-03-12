<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Master Search | SmartPrice</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }
        .search-box-glass {
            background: rgba(255, 255, 255, 0.4);
            backdrop-filter: blur(15px);
            padding: 50px;
            border-radius: 30px;
            border: 1px solid rgba(255,255,255,0.5);
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
            width: 500px;
        }
        h1 { color: #1a2a6c; margin-bottom: 30px; font-size: 2.5rem; }
        .master-input {
            width: 100%;
            padding: 15px 25px;
            border-radius: 15px;
            border: 1px solid #ccc;
            font-size: 1.1rem;
            margin-bottom: 20px;
            outline: none;
        }
        .compare-btn {
            background: #28a745;
            color: white;
            padding: 15px 40px;
            border: none;
            border-radius: 15px;
            font-weight: bold;
            font-size: 1.1rem;
            cursor: pointer;
            transition: 0.3s;
        }
        .compare-btn:hover { background: #218838; transform: scale(1.05); }
        .fixed-close { position: fixed; top: 25px; right: 35px; text-decoration: none; color: #1a2a6c; font-size: 30px; }
    </style>
</head>
<body>
    <a href="index.jsp" class="fixed-close">&times;</a>
    <div class="search-box-glass">
        <h1>Master Search Tool</h1>
        <p style="color: #555; margin-bottom: 20px;">Enter a product name to compare stor1 & stor2 prices.</p>
        <form action="search" method="get">
            <input type="text" name="name" class="master-input" placeholder="e.g. iPhone 15 Pro" required>
            <br>
            <button type="submit" class="compare-btn">Compare Prices Side-by-Side</button>
        </form>
    </div>
</body>
</html>