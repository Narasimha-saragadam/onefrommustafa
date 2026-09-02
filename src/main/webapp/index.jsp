<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🐔 Cluck & Crisp · chicken snack store</title>
    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400..700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Inter", system-ui, sans-serif;
            background: #fefcf5;
            color: #2d2a24;
            line-height: 2.0;
            padding: 0 1rem;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 1rem;
        }

        /* warm, crispy colour palette */
        :root {
            --chicken-gold: #d48c3b;
            --chicken-crisp: #f7e8d0;
            --chicken-skin: #faf1e4;
            --chicken-dark: #3e3329;
            --chicken-accent: #c97d2e;
            --chicken-card: #ffffff;
            --chicken-shadow: 0 12px 28px rgba(80, 50, 20, 0.07);
            --chicken-radius: 2rem;
        }

        /* ===== header ===== */
        .header {
            background: rgba(255, 252, 245, 0.92);
            backdrop-filter: blur(6px);
            border-bottom: 1px solid rgba(212, 140, 59, 0.15);
            padding: 0.5rem 0;
            position: sticky;
            top: 0;
            z-index: 50;
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 0.6rem 1rem;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 0.4rem;
            font-weight: 700;
            font-size: 1.6rem;
            color: var(--chicken-dark);
            letter-spacing: -0.02em;
        }

        .brand i {
            color: var(--chicken-gold);
            font-size: 1.8rem;
        }

        .brand span {
            color: var(--chicken-gold);
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 0.2rem 1.2rem;
            flex-wrap: wrap;
        }

        .nav-links a {
            text-decoration: none;
            font-weight: 500;
            color: var(--chicken-dark);
            padding: 0.4rem 0.8rem;
            border-radius: 3rem;
            transition: all 0.15s ease;
            font-size: 0.95rem;
        }

        .nav-links a:hover {
            background: var(--chicken-crisp);
            color: var(--chicken-accent);
        }

        .nav-links a i {
            margin-right: 0.3rem;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 0.5rem 0.8rem;
            flex-wrap: wrap;
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: white;
            border-radius: 3rem;
            padding: 0.2rem 0.2rem 0.2rem 1rem;
            box-shadow: 0 2px 10px rgba(0,0,0,0.02);
            border: 1px solid #eddcc8;
            transition: 0.15s ease;
        }

        .search-wrap:focus-within {
            border-color: var(--chicken-gold);
            box-shadow: 0 4px 14px rgba(212, 140, 59, 0.12);
        }

        .search-wrap input {
            border: none;
            background: transparent;
            padding: 0.5rem 0;
            font-size: 0.9rem;
            width: 140px;
            outline: none;
        }

        .search-wrap button {
            background: var(--chicken-gold);
            border: none;
            color: white;
            padding: 0.4rem 1rem;
            border-radius: 3rem;
            font-weight: 500;
            cursor: pointer;
            transition: 0.15s ease;
        }

        .search-wrap button:hover {
            background: #b3742e;
        }

        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.2rem;
            color: var(--chicken-dark);
            cursor: pointer;
            padding: 0.3rem 0.6rem;
            border-radius: 2rem;
            transition: 0.15s ease;
            position: relative;
        }

        .icon-btn:hover {
            background: var(--chicken-crisp);
            color: var(--chicken-accent);
        }

        .cart-badge {
            background: var(--chicken-accent);
            color: white;
            font-size: 0.7rem;
            font-weight: 700;
            padding: 0.1rem 0.5rem;
            border-radius: 2rem;
            position: absolute;
            top: -6px;
            right: -6px;
        }

        .mobile-toggle {
            display: none;
            background: transparent;
            border: none;
            font-size: 1.6rem;
            color: var(--chicken-dark);
            cursor: pointer;
        }

        .mobile-menu {
            display: none;
            background: white;
            padding: 1rem 0;
            border-top: 1px solid #efe3d4;
        }

        .mobile-menu a {
            display: block;
            padding: 0.5rem 0;
            color: var(--chicken-dark);
            text-decoration: none;
            font-weight: 500;
            border-bottom: 1px solid #f5ede4;
        }

        /* ===== hero ===== */
        .hero {
            background: linear-gradient(145deg, #f7ede0 0%, #f3e2ce 100%);
            border-radius: var(--chicken-radius);
            padding: 2.5rem 2rem;
            margin: 1.6rem 0 2.2rem;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 1.8rem;
        }

        .hero-content {
            flex: 1 1 280px;
        }

        .hero-content h1 {
            font-size: 2.5rem;
            font-weight: 700;
            color: var(--chicken-dark);
            line-height: 1.2;
        }

        .hero-content h1 i {
            color: var(--chicken-gold);
            margin-right: 0.3rem;
        }

        .hero-content p {
            font-size: 1.05rem;
            color: #4f4033;
            max-width: 440px;
            margin: 0.6rem 0 1.6rem;
        }

        .hero-actions {
            display: flex;
            flex-wrap: wrap;
            gap: 0.8rem;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 0.6rem;
            padding: 0.7rem 1.8rem;
            border-radius: 3rem;
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: 0.15s ease;
            font-size: 0.95rem;
        }

        .btn-primary {
            background: var(--chicken-gold);
            color: white;
            box-shadow: 0 4px 12px rgba(212, 140, 59, 0.25);
        }

        .btn-primary:hover {
            background: #b3742e;
            transform: translateY(-2px);
        }

        .btn-outline {
            background: transparent;
            border: 2px solid var(--chicken-gold);
            color: var(--chicken-gold);
        }

        .btn-outline:hover {
            background: var(--chicken-gold);
            color: white;
        }

        .hero-illustration {
            font-size: 6rem;
            color: var(--chicken-gold);
            opacity: 0.6;
            text-align: center;
            flex: 0 0 160px;
        }

        /* ===== section titles ===== */
        .section-title {
            text-align: center;
            margin: 2.2rem 0 1.6rem;
        }

        .section-title h2 {
            font-size: 2rem;
            font-weight: 600;
            color: var(--chicken-dark);
        }

        .section-title p {
            color: #6d5c4b;
            max-width: 480px;
            margin: 0.2rem auto 0;
        }

        /* ===== categories ===== */
        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(110px, 1fr));
            gap: 1rem;
        }

        .cat-card {
            background: white;
            padding: 1.4rem 0.4rem;
            border-radius: 2rem;
            text-align: center;
            box-shadow: var(--chicken-shadow);
            transition: 0.15s ease;
            border: 1px solid transparent;
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-5px);
            border-color: var(--chicken-gold);
            box-shadow: 0 16px 28px rgba(212, 140, 59, 0.08);
        }

        .cat-card i {
            font-size: 2rem;
            color: var(--chicken-gold);
            margin-bottom: 0.2rem;
        }

        .cat-card h4 {
            font-weight: 600;
            font-size: 0.9rem;
            color: var(--chicken-dark);
        }

        /* ===== products ===== */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 1.8rem;
        }

        .product-card {
            background: white;
            border-radius: 1.8rem;
            overflow: hidden;
            box-shadow: var(--chicken-shadow);
            transition: 0.15s ease;
            display: flex;
            flex-direction: column;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 32px rgba(80, 50, 20, 0.08);
        }

        .product-card img {
            width: 100%;
            height: 170px;
            object-fit: cover;
            background: #f7ede0;
        }

        .product-body {
            padding: 0.8rem 1rem 0.4rem;
            flex: 1;
        }

        .product-body h5 {
            font-weight: 600;
            font-size: 1rem;
            color: var(--chicken-dark);
        }

        .product-category {
            font-size: 0.75rem;
            color: #7d6b5a;
            text-transform: uppercase;
            letter-spacing: 0.04em;
        }

        .price-row {
            display: flex;
            align-items: baseline;
            gap: 0.6rem;
            margin-top: 0.4rem;
        }

        .price-current {
            font-weight: 700;
            font-size: 1.15rem;
            color: var(--chicken-dark);
        }

        .price-old {
            color: #a08977;
            text-decoration: line-through;
            font-size: 0.85rem;
        }

        .rating {
            color: #f4b942;
            font-size: 0.75rem;
            letter-spacing: 0.04rem;
        }

        .product-footer {
            padding: 0.4rem 1rem 1rem;
            display: flex;
            gap: 0.6rem;
            align-items: center;
        }

        .add-btn {
            flex: 1;
            background: var(--chicken-gold);
            color: white;
            border: none;
            padding: 0.5rem 0.3rem;
            border-radius: 3rem;
            font-weight: 600;
            cursor: pointer;
            transition: 0.15s ease;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 0.3rem;
            font-size: 0.9rem;
        }

        .add-btn:hover {
            background: #b3742e;
        }

        .wish-btn {
            background: transparent;
            border: 1px solid #e4d5c6;
            border-radius: 3rem;
            width: 2.4rem;
            height: 2.4rem;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: 0.15s ease;
            color: #6d5c4b;
        }

        .wish-btn:hover {
            background: #fef2e6;
            border-color: var(--chicken-gold);
            color: var(--chicken-accent);
        }

        /* ===== deal ===== */
        .deal-card {
            background: white;
            border-radius: var(--chicken-radius);
            box-shadow: var(--chicken-shadow);
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 1.5rem;
            padding: 1.6rem 2rem;
            margin: 1.2rem 0 2.2rem;
        }

        .deal-card img {
            width: 100%;
            max-width: 250px;
            border-radius: 1.5rem;
            object-fit: cover;
            height: 180px;
            background: #f7ede0;
        }

        .deal-content {
            flex: 1;
        }

        .deal-content h3 {
            font-size: 1.7rem;
            font-weight: 600;
        }

        .timer {
            display: flex;
            gap: 0.6rem;
            margin: 0.8rem 0;
        }

        .time-box {
            background: var(--chicken-dark);
            color: white;
            padding: 0.3rem 0.7rem;
            border-radius: 1.2rem;
            min-width: 54px;
            text-align: center;
        }

        .time-box span {
            font-size: 1.3rem;
            font-weight: 700;
            display: block;
        }

        .deal-price {
            display: flex;
            align-items: center;
            gap: 1rem;
            flex-wrap: wrap;
        }

        .deal-price .current {
            font-size: 1.9rem;
            font-weight: 700;
            color: var(--chicken-gold);
        }

        .deal-price .old {
            color: #a08977;
            text-decoration: line-through;
        }

        .deal-badge {
            background: #c97d2e;
            color: white;
            padding: 0.1rem 1rem;
            border-radius: 2rem;
            font-weight: 600;
            font-size: 0.9rem;
        }

        /* ===== testimonials ===== */
        .testimonial-scroll {
            display: flex;
            gap: 1.2rem;
            overflow-x: auto;
            padding: 0.5rem 0.2rem 1.5rem;
            scroll-snap-type: x mandatory;
        }

        .testimonial {
            background: white;
            padding: 1.4rem;
            border-radius: 2rem;
            min-width: 240px;
            box-shadow: var(--chicken-shadow);
            scroll-snap-align: start;
        }

        .testimonial .stars {
            color: #f4b942;
            margin-bottom: 0.2rem;
        }

        .testimonial p {
            font-style: italic;
            color: #3e3329;
        }

        .testimonial .author {
            display: flex;
            align-items: center;
            gap: 0.6rem;
            margin-top: 0.6rem;
        }

        .testimonial .author img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
            background: #e4d5c6;
        }

        /* ===== newsletter ===== */
        .newsletter-box {
            background: var(--chicken-dark);
            color: white;
            border-radius: var(--chicken-radius);
            padding: 2rem 1.8rem;
            text-align: center;
            margin: 1.8rem 0;
        }

        .newsletter-box h3 {
            font-size: 1.7rem;
            font-weight: 600;
        }

        .newsletter-box p {
            opacity: 0.8;
            margin-bottom: 1rem;
        }

        .newsletter-form {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 0.6rem;
        }

        .newsletter-form input {
            padding: 0.7rem 1.4rem;
            border-radius: 3rem;
            border: none;
            min-width: 210px;
            font-size: 1rem;
        }

        .newsletter-form button {
            background: var(--chicken-gold);
            color: white;
            border: none;
            padding: 0.7rem 1.8rem;
            border-radius: 3rem;
            font-weight: 600;
            cursor: pointer;
            transition: 0.15s ease;
        }

        .newsletter-form button:hover {
            background: #b3742e;
        }

        /* ===== footer ===== */
        .footer {
            padding: 1.8rem 0 1.2rem;
            border-top: 1px solid #e4d5c6;
            margin-top: 1.8rem;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            gap: 1rem;
        }

        .footer-links {
            display: flex;
            gap: 1.2rem;
            flex-wrap: wrap;
        }

        .footer-links a {
            color: #6d5c4b;
            text-decoration: none;
            transition: 0.15s ease;
        }

        .footer-links a:hover {
            color: var(--chicken-gold);
        }

        .footer-social i {
            font-size: 1.3rem;
            margin-left: 0.6rem;
            color: #6d5c4b;
            transition: 0.15s ease;
        }

        .footer-social i:hover {
            color: var(--chicken-gold);
        }

        /* ===== responsive ===== */
        @media (max-width: 800px) {
            .mobile-toggle {
                display: inline-block;
            }
            .nav-links {
                display: none;
            }
            .search-wrap input {
                width: 100px;
            }
            .hero {
                flex-direction: column;
                text-align: center;
            }
            .hero-content p {
                margin-left: auto;
                margin-right: auto;
            }
            .hero-illustration {
                font-size: 4rem;
            }
            .deal-card {
                flex-direction: column;
                text-align: center;
            }
            .deal-card img {
                max-width: 100%;
            }
            .timer {
                justify-content: center;
            }
        }

        @media (max-width: 500px) {
            .product-grid {
                grid-template-columns: 1fr 1fr;
            }
            .category-grid {
                grid-template-columns: 1fr 1fr;
            }
        }
    </style>
