<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mega Cab - Taxi Service</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        nav {
            display: flex;
            justify-content: center; /* Center items horizontally */
            align-items: center; /* Center items vertically */
            background-color: #444;
            position: sticky;
            top: 0;
            z-index: 1000;
        }
        nav a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            text-align: center;
        }
        nav a:hover {
            background-color: #ddd;
            color: black;
        }
        .user-name {
            background-color: #f39c12;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
            text-decoration: none;
            margin-left: 20px;
            text-align: center;  /* Ensures text is centered within the element */
        }
        .user-name:hover {
            background-color: #e67e22;
        }
        .hero-section {
            background: url('./images/cover.jpg') no-repeat center center/cover;
            height: 600px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
            background-size: cover;
            background-position: center;
        }
        .hero-section h1 {
            font-size: 60px;
            margin: 0;
        }
        .hero-section p {
            font-size: 20px;
        }
        .book-ride-btn {
            background-color: #f39c12;
            color: white;
            padding: 15px 30px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            margin-top: 20px;
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
            box-sizing: border-box;
        }
        .service-item h3 {
            margin-top: 0;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
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
    <a href="logout" class="user-name"><%=session.getAttribute("name")%></a> <!-- User's name with special styling -->
</nav>

<div class="hero-section">
    <div>
        <h1>Fast and Reliable Taxi Service</h1>
        <p>Ride with comfort and safety at Mega Cab</p>
    </div>
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

<!-- Help Section -->
<section id="help" style="background-color: #f4f4f4; padding: 40px; text-align: center;">
    <h2>Need Help?</h2>
    <p>If you need assistance, you can reach out to us at any time. We are here to ensure a smooth experience with Mega Cab.</p>
    <p>For immediate support, please call us at 1-800-123-4567 or email us at support@megacab.com.</p>
    <button class="button" onclick="window.location.href='mailto:support@megacab.com'">📞 Contact Us Immediately</button>
    <button class="button" onclick="window.location.href='index.html'">← Back to Home</button>
</section>

<!-- Contact Us Section -->
<section id="contact">
    <h2>Contact Us</h2>
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
