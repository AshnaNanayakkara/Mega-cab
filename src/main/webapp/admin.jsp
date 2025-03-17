<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mega Cab - Admin Panel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            display: flex;
        }
        .sidebar {
            width: 250px;
            height: 100vh;
            background: #2980b9;
            color: white;
            padding: 20px;
            position: fixed;
            box-shadow: 2px 0 10px rgba(0, 0, 0, 0.2);
        }
        .sidebar h2 {
            text-align: center;
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
        }
        .sidebar ul li {
            padding: 15px;
            margin: 10px 0;
            background: #3498db;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            transition: 0.3s;
        }
        .sidebar ul li:hover, .sidebar ul li.active {
            background: #1abc9c;
        }
        .main-content {
            margin-left: 270px;
            padding: 20px;
            flex-grow: 1;
        }
        .card {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            margin: 20px 0;
            text-align: center;
            transition: transform 0.3s;
            display: none;
        }
        .card.active {
            display: block;
        }
        button {
            background-color: #f39c12;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }
        button:hover {
            background-color: #e67e22;
        }
    </style>
    <script>
        function showSection(index) {
            let sections = document.querySelectorAll('.card');
            let menuItems = document.querySelectorAll('.sidebar ul li');
            
            sections.forEach((section, i) => {
                section.classList.remove('active');
                menuItems[i].classList.remove('active');
            });
            
            sections[index].classList.add('active');
            menuItems[index].classList.add('active');
        }
    </script>
</head>
<body>
    <div class="sidebar">
        <h2>Admin Panel</h2>
        <ul>
            <li onclick="showSection(0)" class="active">Dashboard</li>
            <li onclick="showSection(1)">Manage Bookings</li>
            <li onclick="showSection(2)">Manage Drivers</li>
            <li onclick="showSection(3)">Manage Vehicles</li>
            <li onclick="showSection(4)">Manage Users</li>
        </ul>
    </div>
    <div class="main-content">
        <div class="card active">
            <h2>Dashboard</h2>
            <p>Total Rides: <strong>120</strong></p>
            <p>Active Drivers: <strong>15</strong></p>
        </div>
        <div class="card">
            <h2>Manage Bookings</h2>
            <button onclick="alert('Viewing all bookings!')">View All Bookings</button>
            <button onclick="alert('Canceled a ride!')">Cancel Ride</button>
        </div>
        <div class="card">
            <h2>Manage Drivers</h2>
            <button onclick="alert('Adding a new driver!')">Add Driver</button>
            <button onclick="alert('Removing a driver!')">Remove Driver</button>
        </div>
        <div class="card">
            <h2>Manage Vehicles</h2>
            <button onclick="alert('Adding a new vehicle!')">Add Vehicle</button>
            <button onclick="alert('Removing a vehicle!')">Remove Vehicle</button>
        </div>
        <div class="card">
            <h2>Manage Users</h2>
            <button onclick="window.location.href='viewUsers'">View Users</button>
            <button onclick="alert('Banning a user!')">Ban User</button>
            <button onclick="alert('Removing a customer!')">Remove Customer</button>
        </div>
    </div>
</body>
</html>