</head>
<body>

<header class="header">
    <div class="container header-inner">
        <div style="display:flex;align-items:center;gap:0.6rem;">
            <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
            <div class="brand">
                <i class="fas fa-drumstick-bite"></i>
                Cluck<span>&Crisp</span>
            </div>
        </div>

        <nav class="nav-links" id="navLinks">
            <a href="#"><i class="fas fa-home"></i> Home</a>
            <a href="#categories"><i class="fas fa-th-large"></i> Menu</a>
            <a href="#products"><i class="fas fa-fire"></i> Popular</a>
            <a href="#deals"><i class="fas fa-tag"></i> Offers</a>
        </nav>

        <div class="header-actions">
            <div class="search-wrap">
                <input type="search" id="searchInput" placeholder="Search snacks..." aria-label="Search">
                <button id="searchBtn"><i class="fas fa-search"></i></button>
            </div>
            <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
            <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
            <button class="icon-btn" id="cartBtn" aria-label="Cart">
                <i class="fas fa-shopping-bag"></i>
                <span class="cart-badge" id="cartCount">0</span>
            </button>
        </div>
    </div>

    <!-- mobile menu -->
    <div class="mobile-menu container" id="mobileMenu">
        <a href="#"><i class="fas fa-home"></i> Home</a>
        <a href="#categories"><i class="fas fa-th-large"></i> Menu</a>
        <a href="#products"><i class="fas fa-fire"></i> Popular</a>
        <a href="#deals"><i class="fas fa-tag"></i> Offers</a>
    </div>
