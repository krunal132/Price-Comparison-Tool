<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
    <head>
        <title>${platformname} Catalog | SmartPrice</title>

        <style>
            body {
                margin: 0;
                padding: 0;
                padding-top: 100px; /* Space for the top 'x' button */
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
                background-attachment: fixed;
                display: block;
                min-height: 100vh;
            }

            .fixed-close {
                position: fixed;
                top: 25px;
                right: 35px;
                z-index: 2000;
                background: rgba(255, 255, 255, 0.2);
                width: 45px;
                height: 45px;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 50%;
                backdrop-filter: blur(5px);
                -webkit-backdrop-filter: blur(5px);
                border: 1px solid rgba(255, 255, 255, 0.4);
                color: #1a2a6c;
                font-size: 28px;
                text-decoration: none;
                transition: all 0.3s ease;
            }

            .fixed-close:hover {
                background: rgba(255, 255, 255, 0.4);
                transform: rotate(90deg);
            }

            .page-header {
                max-width: 1200px;
                margin: 0 auto 50px auto;
                text-align: center;
                padding: 0 20px;
            }

            .catalog-title {
                color: #1a2a6c;
                font-size: 3rem;
                font-weight: 800;
                margin: 0;
                text-transform: uppercase;
                letter-spacing: 2px;
            }

            .accent-bar {
                width: 100px;
                height: 6px;
                background: #2874f0; 
                margin: 12px auto 30px auto;
                border-radius: 10px;
            }

            .search-container form {
                display: flex;
                gap: 15px;
                justify-content: center;
                align-items: center;
                flex-wrap: wrap;
            }

            .search-input {
                padding: 12px 20px;
                border-radius: 12px;
                border: 1px solid rgba(0, 0, 0, 0.1);
                background: rgba(255, 255, 255, 0.6);
                width: 350px;
                font-size: 1rem;
                outline: none;
                transition: border 0.3s;
            }

            .search-input:focus {
                border: 1px solid #2874f0;
            }

            .product-grid {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                gap: 30px;
                padding: 0 20px 60px 20px;
                max-width: 1300px;
                margin: 0 auto;
            }

            .product-card {
                background: rgba(255, 255, 255, 0.25);
                backdrop-filter: blur(15px);
                -webkit-backdrop-filter: blur(15px);
                border: 1px solid rgba(255, 255, 255, 0.4);
                border-radius: 25px;
                padding: 25px;
                width: 280px;
                text-align: center;
                box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.1);
                transition: transform 0.3s ease, box-shadow 0.3s ease;
            }

            .product-card:hover {
                transform: translateY(-10px);
                box-shadow: 0 15px 45px rgba(0, 0, 0, 0.15);
                background: rgba(255, 255, 255, 0.4);
            }

            .image-box {
                width: 100%;
                height: 220px; 
                background: #ffffff; 
                border-radius: 15px;
                display: flex;
                align-items: center;
                justify-content: center;
                margin-bottom: 20px;
                overflow: hidden;
                border: none !important;
                box-shadow: inset 0 0 10px rgba(0,0,0,0.02); 
            }

            .product-card img {
                max-width: 95%;
                max-height: 95%;
                object-fit: contain;
                display: block;
                mix-blend-mode: multiply;
            }

            .product-name {
                font-size: 1.1rem;
                color: #2c3e50;
                margin: 10px 0;
                height: 50px;
                overflow: hidden;
                font-weight: 600;
            }

            .price-tag {
                font-size: 1.6rem;
                color: #28a745;
                font-weight: 800;
                margin: 10px 0 20px 0;
            }

            .btn {
                padding: 12px 25px;
                border-radius: 12px;
                font-weight: bold;
                text-decoration: none;
                transition: 0.3s;
                border: none;
                cursor: pointer;
                display: inline-block;
            }

            .btn-search {
                background: #28a745;
                color: white;
            }

            .btn-search:hover {
                background: #1e5bc6;
                box-shadow: 0 4px 12px rgba(40, 116, 240, 0.3);
            }

            .btn-clear {
                background: #6c757d;
                color: white;
            }

            .btn-clear:hover {
                background: #5a6268;
            }

            .btn-details {
                display: block;
                width: 100%;
                background: #28a745;
                color: white;
                box-sizing: border-box;
            }

            .glass-card-empty {
                background: rgba(255, 255, 255, 0.3);
                backdrop-filter: blur(10px);
                padding: 40px;
                border-radius: 20px;
                margin: 50px auto;
                max-width: 500px;
                text-align: center;
                color: #1a2a6c;
                border: 1px solid rgba(255,255,255,0.4);
            }
        </style>
    </head>
    <body>

        <a href="index.jsp" class="fixed-close" title="Go back home">&times;</a>

        <header class="page-header">
            <h1 class="catalog-title">${platformname} CATALOG</h1>
            <div class="accent-bar"></div>

            <div class="search-container">
                <form action="stor2_page" method="get">
                    <input type="hidden" name="type" value="${platformname.toLowerCase()}">

                    <input type="text" name="query" class="search-input" 
                           placeholder="Search in ${platformname}..." value="${param.query}">

                    <button type="submit" class="btn btn-search">Search</button>

                    <a href="stor2_page?type=${platformname.toLowerCase()}" class="btn btn-clear">Clear</a>
                </form>
            </div>
        </header>

        <main class="product-grid">
            <c:forEach var="p" items="${productList}">
                <div class="product-card">
                    <div class="image-box">
                        <c:choose>
                            <c:when test="${not empty p.get_image()}">
                                <img src="${p.get_image()}" alt="Product">
                            </c:when>
                            <c:otherwise>
                                <img src="https://via.placeholder.com/200?text=No+Image" alt="No Image">
                            </c:otherwise>
                        </c:choose>
                    </div>

                    <div class="product-name">${p.get_name()}</div>
                    <div class="price-tag">₹${p.get_price()}</div>

                    <a href="#" class="btn btn-details">View Details</a>
                </div>
            </c:forEach>
        </main>

        <c:if test="${empty productList}">
            <div class="glass-card-empty">
                <h3>No results found</h3>
                <p>We couldn't find any products matching your search in the ${platformname} database.</p>
            </div>
        </c:if>

    </body>
</html>