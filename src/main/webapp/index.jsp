<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>DarkShop — Premium Dark Theme E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --bg-primary: #0a0a0a;
            --bg-secondary: #141414;
            --bg-card: #1a1a1a;
            --bg-surface: #1f1f1f;
            --text-primary: #ffffff;
            --text-secondary: #a0a0a0;
            --text-muted: #6b6b6b;
            --gradient-primary: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            --gradient-secondary: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
            --gradient-accent: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);
            --gradient-gold: linear-gradient(135deg, #ffd700 0%, #ff8c00 100%);
            --neon-purple: #bf4fff;
            --neon-pink: #ff4d6d;
            --neon-blue: #4d9eff;
            --neon-green: #4eff9e;
            --success: #4eff9e;
            --danger: #ff4d6d;
            --warning: #ffd700;
            --shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
            --shadow-hover: 0 12px 48px rgba(0, 0, 0, 0.4);
            --glow: 0 0 20px rgba(102, 126, 234, 0.3);
            --radius: 16px;
            --container: 1280px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', system-ui, sans-serif;
            background: var(--bg-primary);
            color: var(--text-primary);
            -webkit-font-smoothing: antialiased;
            overflow-x: hidden;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Custom Scrollbar */
        ::-webkit-scrollbar {
            width: 8px;
            height: 8px;
        }

        ::-webkit-scrollbar-track {
            background: var(--bg-secondary);
            border-radius: 10px;
        }

        ::-webkit-scrollbar-thumb {
            background: linear-gradient(135deg, #667eea, #764ba2);
            border-radius: 10px;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(10, 10, 10, 0.95);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.05);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 16px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 8px;
            font-family: 'Poppins', sans-serif;
            font-weight: 800;
            font-size: 24px;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .brand i {
            background: none;
            -webkit-text-fill-color: #667eea;
            font-size: 28px;
        }

        .search {
            display: flex;
            align-items: center;
            background: var(--bg-surface);
            border-radius: 50px;
            padding: 10px 18px;
            gap: 10px;
            min-width: 300px;
            border: 1px solid rgba(102, 126, 234, 0.2);
            transition: all 0.3s;
        }

        .search:focus-within {
            border-color: #667eea;
            box-shadow: var(--glow);
        }

        .search input {
            border: none;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 14px;
            color: var(--text-primary);
        }

        .search input::placeholder {
            color: var(--text-muted);
        }

        .icon-btn {
            background: transparent;
            border: none;
            cursor: pointer;
            font-size: 20px;
            color: var(--text-secondary);
            transition: all 0.3s;
            padding: 8px;
            border-radius: 50%;
            position: relative;
        }

        .icon-btn:hover {
            color: #667eea;
            transform: translateY(-2px);
        }

        .cart {
            position: relative;
            display: inline-flex;
            align-items: center;
        }

        .cart-count {
            position: absolute;
            top: -5px;
            right: -5px;
            background: var(--gradient-secondary);
            color: white;
            font-size: 11px;
            font-weight: bold;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(135deg, #0a0a0a 0%, #1a1a2e 50%, #0f0f1a 100%);
            padding: 100px 0;
            text-align: center;
            position: relative;
            overflow: hidden;
            border-bottom: 1px solid rgba(102, 126, 234, 0.2);
        }

        .hero::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -20%;
            width: 140%;
            height: 200%;
            background: radial-gradient(circle, rgba(102, 126, 234, 0.1) 0%, transparent 70%);
            animation: rotate 20s linear infinite;
        }

        @keyframes rotate {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        .hero h1 {
            font-family: 'Poppins', sans-serif;
            font-size: 56px;
            font-weight: 800;
            margin-bottom: 20px;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
            position: relative;
            z-index: 1;
        }

        .hero p {
            font-size: 18px;
            color: var(--text-secondary);
            margin-bottom: 36px;
            position: relative;
            z-index: 1;
        }

        .hero-buttons {
            display: flex;
            gap: 20px;
            justify-content: center;
            position: relative;
            z-index: 1;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 14px 32px;
            border-radius: 50px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            border: none;
            font-size: 16px;
            position: relative;
            overflow: hidden;
        }

        .btn::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 0;
            height: 0;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.3);
            transform: translate(-50%, -50%);
            transition: width 0.6s, height 0.6s;
        }

        .btn:hover::before {
            width: 300px;
            height: 300px;
        }

        .btn-primary {
            background: var(--gradient-primary);
            color: white;
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            color: white;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .btn-primary:hover, .btn-secondary:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 30px rgba(102, 126, 234, 0.4);
        }

        /* Section Titles */
        .section-title {
            text-align: center;
            margin-bottom: 48px;
        }

        .section-title h2 {
            font-size: 40px;
            font-weight: 800;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 12px;
        }

        .section-title p {
            color: var(--text-secondary);
            font-size: 16px;
        }

        /* Categories Grid */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 24px;
            margin-bottom: 48px;
        }

        .category-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 32px 16px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s;
            border: 1px solid rgba(102, 126, 234, 0.1);
            position: relative;
            overflow: hidden;
        }

        .category-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(102, 126, 234, 0.1), transparent);
            transition: left 0.5s;
        }

        .category-card:hover::before {
            left: 100%;
        }

        .category-card:hover {
            transform: translateY(-8px);
            border-color: #667eea;
            box-shadow: var(--shadow);
        }

        .category-icon {
            width: 70px;
            height: 70px;
            background: var(--gradient-primary);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 16px;
            transition: all 0.3s;
        }

        .category-card:hover .category-icon {
            transform: scale(1.1);
            box-shadow: var(--glow);
        }

        .category-icon i {
            font-size: 32px;
            color: white;
        }

        .category-card h4 {
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 4px;
        }

        .category-card p {
            font-size: 12px;
            color: var(--text-muted);
        }

        /* Products Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }

        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            transition: all 0.3s;
            border: 1px solid rgba(102, 126, 234, 0.1);
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-8px);
            border-color: #667eea;
            box-shadow: var(--shadow-hover);
        }

        .product-badge {
            position: absolute;
            top: 16px;
            left: 16px;
            background: var(--gradient-secondary);
            color: white;
            padding: 4px 12px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 600;
            z-index: 1;
        }

        .product-image {
            width: 100%;
            height: 240px;
            object-fit: cover;
            transition: transform 0.5s;
        }

        .product-card:hover .product-image {
            transform: scale(1.05);
        }

        .product-info {
            padding: 20px;
        }

        .product-title {
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 8px;
        }

        .product-category {
            font-size: 12px;
            color: var(--text-muted);
            margin-bottom: 8px;
        }

        .product-price {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 12px;
        }

        .current-price {
            font-size: 22px;
            font-weight: 700;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .old-price {
            font-size: 14px;
            color: var(--text-muted);
            text-decoration: line-through;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 16px;
        }

        .stars {
            color: #ffd700;
            font-size: 14px;
        }

        .reviews {
            font-size: 12px;
            color: var(--text-muted);
        }

        .add-to-cart-btn {
            width: 100%;
            background: var(--gradient-primary);
            color: white;
            border: none;
            padding: 12px;
            border-radius: 10px;
            cursor: pointer;
            font-weight: 600;
            transition: all 0.3s;
            position: relative;
            overflow: hidden;
        }

        .add-to-cart-btn:hover {
            transform: scale(1.02);
            box-shadow: var(--glow);
        }

        /* Flash Deal */
        .flash-deal {
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
            border-radius: 24px;
            padding: 48px;
            position: relative;
            overflow: hidden;
            border: 1px solid rgba(102, 126, 234, 0.2);
        }

        .flash-deal::before {
            content: '⚡';
            position: absolute;
            font-size: 250px;
            opacity: 0.03;
            bottom: -80px;
            right: -80px;
            transform: rotate(-15deg);
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0%, 100% { opacity: 0.03; }
            50% { opacity: 0.07; }
        }

        .deal-content {
            display: flex;
            gap: 48px;
            align-items: center;
        }

        .deal-image {
            flex: 1;
            border-radius: 20px;
            overflow: hidden;
        }

        .deal-image img {
            width: 100%;
            height: 320px;
            object-fit: cover;
            transition: transform 0.5s;
        }

        .deal-image:hover img {
            transform: scale(1.05);
        }

        .deal-info {
            flex: 1;
        }

        .deal-title {
            font-size: 36px;
            font-weight: 800;
            margin-bottom: 12px;
            background: var(--gradient-gold);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .deal-description {
            color: var(--text-secondary);
            margin-bottom: 24px;
        }

        .timer {
            display: flex;
            gap: 16px;
            margin-bottom: 24px;
        }

        .time-box {
            background: var(--bg-primary);
            border: 1px solid rgba(102, 126, 234, 0.3);
            color: white;
            padding: 12px 20px;
            border-radius: 12px;
            text-align: center;
            min-width: 85px;
            transition: all 0.3s;
        }

        .time-box:hover {
            border-color: #667eea;
            box-shadow: var(--glow);
        }

        .time-box div:first-child {
            font-size: 32px;
            font-weight: 700;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .time-box div:last-child {
            font-size: 12px;
            color: var(--text-secondary);
        }

        .deal-price {
            font-size: 32px;
            font-weight: 700;
            background: var(--gradient-gold);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 20px;
        }

        .deal-old-price {
            font-size: 18px;
            color: var(--text-muted);
            text-decoration: line-through;
            margin-left: 12px;
        }

        .deal-discount {
            display: inline-block;
            background: var(--gradient-secondary);
            color: white;
            padding: 6px 14px;
            border-radius: 20px;
            font-size: 14px;
            font-weight: 600;
            margin-left: 12px;
        }

        /* Testimonials */
        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 24px;
        }

        .testimonial-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 28px;
            border: 1px solid rgba(102, 126, 234, 0.1);
            transition: all 0.3s;
        }

        .testimonial-card:hover {
            transform: translateY(-5px);
            border-color: #667eea;
            box-shadow: var(--shadow);
        }

        .testimonial-stars {
            color: #ffd700;
            margin-bottom: 16px;
            font-size: 18px;
        }

        .testimonial-text {
            font-size: 14px;
            line-height: 1.6;
            color: var(--text-secondary);
            margin-bottom: 20px;
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .testimonial-avatar {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #667eea;
        }

        .testimonial-name {
            font-weight: 600;
            font-size: 14px;
        }

        .testimonial-role {
            font-size: 12px;
            color: var(--text-muted);
        }

        /* Newsletter */
        .newsletter {
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
            border-radius: 24px;
            padding: 60px 48px;
            text-align: center;
            border: 1px solid rgba(102, 126, 234, 0.2);
            position: relative;
            overflow: hidden;
        }

        .newsletter::after {
            content: '✨';
            position: absolute;
            font-size: 180px;
            opacity: 0.05;
            top: -50px;
            left: -50px;
        }

        .newsletter h3 {
            font-size: 36px;
            margin-bottom: 16px;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .newsletter p {
            margin-bottom: 28px;
            color: var(--text-secondary);
        }

        .newsletter-form {
            display: flex;
            gap: 12px;
            justify-content: center;
            max-width: 500px;
            margin: 0 auto;
        }

        .newsletter-form input {
            flex: 1;
            padding: 14px 20px;
            border: 1px solid rgba(102, 126, 234, 0.3);
            background: var(--bg-primary);
            border-radius: 50px;
            font-size: 14px;
            outline: none;
            color: var(--text-primary);
            transition: all 0.3s;
        }

        .newsletter-form input:focus {
            border-color: #667eea;
            box-shadow: var(--glow);
        }

        .newsletter-form button {
            background: var(--gradient-primary);
            color: white;
            border: none;
            padding: 14px 32px;
            border-radius: 50px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
        }

        .newsletter-form button:hover {
            transform: translateY(-2px);
            box-shadow: var(--glow);
        }

        /* Footer */
        footer {
            background: var(--bg-secondary);
            color: white;
            padding: 60px 0 30px;
            margin-top: 48px;
            border-top: 1px solid rgba(102, 126, 234, 0.1);
        }

        .footer-content {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-logo {
            font-size: 24px;
            font-weight: 800;
            margin-bottom: 16px;
            display: inline-block;
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .footer-description {
            color: var(--text-secondary);
            font-size: 14px;
            line-height: 1.6;
        }

        .footer-links h4 {
            margin-bottom: 16px;
            font-size: 16px;
            color: var(--text-primary);
        }

        .footer-links a {
            display: block;
            color: var(--text-secondary);
            text-decoration: none;
            margin-bottom: 12px;
            font-size: 14px;
            transition: all 0.3s;
        }

        .footer-links a:hover {
            color: #667eea;
            transform: translateX(5px);
        }

        .social-links {
            display: flex;
            gap: 12px;
            margin-top: 20px;
        }

        .social-links a {
            width: 40px;
            height: 40px;
            background: var(--bg-surface);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.3s;
            color: var(--text-secondary);
        }

        .social-links a:hover {
            background: var(--gradient-primary);
            color: white;
            transform: translateY(-3px);
        }

        .copyright {
            text-align: center;
            padding-top: 30px;
            border-top: 1px solid rgba(255, 255, 255, 0.05);
            color: var(--text-muted);
            font-size: 14px;
        }

        /* Animations */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive */
        @media (max-width: 1200px) {
            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .products-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .testimonials-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 768px) {
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .testimonials-grid {
                grid-template-columns: 1fr;
            }
            .deal-content {
                flex-direction: column;
            }
            .footer-content {
                grid-template-columns: 1fr;
                text-align: center;
            }
            .hero h1 {
                font-size: 36px;
            }
            .search {
                display: none;
            }
            .newsletter-form {
                flex-direction: column;
            }
            .timer {
                flex-wrap: wrap;
                justify-content: center;
            }
        }

        @media (max-width: 576px) {
            .products-grid {
                grid-template-columns: 1fr;
            }
            .categories-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>
    <header>
        <div class="container header-inner">
            <div class="brand">
                <i class="fas fa-moon"></i>
                <span>Dark<span style="color:#667eea">Shop</span></span>
            </div>

            <div class="search">
                <i class="fas fa-search" style="color:#667eea"></i>
                <input type="text" id="searchInput" placeholder="Search products...">
            </div>

            <div style="display:flex; align-items:center; gap:12px;">
                <button class="icon-btn" title="Account">
                    <i class="far fa-user"></i>
                </button>
                <button class="icon-btn" title="Wishlist">
                    <i class="far fa-heart"></i>
                </button>
                <div class="cart">
                    <button class="icon-btn" title="Cart">
                        <i class="fas fa-shopping-cart"></i>
                    </button>
                    <span class="cart-count" id="cartCount">0</span>
                </div>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero Section -->
        <section class="hero">
            <div class="container">
                <h1>Welcome to myshop</h1>
                <p>Experience luxury shopping in a premium dark theme environment with exclusive deals</p>
                <div className="hero-buttons">
                    <button class="btn btn-primary" id="shopNowBtn">Shop Now <i class="fas fa-arrow-right"></i></button>
                    <button class="btn btn-secondary" id="exploreBtn">Explore Deals <i class="fas fa-gift"></i></button>
                </div>
            </div>
        </section>

        <!-- Categories Section -->
        <section class="container" style="padding: 60px 0;">
            <div class="section-title">
                <h2>Shop by Category</h2>
                <p>Browse through our premium collections</p>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <!-- Products Section -->
        <section class="container" style="padding: 0 0 60px;">
            <div class="section-title">
                <h2>Trending Products</h2>
                <p>Most popular items this week</p>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </section>

        <!-- Flash Deal Section -->
        <section class="container" style="padding: 0 0 60px;">
            <div class="flash-deal">
                <div class="deal-content">
                    <div class="deal-image">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="Deal Product">
                    </div>
                    <div class="deal-info">
                        <h2 class="deal-title">⚡ Flash Sale! ⚡</h2>
                        <p class="deal-description">MacBook Air M2 - Ultra-thin, ultra-powerful. Limited time offer!</p>
                        <div class="timer" id="timer">
                            <div class="time-box">
                                <div id="days">00</div>
                                <div>Days</div>
                            </div>
                            <div class="time-box">
                                <div id="hours">00</div>
                                <div>Hours</div>
                            </div>
                            <div class="time-box">
                                <div id="minutes">00</div>
                                <div>Mins</div>
                            </div>
                            <div class="time-box">
                                <div id="seconds">00</div>
                                <div>Secs</div>
                            </div>
                        </div>
                        <div class="deal-price">
                            $999 <span class="deal-old-price">$1,299</span>
                            <span class="deal-discount">-23% OFF</span>
                        </div>
                        <button class="btn btn-primary" id="buyDealBtn">Grab Now <i class="fas fa-bolt"></i></button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials Section -->
        <section class="container" style="padding: 0 0 60px;">
            <div class="section-title">
                <h2>What Our Customers Say</h2>
                <p>Join thousands of happy customers worldwide</p>
            </div>
            <div class="testimonials-grid" id="testimonialsGrid"></div>
        </section>

        <!-- Newsletter Section -->
        <section class="container" style="padding: 0 0 60px;">
            <div class="newsletter">
                <h3>Stay in the Loop 🌙</h3>
                <p>Subscribe for exclusive offers, early access, and 10% off your first order!</p>
                <form class="newsletter-form" id="newsletterForm">
                    <input type="email" id="newsletterEmail" placeholder="Enter your email address" required>
                    <button type="submit">Subscribe <i class="fas fa-paper-plane"></i></button>
                </form>
                <div id="newsletterMessage" style="margin-top: 16px; font-size: 14px;"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-content">
                <div>
                    <div class="footer-logo">
                        <i class="fas fa-moon"></i> DarkShop
                    </div>
                    <p class="footer-description">Premium dark theme shopping experience with curated products and exclusive deals.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="footer-links">
                    <h4>Shop</h4>
                    <a href="#">All Products</a>
                    <a href="#">New Arrivals</a>
                    <a href="#">Best Sellers</a>
                    <a href="#">Sale</a>
                </div>
                <div class="footer-links">
                    <h4>Support</h4>
                    <a href="#">Help Center</a>
                    <a href="#">Returns</a>
                    <a href="#">Shipping Info</a>
                    <a href="#">Contact Us</a>
                </div>
                <div class="footer-links">
                    <h4>Company</h4>
                    <a href="#">About Us</a>
                    <a href="#">Careers</a>
                    <a href="#">Blog</a>
                    <a href="#">Press</a>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2024 DarkShop. All rights reserved. | Made with <i class="fas fa-heart" style="color: #ff4d6d"></i> for dark mode lovers</p>
            </div>
        </div>
    </footer>

    <script>
        // Categories Data
        const categories = [
            { name: "Electronics", icon: "fa-mobile-alt", color: "#667eea" },
            { name: "Fashion", icon: "fa-tshirt", color: "#f093fb" },
            { name: "Accessories", icon: "fa-watch", color: "#4facfe" },
            { name: "Footwear", icon: "fa-shoe-prints", color: "#fa709a" },
            { name: "Home & Living", icon: "fa-home", color: "#6bcb77" },
            { name: "Beauty", icon: "fa-spa", color: "#ff9f4a" }
        ];

        // Products Data
        const products = [
            { id: 1, name: "Wireless Headphones", category: "Electronics", price: 99, oldPrice: 149, rating: 5, reviews: 128, image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=300&h=240&fit=crop", badge: "Bestseller" },
            { id: 2, name: "Smart Watch Pro", category: "Accessories", price: 249, oldPrice: 399, rating: 4.5, reviews: 89, image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=300&h=240&fit=crop", badge: "-38%" },
            { id: 3, name: "Designer Handbag", category: "Fashion", price: 159, oldPrice: 299, rating: 5, reviews: 234, image: "https://images.unsplash.com/photo-1584917865442-de89df76afd3?w=300&h=240&fit=crop", badge: "New" },
            { id: 4, name: "Running Shoes", category: "Footwear", price: 89, oldPrice: 129, rating: 4.5, reviews: 567, image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=300&h=240&fit=crop", badge: "Sale" },
            { id: 5, name: "Camera Lens", category: "Electronics", price: 499, oldPrice: 699, rating: 5, reviews: 45, image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=300&h=240&fit=crop", badge: "Premium" },
            { id: 6, name: "Sunglasses", category: "Accessories", price: 49, oldPrice: 89, rating: 4, reviews: 345, image: "https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=300&h=240&fit=crop", badge: "" },
            { id: 7, name: "Leather Jacket", category: "Fashion", price: 199, oldPrice: 349, rating: 5, reviews: 178, image: "https://images.unsplash.com/photo-1551028719-00167b16eac5?w=300&h=240&fit=crop", badge: "Trending" },
            { id: 8, name: "Coffee Maker", category: "Home & Living", price: 79, oldPrice: 129, rating: 4.5, reviews: 234, image: "https://images.unsplash.com/photo-1520970014086-2208d157d058?w=300&h=240&fit=crop", badge: "" }
        ];

        // Testimonials Data
        const testimonials = [
            { name: "Sarah Johnson", role: "Fashion Blogger", text: "Absolutely love the dark theme! The products are premium quality and the shopping experience is incredible.", rating: 5, avatar: "https://randomuser.me/api/portraits/women/1.jpg" },
            { name: "Michael Chen", role: "Tech Enthusiast", text: "Best dark mode shopping platform I've ever used. The UI is sleek and modern!", rating: 5, avatar: "https://randomuser.me/api/portraits/men/2.jpg" },
            { name: "Emily Rodriguez", role: "Frequent Buyer", text: "Amazing selection of products and the dark theme is easy on the eyes. Highly recommended!", rating: 4.5, avatar: "https://randomuser.me/api/portraits/women/3.jpg" }
        ];

        let cartCount = 0;

        // Render Categories
        function renderCategories() {
            const grid = document.getElementById('categoriesGrid');
            grid.innerHTML = categories.map(cat => `
                <div class="category-card" onclick="filterByCategory('${cat.name}')">
                    <div class="category-icon" style="background: linear-gradient(135deg, ${cat.color}, ${cat.color}dd)">
                        <i class="fas ${cat.icon}"></i>
                    </div>
                    <h4>${cat.name}</h4>
                    <p>Shop Now →</p>
                </div>
            `).join('');
        }

        // Render Products
        function renderProducts(productsToRender = products) {
            const grid = document.getElementById('productsGrid');
            grid.innerHTML = productsToRender.map(product => `
                <div class="product-card">
                    ${product.badge ? `<div class="product-badge">${product.badge}</div>` : ''}
                    <img class="product-image" src="${product.image}" alt="${product.name}">
                    <div class="product-info">
                        <h3 class="product-title">${product.name}</h3>
                        <div class="product-category">${product.category}</div>
                        <div class="product-price">
                            <span class="current-price">$${product.price}</span>
                            ${product.oldPrice ? `<span class="old-price">$${product.oldPrice}</span>` : ''}
                        </div>
                        <div class="product-rating">
                            <div class="stars">${'★'.repeat(Math.floor(product.rating))}${product.rating % 1 ? '½' : ''}</div>
                            <div class="reviews">(${product.reviews} reviews)</div>
                        </div>
                        <button class="add-to-cart-btn" onclick="addToCart(${product.id})">
                            <i class="fas fa-cart-plus"></i> Add to Cart
                        </button>
                    </div>
                </div>
            `).join('');
        }

        // Render Testimonials
        function renderTestimonials() {
            const grid = document.getElementById('testimonialsGrid');
            grid.innerHTML = testimonials.map(test => `
                <div class="testimonial-card">
                    <div class="testimonial-stars">${'★'.repeat(Math.floor(test.rating))}${test.rating % 1 ? '½' : ''}</div>
                    <p class="testimonial-text">"${test.text}"</p>
                    <div class="testimonial-author">
                        <img class="testimonial-avatar" src="${test.avatar}" alt="${test.name}">
                        <div>
                            <div class="testimonial-name">${test.name}</div>
                            <div class="testimonial-role">${test.role}</div>
                        </div>
                    </div>
                </div>
            `).join('');
        }

        // Add to Cart
        function addToCart(productId) {
            cartCount++;
            document.getElementById('cartCount').textContent = cartCount;
            
            const product = products.find(p => p.id === productId);
            const btn = event.target.closest('.add-to-cart-btn');
            const originalText = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> Added!';
            btn.style.background = 'linear-gradient(135deg, #4eff9e, #00d4ff)';
            setTimeout(() => {
                btn.innerHTML = originalText;
                btn.style.background = 'linear-gradient(135deg, #667eea, #764ba2)';
            }, 1000);
        }

        // Filter by Category
        function filterByCategory(category) {
            const filtered = products.filter(p => p.category === category);
            renderProducts(filtered);
            document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' });
        }

        // Search Products
        function searchProducts() {
            const searchTerm = document.getElementById('searchInput').value.toLowerCase();
            if (!searchTerm) {
                renderProducts(products);
                return;
            }
            const filtered = products.filter(p => 
                p.name.toLowerCase().includes(searchTerm) || 
                p.category.toLowerCase().includes(searchTerm)
            );
            renderProducts(filtered);
        }

        // Timer for Flash Deal
        function startTimer() {
            const targetDate = new Date();
            targetDate.setHours(targetDate.getHours() + 24);
            
            function updateTimer() {
                const now = new Date();
                const diff = targetDate - now;
                
                const days = Math.floor(diff / (1000 * 60 * 60 * 24));
                const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
                const seconds = Math.floor((diff % (1000 * 60)) / 1000);
                
                document.getElementById('days').textContent = String(days).padStart(2, '0');
                document.getElementById('hours').textContent = String(hours).padStart(2, '0');
                document.getElementById('minutes').textContent = String(minutes).padStart(2, '0');
                document.getElementById('seconds').textContent = String(seconds).padStart(2, '0');
            }
            
            updateTimer();
            setInterval(updateTimer, 1000);
        }

        // Newsletter Subscription
        document.getElementById('newsletterForm').addEventListener('submit', function(e) {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value;
            const messageDiv = document.getElementById('newsletterMessage');
            
            if (email && email.includes('@')) {
                messageDiv.innerHTML = '🎉 Thanks for subscribing! Check your inbox for your 10% off coupon!';
                messageDiv.style.color = '#4eff9e';
                messageDiv.style.fontWeight = '600';
                document.getElementById('newsletterEmail').value = '';
                setTimeout(() => {
                    messageDiv.innerHTML = '';
                }, 5000);
            } else {
                messageDiv.innerHTML = '❌ Please enter a valid email address.';
                messageDiv.style.color = '#ff4d6d';
                setTimeout(() => {
                    messageDiv.innerHTML = '';
                }, 3000);
            }
        });

        // Event Listeners
        document.getElementById('shopNowBtn').addEventListener('click', () => {
            document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' });
        });
        
        document.getElementById('exploreBtn').addEventListener('click', () => {
            document.querySelector('.flash-deal').scrollIntoView({ behavior: 'smooth' });
        });
        
        document.getElementById('buyDealBtn').addEventListener('click', () => {
            cartCount++;
            document.getElementById('cartCount').textContent = cartCount;
            alert('⚡ Deal added to cart! Hurry up! ⚡');
        });
        
        document.getElementById('searchInput').addEventListener('input', searchProducts);

        // Initialize
        renderCategories();
        renderProducts();
        renderTestimonials();
        startTimer();
    </script>
</body>

</html>