</header>

<main class="container">

    <!-- ===== hero ===== -->
    <section class="hero">
        <div class="hero-content">
            <h1><i class="fas fa-utensils"></i> Crispy, juicy,<br>delivered hot</h1>
            <p>Golden fried chicken, tenders, and snacks — made fresh with a secret crunch.</p>
            <div class="hero-actions">
                <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Order now</button>
                <button class="btn btn-outline" id="exploreDeals">Today's deals</button>
            </div>
        </div>
        <div class="hero-illustration">
            <i class="fas fa-drumstick"></i>
        </div>
    </section>

    <!-- ===== categories ===== -->
    <section id="categories">
        <div class="section-title">
            <h2>🍗 Choose your crunch</h2>
            <p>From classic buckets to spicy tenders</p>
        </div>
        <div class="category-grid" id="categoriesGrid"></div>
    </section>

    <!-- ===== products ===== -->
    <section id="products">
        <div class="section-title">
            <h2>🔥 Bestsellers</h2>
            <p>Fan favourites – crispy on the outside, tender inside</p>
        </div>
        <div class="product-grid" id="productsGrid"></div>
    </section>

    <!-- ===== flash deal ===== -->
    <section id="deals">
        <div class="section-title">
            <h2>⚡ Crispy hour</h2>
            <p>Limited time – grab a bucket</p>
        </div>
        <div class="deal-card">
            <img src="https://images.unsplash.com/photo-1626645738196-c2a7c87a3f58?auto=format&fit=crop&w=600&q=80" alt="Chicken bucket">
            <div class="deal-content">
                <h3>Family Feast Bucket</h3>
                <p style="color:#6d5c4b;">12 pieces + 2 sides + drink. Perfect for sharing.</p>
                <div class="timer" id="dealTimer">
                    <div class="time-box"><span id="dealDays">0</span>d</div>
                    <div class="time-box"><span id="dealHours">00</span>h</div>
                    <div class="time-box"><span id="dealMinutes">00</span>m</div>
                    <div class="time-box"><span id="dealSeconds">00</span>s</div>
                </div>
                <div class="deal-price">
                    <span class="current">$24.99</span>
                    <span class="old">$34.99</span>
                    <span class="deal-badge">-28%</span>
                </div>
                <p style="margin:0.4rem 0 0.2rem;"><strong>8</strong> buckets left</p>
                <button class="btn btn-primary" id="buyDeal" style="margin-top:0.5rem;"><i class="fas fa-bolt"></i> Grab deal</button>
            </div>
        </div>
    </section>

    <!-- ===== testimonials ===== -->
    <section>
        <div class="section-title">
            <h2>💬 What our flock says</h2>
            <p>Real reviews from real chicken lovers</p>
        </div>
        <div class="testimonial-scroll" id="testimonials">
            <div class="testimonial">
                <div class="stars">★★★★★</div>
                <p>“Best fried chicken I’ve had in years. So crispy and juicy!”</p>
                <div class="author">
                    <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava">
                    <div><strong>Ava</strong><br><span style="font-size:0.8rem;color:#6d5c4b;">verified</span></div>
                </div>
            </div>
            <div class="testimonial">
                <div class="stars">★★★★☆</div>
                <p>“Super fast delivery and the seasoning is perfect.”</p>
                <div class="author">
                    <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Mike">
                    <div><strong>Mike</strong><br><span style="font-size:0.8rem;color:#6d5c4b;">regular</span></div>
                </div>
            </div>
            <div class="testimonial">
                <div class="stars">★★★★★</div>
                <p>“The spicy tenders are addictive. Already ordered again!”</p>
                <div class="author">
                    <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=80&q=80" alt="Sophia">
                    <div><strong>Sophia</strong><br><span style="font-size:0.8rem;color:#6d5c4b;">new fan</span></div>
                </div>
            </div>
        </div>
    </section>

    <!-- ===== newsletter ===== -->
    <section class="newsletter-box">
        <h3><i class="far fa-envelope"></i> Get crispy news</h3>
        <p>Subscribe and get a free side with your next order + exclusive offers.</p>
        <form class="newsletter-form" id="newsletterForm">
            <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
            <button type="submit">Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:0.8rem;font-size:0.95rem;display:none;"></div>
    </section>
