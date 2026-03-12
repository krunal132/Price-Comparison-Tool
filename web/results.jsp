<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Comparison Results | SmartPrice</title>
    <style>
        body { 
            font-family: 'Segoe UI', sans-serif; 
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            background-attachment: fixed;
            margin: 0; padding: 40px; text-align: center; 
        }

        h2 { 
            color: #1a2a6c; 
            font-size: 3rem; 
            margin-bottom: 10px; 
            font-weight: 800;
        }

        .accent-line {
            width: 100%;
            height: 2px;
            background: #28a745;
            margin-bottom: 50px;
        }

        /* Grid Container for multiple comparison cards */
        .comparison-results-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 40px;
            max-width: 1400px;
            margin: 0 auto;
        }

        /* The Split-Card (Individual Product Match) */
        .split-card {
            background: rgba(255, 255, 255, 0.4);
            backdrop-filter: blur(15px);
            -webkit-backdrop-filter: blur(15px);
            border-radius: 30px;
            border: 1px solid rgba(255,255,255,0.5);
            display: flex;
            width: 450px; /* Adjust width for grid fit */
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }

        .split-card:hover {
            transform: translateY(-10px);
        }

        /* Left and Right Halves */
        .product-half {
            flex: 1;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            position: relative;
        }

        /* Central Vertical Divider */
        .divider-line {
            width: 2px;
            background: rgba(0, 0, 0, 0.2);
            align-self: stretch;
        }

        /* Image Box inside half */
        .thumb-box {
            width: 100px; height: 100px;
            background: white; border-radius: 12px;
            display: flex; align-items: center; justify-content: center;
            margin-bottom: 15px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.05);
        }
        .thumb-box img { max-width: 80%; max-height: 80%; object-fit: contain; }

        .p-name { font-weight: bold; font-size: 1rem; color: #333; height: 40px; overflow: hidden; margin-bottom: 5px; }
        .p-price { font-size: 1.4rem; font-weight: 800; color: #28a745; }
        
        .platform-tag {
            font-size: 0.65rem; font-weight: bold; text-transform: uppercase;
            padding: 4px 10px; border-radius: 5px; color: white; margin-bottom: 10px;
        }
        .stor1-tag { background: #ff9900; }
        .stor2-tag { background: #2874f0; }

        .back-btn { 
            display: inline-block; margin-top: 50px; text-decoration: none; 
            background: #1a2a6c; color: white; padding: 12px 30px; border-radius: 50px;
            font-weight: bold; 
        }
    </style>
</head>
<body>

    <h2>Comparison Results</h2>
    <div class="accent-line"></div>

    <div class="comparison-results-grid">
        <c:if test="${empty productList}">
            <p style="background:white; padding:20px; border-radius:15px;">No matches found. Try another search!</p>
        </c:if>

        <c:forEach var="i" begin="0" end="${fn:length(productList) - 1}" step="2">
            <div class="split-card">
                
                <div class="product-half">
                    <span class="platform-tag stor1-tag">${productList[i].get_source()}</span>
                    <div class="thumb-box">
                        <img src="${not empty productList[i].get_image() ? productList[i].get_image() : 'https://via.placeholder.com/100'}" alt="Product">
                    </div>
                    <div class="p-name">${productList[i].get_name()}</div>
                    <div class="p-price">₹${productList[i].get_price()}</div>
                </div>

                <div class="divider-line"></div>

                <c:if test="${i + 1 < fn:length(productList)}">
                    <div class="product-half">
                        <span class="platform-tag stor2-tag">${productList[i+1].get_source()}</span>
                        <div class="thumb-box">
                            <img src="${not empty productList[i+1].get_image() ? productList[i+1].get_image() : 'https://via.placeholder.com/100'}" alt="Product">
                        </div>
                        <div class="p-name">${productList[i+1].get_name()}</div>
                        <div class="p-price">₹${productList[i+1].get_price()}</div>
                    </div>
                </c:if>
            </div>
        </c:forEach>
    </div>

    <a href="compare_tool.jsp" class="back-btn">← Search Another Product</a>

</body>
</html>