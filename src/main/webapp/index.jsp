<%
    if(session.getAttribute("name") == null){
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mega Cab - Taxi Service</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        header {
            background-color: #333;
            color: white;
            padding: 15px;
            text-align: center;
        }
        nav {
            display: flex;
            justify-content: center;
            background-color: #444;
            position: sticky;
            top: 0;
            z-index: 1000;
            padding: 10px 0;
        }
        nav a {
            color: white;
            padding: 12px 20px;
            text-decoration: none;
            text-align: center;
            font-weight: bold;
        }
        nav a:hover {
            background-color: #ff9800;
            color: black;
            border-radius: 5px;
        }
        .user-name {
            background-color: #f39c12;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
            text-decoration: none;
            margin-left: 20px;
        }
        .hero-section {
            background: url('./assets/cover.jpg') no-repeat center center/cover;
            height: 600px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
            flex-direction: column;
        }
        .hero-section h1 {
            font-size: 50px;
            margin: 0;
        }
        .hero-section p {
            font-size: 22px;
            margin-bottom: 20px;
        }
        .book-ride-btn {
            background-color: #f39c12;
            color: white;
            padding: 15px 30px;
            font-size: 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            transition: 0.3s;
        }
        .book-ride-btn:hover {
            background-color: #e67e22;
        }
        .services {
            padding: 40px 20px;
            text-align: center;
            background-color: #fff;
        }
        .service-item {
            display: inline-block;
            width: 30%;
            margin: 15px;
            background-color: #e3e3e3;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .contact-form {
            background-color: #fff;
            padding: 20px;
            margin: 20px auto;
            width: 80%;
            max-width: 600px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .contact-form button {
            background-color: #333;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
        }
        .contact-form button:hover {
            background-color: #444;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 15px;
        }
    </style>
</head>
<body>
<header>
    <h1>Mega Cab</h1>
    <p>Your Trusted Taxi Service</p>
</header>
<nav>
    <a href="#home">Home</a>
    <a href="#services">Services</a>
    <a href="#contact">Contact</a>
    <a href="#help">Help</a>
    <a href="logout" class="user-name"><%=session.getAttribute("name")%></a>
</nav>
<div class="hero-section">
    <h1>Fast and Reliable Taxi Service</h1>
    <p>Ride with comfort and safety at Mega Cab</p>
    <a href="booking.jsp" class="book-ride-btn">Book a Ride</a>
</div>
<section id="services" class="services">
    <h2>Our Services</h2>
    <div class="service-item">
        <h3>Airport Pickup</h3>
        <p>Arrive at your destination smoothly with our airport pickup service.</p>
    </div>
    <div class="service-item">
        <h3>City Tours</h3>
        <p>Explore the city with our guided taxi tours to popular locations.</p>
    </div>
    <div class="service-item">
        <h3>24/7 Availability</h3>
        <p>We are available around the clock for your transportation needs.</p>
    </div>
</section>
<section id="contact">
    <div class="contact-form">
        <h3>Get in Touch</h3>
        <form action="#" method="post">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <textarea name="message" rows="4" placeholder="Your Message" required></textarea>
            <button type="submit">Submit</button>
        </form>
    </div>
</section>
<footer>
    <p>&copy; 2025 Mega Cab. All rights reserved.</p>
</footer>
</body>
</html>