</main>

<footer class="container footer">
    <div style="display:flex;align-items:center;gap:0.6rem;">
        <i class="fas fa-drumstick-bite" style="color:var(--chicken-gold);font-size:1.6rem;"></i>
        <span style="font-weight:600;font-size:1.2rem;">Cluck&Crisp</span>
        <span style="color:#6d5c4b;font-size:0.85rem;margin-left:0.4rem;">© <span id="year"></span></span>
    </div>
    <div class="footer-links">
        <a href="#">About</a>
        <a href="#">Delivery</a>
        <a href="#">Contact</a>
        <a href="#">Careers</a>
    </div>
    <div class="footer-social">
        <i class="fab fa-instagram"></i>
        <i class="fab fa-tiktok"></i>
        <i class="fab fa-twitter"></i>
    </div>
</footer>

<script>
    // ---- DATA ----
    const CATEGORIES = [
        { id: 'buckets', name: 'Buckets', icon: 'fa-bucket' },
        { id: 'tenders', name: 'Tenders', icon: 'fa-utensil-spoon' },
        { id: 'wings', name: 'Wings', icon: 'fa-drumstick-bite' },
        { id: 'sides', name: 'Sides', icon: 'fa-french-fries' },
        { id: 'drinks', name: 'Drinks', icon: 'fa-wine-bottle' },
        { id: 'desserts', name: 'Desserts', icon: 'fa-ice-cream' }
    ];

    const PRODUCTS = [
        { id: 1, title: 'Classic Bucket (8pc)', price: 19.99, oldPrice: 24.99, rating: 5, reviews: 142, img: 'https://images.unsplash.com/photo-1626645738196-c2a7c87a3f58?auto=format&fit=crop&w=400&q=80', category: 'buckets' },
        { id: 2, title: 'Spicy Tenders (5pc)', price: 12.49, oldPrice: 14.99, rating: 4, reviews: 87, img: 'https://images.unsplash.com/photo-1610057099431-d73a1c9d2f2f?auto=format&fit=crop&w=400&q=80', category: 'tenders' },
        { id: 3, title: 'Honey BBQ Wings', price: 14.99, rating: 5, reviews: 203, img: 'https://images.unsplash.com/photo-1562967914-608f82629710?auto=format&fit=crop&w=400&q=80', category: 'wings' },
        { id: 4, title: 'Crispy Fries (large)', price: 4.99, rating: 4, reviews: 61, img: 'https://images.unsplash.com/photo-1630384060421-cb20e0e0649d?auto=format&fit=crop&w=400&q=80', category: 'sides' },
        { id: 5, title: 'Mac & Cheese Bowl', price: 6.49, oldPrice: 7.99, rating: 5, reviews: 34, img: 'https://images.unsplash.com/photo-1547592180-85f173990554?auto=format&fit=crop&w=400&q=80', category: 'sides' },
        { id: 6, title: 'Lemonade (32oz)', price: 3.99, rating: 4, reviews: 92, img: 'https://images.unsplash.com/photo-1520426466325-6c5ae74f7ee1?auto=format&fit=crop&w=400&q=80', category: 'drinks' },
        { id: 7, title: 'Apple Pie Bites', price: 5.99, oldPrice: 7.49, rating: 4, reviews: 56, img: 'https://images.unsplash.com/photo-1551024601-bec78aea704b?auto=format&fit=crop&w=400&q=80', category: 'desserts' },
        { id: 8, title: 'Buffalo Chicken Wrap', price: 10.99, rating: 4, reviews: 48, img: 'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?auto=format&fit=crop&w=400&q=80', category: 'tenders' }
    ];

    // ---- STATE ----
    let cartCount = 0;

    // ---- DOM refs ----
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');

    // ---- render ----
    function renderCategories() {
        categoriesGrid.innerHTML = CATEGORIES.map(cat => `
            <div class="cat-card" data-cat="${cat.id}">
                <i class="fas ${cat.icon}"></i>
                <h4>${cat.name}</h4>
            </div>
        `).join('');
        document.querySelectorAll('.cat-card').forEach(el => {
            el.addEventListener('click', () => {
                const name = el.querySelector('h4').textContent;
                searchInput.value = name;
                filterProducts(name);
                document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
        });
    }

    function renderProducts(list) {
        if (!list.length) {
            productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;color:#6d5c4b;">No crispy items found 🍗</p>`;
            return;
        }
        productsGrid.innerHTML = list.map(p => {
            const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
            return `
            <div class="product-card">
                <img src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-body">
                    <h5>${p.title}</h5>
                    <div class="product-category">${p.category}</div>
                    <div class="price-row">
                        <span class="price-current">$${p.price.toFixed(2)}</span>
                        ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toFixed(2)}</span>` : ''}
                        <span class="rating">${stars}</span>
                    </div>
                </div>
                <div class="product-footer">
                    <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    <button class="wish-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
                </div>
            </div>
        `}).join('');

        document.querySelectorAll('.add-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = Number(btn.dataset.id);
                addToCart(id);
            });
        });
    }

    function filterProducts(query) {
        const q = String(query).trim().toLowerCase();
        if (!q) { renderProducts(PRODUCTS); return; }
        const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
        renderProducts(filtered);
    }

    // ---- cart ----
    function addToCart(id) {
        const p = PRODUCTS.find(x => x.id === id);
        if (!p) return;
        cartCount++;
        cartCountEl.textContent = cartCount;
        const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
        if (btn) {
            const orig = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> Added';
            btn.disabled = true;
            setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1000);
        }
    }

    // ---- search ----
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(searchInput.value); });

    // ---- mobile menu ----
    mobileToggle.addEventListener('click', () => {
        mobileMenu.style.display = mobileMenu.style.display === 'block' ? 'none' : 'block';
    });

    // ---- newsletter ----
    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsletterEmail').value.trim();
        const msg = document.getElementById('newsletterMsg');
        if (!email || !email.includes('@')) {
            msg.style.display = 'block';
            msg.textContent = 'Please enter a valid email.';
            msg.style.color = '#d48c3b';
            return;
        }
        msg.style.display = 'block';
        msg.textContent = '🍗 You’re in! Get ready for crispy deals.';
        msg.style.color = '#f7e8d0';
        document.getElementById('newsletterEmail').value = '';
        setTimeout(() => msg.style.display = 'none', 3000);
    });

    // ---- timer ----
    (function setupDealTimer() {
        const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
        function tick() {
            const diff = Math.max(0, target - new Date());
            const days = Math.floor(diff / (24 * 3600 * 1000));
            const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
            const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
            const secs = Math.floor((diff % (60 * 1000)) / 1000);
            document.getElementById('dealDays').textContent = days;
            document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
            document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
            document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
            if (diff <= 0) clearInterval(interval);
        }
        tick();
        const interval = setInterval(tick, 1000);
    })();

    // ---- actions ----
    document.getElementById('shopNow').addEventListener('click', () => {
        document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('exploreDeals').addEventListener('click', () => {
        document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('buyDeal').addEventListener('click', () => {
        cartCount++;
        cartCountEl.textContent = cartCount;
        alert('🍗 Family Feast added to cart!');
    });

    // ---- init ----
    renderCategories();
    renderProducts(PRODUCTS);
    document.getElementById('year').textContent = new Date().getFullYear();
    cartCountEl.textContent = cartCount;
</script>
</body>
</html>
