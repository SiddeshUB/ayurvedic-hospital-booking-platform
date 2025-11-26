<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Global Ayurvedic Interlinking Platform</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CDN -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
    />

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

    <style>
        :root {
            --primary-green: #0d8b6f;
            --primary-green-dark: #06624b;
            --accent-light: #e7f7f1;
            --accent-cream: #f7fff5;
            --text-dark: #123027;
        }

        * {
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: var(--accent-cream);
            color: var(--text-dark);
        }

        /* Navbar */
        .navbar {
            background: linear-gradient(90deg, #0d8b6f, #2abf77);
            box-shadow: 0 4px 12px rgba(0,0,0,0.12);
        }

        .navbar-brand {
            font-weight: 700;
            letter-spacing: 0.5px;
        }

        .navbar-brand span {
            color: #c4ffdd;
        }

        .nav-link {
            color: #f5fff9 !important;
            font-weight: 500;
        }

        .nav-link:hover {
            color: #ffffff !important;
            text-decoration: underline;
        }

        .dropdown-menu {
            border-radius: 10px;
            border: none;
            box-shadow: 0 6px 20px rgba(0,0,0,0.12);
        }

        /* Hero Section */
        .hero-section {
            padding: 80px 0 60px;
            background: radial-gradient(circle at top left, #e5f8ef, #f7fff5);
        }

        .hero-tag {
            display: inline-block;
            padding: 6px 14px;
            border-radius: 999px;
            background: rgba(13,139,111,0.08);
            color: var(--primary-green-dark);
            font-size: 0.85rem;
            font-weight: 500;
            margin-bottom: 12px;
        }

        .hero-title {
            font-size: 2.4rem;
            font-weight: 700;
            color: var(--primary-green-dark);
        }

        .hero-title span {
            color: var(--primary-green);
        }

        .hero-subtitle {
            font-size: 1rem;
            margin-top: 10px;
            max-width: 550px;
        }

        .hero-badges {
            margin-top: 15px;
            font-size: 0.9rem;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 6px 12px;
            border-radius: 999px;
            background: white;
            border: 1px solid #d9f3e7;
            margin-right: 8px;
            margin-top: 6px;
        }

        .hero-image-box {
            background: white;
            border-radius: 24px;
            padding: 20px;
            box-shadow: 0 12px 30px rgba(0,0,0,0.08);
            border: 1px solid #ddf5ea;
        }

        .hero-image-banner {
            height: 180px;
            border-radius: 16px;
            background: url('https://images.pexels.com/photos/373547/pexels-photo-373547.jpeg?auto=compress&cs=tinysrgb&w=1200') center/cover no-repeat;
            margin-bottom: 16px;
        }

        .hero-stats small {
            font-size: 0.8rem;
            color: #456859;
        }

        /* Section titles */
        .section-title {
            font-weight: 600;
            font-size: 1.35rem;
            margin-bottom: 0.5rem;
            color: var(--primary-green-dark);
        }

        .section-subtitle {
            font-size: 0.95rem;
            margin-bottom: 1.5rem;
            color: #47675a;
        }

        /* Cards */
        .module-card,
        .info-card {
            border-radius: 18px;
            border: none;
            padding: 18px 18px 16px;
            background: white;
            box-shadow: 0 6px 16px rgba(0,0,0,0.04);
            height: 100%;
        }

        .module-card h5 {
            font-size: 1rem;
            font-weight: 600;
        }

        .module-chip {
            display: inline-block;
            font-size: 0.75rem;
            padding: 3px 9px;
            border-radius: 999px;
            background: rgba(13,139,111,0.08);
            color: var(--primary-green-dark);
            margin-bottom: 10px;
        }

        .module-list {
            font-size: 0.88rem;
            padding-left: 18px;
            margin-bottom: 6px;
        }

        .module-list li {
            margin-bottom: 4px;
        }

        /* How it works */
        .step-number {
            width: 28px;
            height: 28px;
            border-radius: 999px;
            background: var(--primary-green);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 0.85rem;
            margin-right: 8px;
        }

        /* Footer */
        footer {
            background: #04352a;
            color: #e7fff5;
            padding: 16px 0;
            font-size: 0.85rem;
        }

        footer a {
            color: #c0ffda;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="#">
            Ayur<span>Connect</span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#mainNavbar" aria-controls="mainNavbar"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="mainNavbar">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

                <li class="nav-item">
                    <a class="nav-link" href="#hero">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#how-it-works">How It Works</a>
                </li>

                <!-- Modules dropdown -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="modulesDropdown"
                       role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Modules
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="modulesDropdown">
                        <li><a class="dropdown-item" href="#user-module">User Module</a></li>
                        <li><a class="dropdown-item" href="#admin-module">Admin Module</a></li>
                        <li><a class="dropdown-item" href="#hospital-module">Hospital Module</a></li>
                        <li><a class="dropdown-item" href="#doctor-module">Doctor Module</a></li>
                        <li><a class="dropdown-item" href="#accommodation-module">Accommodation Module</a></li>
                        <li><a class="dropdown-item" href="#product-module">Product Module</a></li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#therapies">Therapies</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#contact">Contact</a>
                </li>

                <!-- Placeholder login links -->
                <li class="nav-item ms-lg-3">
                    <a href="login.jsp" class="btn btn-sm btn-light text-success fw-semibold">
                        Login
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- HERO SECTION -->
<section class="hero-section" id="hero">
    <div class="container">
        <div class="row align-items-center g-4">
            <div class="col-lg-6">
                <div class="hero-tag">Global Ayurvedic & Natural Healing Hub</div>
                <h1 class="hero-title">
                    One platform for <span>all Ayurveda & natural treatments</span>.
                </h1>
                <p class="hero-subtitle">
                    Users from India & abroad can discover, compare and book Ayurveda,
                    naturopathy, yoga, physiotherapy and other natural healing treatments
                    in one simple, trusted platform.
                </p>

                <div class="hero-badges">
                    <span class="hero-badge">✓ Interlinking all therapies</span>
                    <span class="hero-badge">✓ Transparent tariffs</span>
                    <span class="hero-badge">✓ Verified hospitals & doctors</span>
                </div>

                <div class="mt-4">
                    <a href="#how-it-works" class="btn btn-success me-2">
                        See How It Works
                    </a>
                    <a href="#user-module" class="btn btn-outline-success">
                        View All Modules
                    </a>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="hero-image-box">
                    <div class="hero-image-banner"></div>

                    <div class="row g-3 hero-stats">
                        <div class="col-6">
                            <h6 class="mb-0">Global Users</h6>
                            <small>India, Gulf, Europe, USA & more</small>
                        </div>
                        <div class="col-6">
                            <h6 class="mb-0">Interlinked Therapies</h6>
                            <small>Ayurveda, Yoga, Naturopathy, Physio & more</small>
                        </div>
                        <div class="col-12 mt-2">
                            <small>
                                *We act as a connector: we do not provide treatment ourselves.
                                We connect users with trusted hospitals, doctors, stays & products.
                            </small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- HOW IT WORKS -->
<section class="py-4" id="how-it-works">
    <div class="container">
        <h2 class="section-title">How The System Works</h2>
        <p class="section-subtitle">
            Simple end-to-end flow for users, hospitals and doctors.
        </p>

        <div class="row g-3">
            <div class="col-md-4">
                <div class="info-card">
                    <div class="d-flex align-items-center mb-2">
                        <div class="step-number">1</div>
                        <h6 class="mb-0">User Side</h6>
                    </div>
                    <ul class="module-list">
                        <li>Search by condition (back pain, stress, obesity, etc.).</li>
                        <li>See interlinked therapies + hospitals + packages.</li>
                        <li>Compare tariffs and inclusions.</li>
                        <li>Book teleconsult or full package.</li>
                    </ul>
                </div>
            </div>

            <div class="col-md-4">
                <div class="info-card">
                    <div class="d-flex align-items-center mb-2">
                        <div class="step-number">2</div>
                        <h6 class="mb-0">Hospital & Doctor Side</h6>
                    </div>
                    <ul class="module-list">
                        <li>Hospitals manage profile, packages, tariffs and rooms.</li>
                        <li>Doctors manage schedules, teleconsults and treatment plans.</li>
                        <li>All bookings visible in their dashboards.</li>
                    </ul>
                </div>
            </div>

            <div class="col-md-4">
                <div class="info-card">
                    <div class="d-flex align-items-center mb-2">
                        <div class="step-number">3</div>
                        <h6 class="mb-0">Platform (Admin) Side</h6>
                    </div>
                    <ul class="module-list">
                        <li>Verify hospitals, doctors and accommodation.</li>
                        <li>Monitor bookings, payments and disputes.</li>
                        <li>Manage content, pricing rules and analytics.</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- MODULES OVERVIEW -->
<section class="py-4" id="modules">
    <div class="container">
        <h2 class="section-title">Modules Overview</h2>
        <p class="section-subtitle">
            Each module has a clear role inside the platform. Below is a simple summary.
        </p>

        <div class="row g-3">

            <!-- USER MODULE -->
            <div class="col-md-4" id="user-module">
                <div class="module-card">
                    <div class="module-chip">User Module</div>
                    <h5 class="mb-2">For Patients & Visitors</h5>
                    <ul class="module-list">
                        <li>User registration & login.</li>
                        <li>Profile & basic health details.</li>
                        <li>Search conditions & therapies.</li>
                        <li>Compare hospitals, packages and prices.</li>
                        <li>Book teleconsults and treatments.</li>
                        <li>View bookings, invoices & follow-up plans.</li>
                    </ul>
                </div>
            </div>

            <!-- ADMIN MODULE -->
            <div class="col-md-4" id="admin-module">
                <div class="module-card">
                    <div class="module-chip">Admin Module</div>
                    <h5 class="mb-2">For Platform Management</h5>
                    <ul class="module-list">
                        <li>Approve & verify hospitals and doctors.</li>
                        <li>Manage all users & roles.</li>
                        <li>Monitor bookings & revenue.</li>
                        <li>Configure commission %, pricing bands.</li>
                        <li>Manage content for therapies & conditions.</li>
                        <li>View analytics & dashboards.</li>
                    </ul>
                </div>
            </div>

            <!-- HOSPITAL MODULE -->
            <div class="col-md-4" id="hospital-module">
                <div class="module-card">
                    <div class="module-chip">Hospital Module</div>
                    <h5 class="mb-2">For Ayurveda & Wellness Centres</h5>
                    <ul class="module-list">
                        <li>Hospital registration & profile management.</li>
                        <li>Add/update treatment packages & tariffs.</li>
                        <li>Link doctors and accommodation to packages.</li>
                        <li>View and confirm/cancel bookings.</li>
                        <li>See patient intake forms and notes.</li>
                        <li>Track ratings, feedback & basic analytics.</li>
                    </ul>
                </div>
            </div>

            <!-- DOCTOR MODULE -->
            <div class="col-md-4" id="doctor-module">
                <div class="module-card">
                    <div class="module-chip">Doctor Module</div>
                    <h5 class="mb-2">For Ayurvedic Doctors & Therapists</h5>
                    <ul class="module-list">
                        <li>Doctor registration & verification.</li>
                        <li>Profile & specialisation (Ayurveda, Yoga, Physio, etc.).</li>
                        <li>Manage teleconsult slots & appointments.</li>
                        <li>View assigned patients and treatment plans.</li>
                        <li>Write recommendations & aftercare plans.</li>
                        <li>Coordinate with hospitals and users.</li>
                    </ul>
                </div>
            </div>

            <!-- ACCOMMODATION MODULE -->
            <div class="col-md-4" id="accommodation-module">
                <div class="module-card">
                    <div class="module-chip">Accommodation Module</div>
                    <h5 class="mb-2">For Rooms, Stays & Packages</h5>
                    <ul class="module-list">
                        <li>Manage room types (standard, deluxe, suite).</li>
                        <li>Set per-night prices & capacity.</li>
                        <li>Connect room types with specific packages.</li>
                        <li>Track availability calendar.</li>
                        <li>Show images & amenities to users.</li>
                    </ul>
                </div>
            </div>

            <!-- PRODUCT MODULE -->
            <div class="col-md-4" id="product-module">
                <div class="module-card">
                    <div class="module-chip">Product Module</div>
                    <h5 class="mb-2">For Ayurvedic Products & Kits</h5>
                    <ul class="module-list">
                        <li>Herbal oils, tablets, powders, teas, etc.</li>
                        <li>Condition-based kits (arthritis, digestion, skin, etc.).</li>
                        <li>Stock, pricing & shipping details.</li>
                        <li>Aftercare product suggestions for users.</li>
                        <li>Future: international shipping options.</li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- THERAPIES SUMMARY -->
<section class="py-4" id="therapies">
    <div class="container">
        <h2 class="section-title">Therapies & Natural Treatments Covered</h2>
        <p class="section-subtitle">
            All key natural healing streams are mapped and interlinked inside the platform.
        </p>

        <div class="row g-3">
            <div class="col-md-3">
                <div class="info-card">
                    <h6>Ayurveda</h6>
                    <p class="mb-2 small">
                        Classical treatments, Panchakarma, disease-specific protocols.
                    </p>
                    <p class="small mb-0">Examples: Panchakarma, Rasayana, detox, joint care.</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="info-card">
                    <h6>Yoga & Physio</h6>
                    <p class="mb-2 small">
                        Yoga therapy, asanas, pranayama, medical physiotherapy.
                    </p>
                    <p class="small mb-0">Helps with back pain, posture, rehab & stress.</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="info-card">
                    <h6>Naturopathy & Detox</h6>
                    <p class="mb-2 small">
                        Diet correction, mud therapy, hydrotherapy, lifestyle resets.
                    </p>
                    <p class="small mb-0">Supports long-term wellness & prevention.</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="info-card">
                    <h6>Other Therapies</h6>
                    <p class="mb-2 small">
                        Acupressure, cupping, Reiki, aromatherapy, laughter sessions.
                    </p>
                    <p class="small mb-0">Optional add-ons to build holistic programs.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- CONTACT / FOOTER -->
<section class="py-4" id="contact">
    <div class="container">
        <h2 class="section-title">Contact & Next Steps</h2>
        <p class="section-subtitle">
            This is a static prototype. Later we will connect it to real servlets,
            controllers, and database modules.
        </p>

        <div class="row">
            <div class="col-md-6">
                <div class="info-card">
                    <h6>For Management & Internal Review</h6>
                    <ul class="module-list">
                        <li>Use this page to explain the concept clearly.</li>
                        <li>Each module block reflects the real system plan.</li>
                        <li>We can convert this into actual functional flows step-by-step.</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6">
                <div class="info-card">
                    <h6>Demo Links (Future)</h6>
                    <p class="small mb-1">Later you can link these to real JSP/Servlet pages:</p>
                    <ul class="module-list">
                        <li><code>user-dashboard.jsp</code>, <code>admin-dashboard.jsp</code></li>
                        <li><code>hospital-dashboard.jsp</code>, <code>doctor-dashboard.jsp</code></li>
                        <li><code>accommodation.jsp</code>, <code>products.jsp</code></li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
</section>

<footer>
    <div class="container d-flex flex-column flex-md-row justify-content-between align-items-center">
        <div class="mb-2 mb-md-0">
            © <%= java.time.Year.now() %> AyurConnect – Global Ayurvedic Interlinking Platform
        </div>
        <div>
            <a href="#hero">Back to top</a>
        </div>
    </div>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
