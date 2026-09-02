<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🌿 Bloom · modern e‑commerce</title>
    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Inter", system-ui, -apple-system, sans-serif;
            background: #fafcfd;
            color: #1a2e3f;
            line-height: 1.5;
            padding: 0 1rem;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 1rem;
        }

        /* ===== fresh, soft colour palette ===== */
        :root {
            --bloom-green: #2b7a62;
            --bloom-soft: #e6f3f0;
            --bloom-cream: #fcf9f2;
            --bloom-dark: #1f3a4b;
            --bloom-accent: #f4a261;
            --bloom-card: #ffffff;
            --bloom-shadow: 0 12px 30px rgba(30, 60, 60, 0.06);
            --bloom-radius: 1.5rem;
            --bloom-transition: all 0.2s ease;
        }

        /* ===== header ===== */
        .header {
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(6px);
            border-bottom: 1px solid rgba(43, 122, 98, 0.08);
            padding: 0.6rem 0;
            position: sticky;
            top: 0;
            z-index: 50;
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 0.8rem 1.2rem;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-weight: 700;
            font-size: 1.6rem;
            color: var(--bloom-dark);
            letter-spacing: -0.02em;
        }

        .brand i {
            color: var(--bloom-green);
            font-size: 1.8rem;
        }

        .brand span {
            color: var(--bloom-green);
        }

        /* navigation */
        .nav-links {
            display: flex;
            align-items: center;
            gap: 0.3rem 1.2rem;
            flex-wrap: wrap;
        }

        .nav-links a {
            text-decoration: none;
            font-weight: 500;
            color: var(--bloom-dark);
            padding: 0.4rem 0.8rem;
            border-radius: 2rem;
            transition: var(--bloom-transition);
            font-size: 0.95rem;
        }

        .nav-links a:hover,
        .nav-links a:focus {
            background: var(--bloom-soft);
            color: var(--bloom-green);
        }

        .nav-links a i {
            margin-right: 0.3rem;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 0.6rem 1rem;
            flex-wrap: wrap;
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: white;
            border-radius: 3rem;
            padding: 0.2rem 0.2rem 0.2rem 1rem;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
            border: 1px solid #e2edeb;
            transition: var(--bloom-transition);
        }

        .search-wrap:focus-within {
            border-color: var(--bloom-green);
            box-shadow: 0 4px 14px rgba(43, 122, 98, 0.10);
        }

        .search-wrap input {
            border: none;
            background: transparent;
            padding: 0.6rem 0;
            font-size: 0.9rem;
            width: 150px;
            outline: none;
        }

        .search-wrap button {
            background: var(--bloom-green);
            border: none;
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 3rem;
            font-weight: 500;
            cursor: pointer;
            transition: var(--bloom-transition);
            display: flex;
            align-items: center;
            gap: 0.3rem;
        }

        .search-wrap button:hover {
            background: #1f5f4c;
        }

        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.2rem;
            color: var(--bloom-dark);
            cursor: pointer;
            padding: 0.4rem 0.6rem;
            border-radius: 2rem;
            transition: var(--bloom-transition);
            position: relative;
        }

        .icon-btn:hover {
            background: var(--bloom-soft);
            color: var(--bloom-green);
        }

        .cart-badge {
            background: var(--bloom-accent);
            color: white;
            font-size: 0.7rem;
            font-weight: 700;
            padding: 0.2rem 0.5rem;
            border-radius: 2rem;
            position: absolute;
            top: -6px;
            right: -8px;
        }

        .mobile-toggle {
            display: none;
            background: transparent;
            border: none;
            font-size: 1.6rem;
            color: var(--bloom-dark);
            cursor: pointer;
        }

        /* mobile menu */
        .mobile-menu {
            display: none;
            background: white;
            padding: 1.2rem 0;
            border-top: 1px solid rgba(0,0,0,0.03);
        }

        .mobile-menu a {
            display: block;
            padding: 0.6rem 0;
            color: var(--bloom-dark);
            text-decoration: none;
            font-weight: 500;
            border-bottom: 1px solid #f2f7f6;
        }

        /* ===== hero ===== */
        .hero {
            background: linear-gradient(145deg, #eaf6f2 0%, #d9efe9 100%);
            border-radius: var(--bloom-radius);
            padding: 3rem 2rem;
            margin: 1.8rem 0 2.4rem;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 2rem;
        }

        .hero-content {
            flex: 1 1 300px;
        }

        .hero-content h1 {
            font-size: 2.6rem;
            font-weight: 700;
            color: var(--bloom-dark);
            line-height: 1.2;
            letter-spacing: -0.02em;
        }

        .hero-content h1 i {
            color: var(--bloom-green);
            margin-right: 0.3rem;
        }

        .hero-content p {
            font-size: 1.1rem;
            color: #2d4b5a;
            max-width: 500px;
            margin: 0.8rem 0 1.8rem;
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
            transition: var(--bloom-transition);
            text-decoration: none;
            font-size: 0.95rem;
        }

        .btn-primary {
            background: var(--bloom-green);
            color: white;
            box-shadow: 0 4px 10px rgba(43, 122, 98, 0.25);
        }

        .btn-primary:hover {
            background: #1f5f4c;
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(43, 122, 98, 0.2);
        }

        .btn-outline {
            background: transparent;
            border: 2px solid var(--bloom-green);
            color: var(--bloom-green);
        }

        .btn-outline:hover {
            background: var(--bloom-green);
            color: white;
        }

        .hero-illustration {
            flex: 0 0 220px;
            text-align: center;
            font-size: 8rem;
            color: var(--bloom-green);
            opacity: 0.7;
        }

        /* ===== section titles ===== */
        .section-title {
            text-align: center;
            margin: 2.5rem 0 1.8rem;
        }

        .section-title h2 {
            font-size: 2rem;
            font-weight: 600;
            color: var(--bloom-dark);
        }

        .section-title p {
            color: #4b6778;
            max-width: 500px;
            margin: 0.2rem auto 0;
        }

        /* ===== categories ===== */
        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(120px, 1fr));
            gap: 1.2rem;
        }

        .cat-card {
            background: white;
            padding: 1.5rem 0.5rem;
            border-radius: 2rem;
            text-align: center;
            box-shadow: var(--bloom-shadow);
            transition: var(--bloom-transition);
            cursor: default;
            border: 1px solid transparent;
        }

        .cat-card:hover {
            transform: translateY(-6px);
            border-color: var(--bloom-green);
            box-shadow: 0 20px 30px rgba(43, 122, 98, 0.08);
        }

        .cat-card i {
            font-size: 2.2rem;
            color: var(--bloom-green);
            margin-bottom: 0.3rem;
        }

        .cat-card h4 {
            font-weight: 600;
            font-size: 0.95rem;
            color: var(--bloom-dark);
        }

        /* ===== products ===== */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(210px, 1fr));
            gap: 1.8rem;
        }

        .product-card {
            background: white;
            border-radius: 1.8rem;
            overflow: hidden;
            box-shadow: var(--bloom-shadow);
            transition: var(--bloom-transition);
            display: flex;
            flex-direction: column;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 24px 40px rgba(30, 60, 60, 0.08);
        }

        .product-card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
            background: #f0f6f4;
        }

        .product-body {
            padding: 1rem 1.2rem 0.8rem;
            flex: 1;
        }

        .product-body h5 {
            font-weight: 600;
            font-size: 1.05rem;
            color: var(--bloom-dark);
            margin-bottom: 0.2rem;
        }

        .product-category {
            font-size: 0.8rem;
            color: #6f8b9a;
            text-transform: uppercase;
            letter-spacing: 0.04em;
        }

        .price-row {
            display: flex;
            align-items: baseline;
            gap: 0.8rem;
            margin-top: 0.5rem;
        }

        .price-current {
            font-weight: 700;
            font-size: 1.2rem;
            color: var(--bloom-dark);
        }

        .price-old {
            color: #8d9fa8;
            text-decoration: line-through;
            font-size: 0.9rem;
        }

        .rating {
            color: #f4b942;
            font-size: 0.8rem;
            letter-spacing: 0.05rem;
        }

        .product-footer {
            padding: 0.6rem 1.2rem 1.2rem;
            display: flex;
            gap: 0.6rem;
            align-items: center;
        }

        .add-btn {
            flex: 1;
            background: var(--bloom-green);
            color: white;
            border: none;
            padding: 0.6rem 0.4rem;
            border-radius: 3rem;
            font-weight: 600;
            cursor: pointer;
            transition: var(--bloom-transition);
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 0.4rem;
        }

        .add-btn:hover {
            background: #1f5f4c;
        }

        .wish-btn {
            background: transparent;
            border: 1px solid #dde9e6;
            border-radius: 3rem;
            width: 2.6rem;
            height: 2.6rem;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: var(--bloom-transition);
            color: #4e6d7a;
        }

        .wish-btn:hover {
            background: #fef2e6;
            border-color: var(--bloom-accent);
            color: var(--bloom-accent);
        }

        /* ===== flash deal ===== */
        .deal-card {
            background: white;
            border-radius: var(--bloom-radius);
            box-shadow: var(--bloom-shadow);
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 1.5rem;
            padding: 1.8rem 2rem;
            margin: 1.5rem 0 2.5rem;
        }

        .deal-card img {
            width: 100%;
            max-width: 280px;
            border-radius: 1.5rem;
            object-fit: cover;
            height: 200px;
            background: #f2faf7;
        }

        .deal-content {
            flex: 1;
        }

        .deal-content h3 {
            font-size: 1.8rem;
            font-weight: 600;
        }

        .timer {
            display: flex;
            gap: 0.6rem;
            margin: 1rem 0;
        }

        .time-box {
            background: var(--bloom-dark);
            color: white;
            padding: 0.4rem 0.8rem;
            border-radius: 1.2rem;
            min-width: 60px;
            text-align: center;
        }

        .time-box span {
            font-size: 1.4rem;
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
            font-size: 2rem;
            font-weight: 700;
            color: var(--bloom-green);
        }

        .deal-price .old {
            color: #8d9fa8;
            text-decoration: line-through;
        }

        .deal-badge {
            background: #f4a261;
            color: white;
            padding: 0.2rem 1rem;
            border-radius: 2rem;
            font-weight: 600;
            font-size: 0.9rem;
        }

        /* ===== testimonials ===== */
        .testimonial-scroll {
            display: flex;
            gap: 1.5rem;
            overflow-x: auto;
            padding: 0.5rem 0.2rem 1.5rem;
            scroll-snap-type: x mandatory;
        }

        .testimonial {
            background: white;
            padding: 1.6rem;
            border-radius: 2rem;
            min-width: 260px;
            box-shadow: var(--bloom-shadow);
            scroll-snap-align: start;
        }

        .testimonial .stars {
            color: #f4b942;
            margin-bottom: 0.3rem;
        }

        .testimonial p {
            font-style: italic;
            color: #2d4b5a;
        }

        .testimonial .author {
            display: flex;
            align-items: center;
            gap: 0.8rem;
            margin-top: 0.8rem;
        }

        .testimonial .author img {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            object-fit: cover;
            background: #dde9e6;
        }

        /* ===== newsletter ===== */
        .newsletter-box {
            background: var(--bloom-dark);
            color: white;
            border-radius: var(--bloom-radius);
            padding: 2.5rem 2rem;
            text-align: center;
            margin: 2rem 0;
        }

        .newsletter-box h3 {
            font-size: 1.8rem;
            font-weight: 600;
        }

        .newsletter-box p {
            opacity: 0.8;
            margin-bottom: 1.2rem;
        }

        .newsletter-form {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 0.6rem;
        }

        .newsletter-form input {
            padding: 0.8rem 1.4rem;
            border-radius: 3rem;
            border: none;
            min-width: 230px;
            font-size: 1rem;
        }

        .newsletter-form button {
            background: var(--bloom-accent);
            color: white;
            border: none;
            padding: 0.8rem 1.8rem;
            border-radius: 3rem;
            font-weight: 600;
            cursor: pointer;
            transition: var(--bloom-transition);
        }

        .newsletter-form button:hover {
            background: #e08e4a;
            transform: scale(1.02);
        }

        /* ===== footer ===== */
        .footer {
            padding: 2rem 0 1.5rem;
            border-top: 1px solid #e2edeb;
            margin-top: 2rem;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            gap: 1.2rem;
        }

        .footer-links {
            display: flex;
            gap: 1.5rem;
            flex-wrap: wrap;
        }

        .footer-links a {
            color: #4b6778;
            text-decoration: none;
            transition: var(--bloom-transition);
        }

        .footer-links a:hover {
            color: var(--bloom-green);
        }

        .footer-social i {
            font-size: 1.4rem;
            margin-left: 0.6rem;
            color: #4b6778;
            transition: var(--bloom-transition);
        }

        .footer-social i:hover {
            color: var(--bloom-green);
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
                width: 110px;
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
                font-size: 4.5rem;
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
        <div style="display:flex;align-items:center;gap:0.8rem;">
            <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
            <div class="brand">
                <i class="fas fa-seedling"></i>
                Bloom<span>Shop</span>
            </div>
        </div>

        <nav class="nav-links" id="navLinks">
            <a href="#"><i class="fas fa-home"></i> Home</a>
            <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
            <a href="#products"><i class="fas fa-fire"></i> Trending</a>
            <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
        </nav>

        <div class="header-actions">
            <div class="search-wrap">
                <input type="search" id="searchInput" placeholder="Search..." aria-label="Search">
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
        <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
        <a href="#products"><i class="fas fa-fire"></i> Trending</a>
        <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
    </div>
</header>

<main class="container">

    <!-- ===== hero ===== -->
    <section class="hero">
        <div class="hero-content">
            <h1><i class="fas fa-leaf"></i> Fresh finds,<br>delivered with care</h1>
            <p>Discover thoughtfully curated products — from tech to lifestyle. Quality you can feel.</p>
            <div class="hero-actions">
                <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
                <button class="btn btn-outline" id="exploreDeals">Explore deals</button>
            </div>
        </div>
        <div class="hero-illustration">
            <i class="fas fa-store-alt"></i>
        </div>
    </section>

    <!-- ===== categories ===== -->
    <section id="categories">
        <div class="section-title">
            <h2>Shop by category</h2>
            <p>Find exactly what you need, curated just for you.</p>
        </div>
        <div class="category-grid" id="categoriesGrid"></div>
    </section>

    <!-- ===== products ===== -->
    <section id="products">
        <div class="section-title">
            <h2>Trending now</h2>
            <p>What everyone’s talking about</p>
        </div>
        <div class="product-grid" id="productsGrid"></div>
    </section>

    <!-- ===== flash deal ===== -->
    <section id="deals">
        <div class="section-title">
            <h2>⚡ Flash sale</h2>
            <p>Grab it before it’s gone</p>
        </div>
        <div class="deal-card">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air M2">
            <div class="deal-content">
                <h3>MacBook Air M2</h3>
                <p style="color:#4b6778;">Light, fast, and stunning – now with M2 power.</p>
                <div class="timer" id="dealTimer">
                    <div class="time-box"><span id="dealDays">0</span>d</div>
                    <div class="time-box"><span id="dealHours">00</span>h</div>
                    <div class="time-box"><span id="dealMinutes">00</span>m</div>
                    <div class="time-box"><span id="dealSeconds">00</span>s</div>
                </div>
                <div class="deal-price">
                    <span class="current">$999</span>
                    <span class="old">$1,199</span>
                    <span class="deal-badge">-17%</span>
                </div>
                <p style="margin:0.5rem 0 0.2rem;"><strong>12</strong> left at this price</p>
                <button class="btn btn-primary" id="buyDeal" style="margin-top:0.6rem;"><i class="fas fa-bolt"></i> Buy now</button>
            </div>
        </div>
    </section>

    <!-- ===== testimonials ===== -->
    <section>
        <div class="section-title">
            <h2>❤️ Kind words</h2>
            <p>Real reviews from real shoppers</p>
        </div>
        <div class="testimonial-scroll" id="testimonials">
            <div class="testimonial">
                <div class="stars">★★★★★</div>
                <p>“Absolutely love the quality and fast shipping. Will be back!”</p>
                <div class="author">
                    <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava">
                    <div><strong>Ava Martin</strong><br><span style="font-size:0.8rem;color:#4b6778;">verified</span></div>
                </div>
            </div>
            <div class="testimonial">
                <div class="stars">★★★★☆</div>
                <p>“Super smooth checkout and the packaging was beautiful.”</p>
                <div class="author">
                    <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael">
                    <div><strong>Michael Lee</strong><br><span style="font-size:0.8rem;color:#4b6778;">frequent buyer</span></div>
                </div>
            </div>
            <div class="testimonial">
                <div class="stars">★★★★★</div>
                <p>“First time shopping here – I'm impressed. Great selection.”</p>
                <div class="author">
                    <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=80&q=80" alt="Sophia">
                    <div><strong>Sophia Chen</strong><br><span style="font-size:0.8rem;color:#4b6778;">new customer</span></div>
                </div>
            </div>
        </div>
    </section>

    <!-- ===== newsletter ===== -->
    <section class="newsletter-box">
        <h3><i class="far fa-envelope"></i> Stay in the loop</h3>
        <p>Subscribe and get 10% off your first order + exclusive updates.</p>
        <form class="newsletter-form" id="newsletterForm">
            <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
            <button type="submit">Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:0.8rem;font-size:0.95rem;display:none;"></div>
    </section>
</main>

<footer class="container footer">
    <div style="display:flex;align-items:center;gap:0.8rem;">
        <i class="fas fa-seedling" style="color:var(--bloom-green);font-size:1.6rem;"></i>
        <span style="font-weight:600;font-size:1.2rem;">BloomShop</span>
        <span style="color:#4b6778;font-size:0.9rem;margin-left:0.6rem;">© <span id="year"></span></span>
    </div>
    <div class="footer-links">
        <a href="#">About</a>
        <a href="#">Help</a>
        <a href="#">Shipping</a>
        <a href="#">Contact</a>
    </div>
    <div class="footer-social">
        <i class="fab fa-instagram"></i>
        <i class="fab fa-twitter"></i>
        <i class="fab fa-youtube"></i>
    </div>
</footer>

<script>
    // ---- DATA ----
    const CATEGORIES = [
        { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
        { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
        { id: 1, title: 'iPhone 14 Pro', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'phones' },
        { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'laptops' },
        { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
        { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'footwear' },
        { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'gadgets' },
        { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
        { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
        { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'gadgets' }
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
        // filter on click
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
            productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;color:#4b6778;">No products found ✨</p>`;
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
                        <span class="price-current">$${p.price.toLocaleString()}</span>
                        ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
                        <span class="rating">${stars}</span>
                    </div>
               
