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
            text-align: center;
        }
        header {
            background: #333;
            color: white;
            padding: 20px;
            font-size: 24px;
        }
        .container {
            max-width: 900px;
            margin: 30px auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
        }
        .section {
            margin: 20px 0;
            padding: 15px;
            border-radius: 5px;
            background: #ddd;
            animation: fadeIn 1s ease-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
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
</head>
<body>

<header>Admin Panel - Mega Cab</header>

<div class="container">
    <div class="section">
        <h2>Dashboard</h2>
        <p>Total Rides: <strong>120</strong></p>
        <p>Active Drivers: <strong>15</strong></p>
    </div>

    <div class="section">
        <h2>Manage Bookings</h2>
        <button onclick="alert('Viewing all bookings!')">View All Bookings</button>
        <button onclick="alert('Canceled a ride!')">Cancel Ride</button>
    </div>

    <div class="section">
        <h2>Manage Drivers</h2>
        <button onclick="alert('Adding a new driver!')">Add Driver</button>
        <button onclick="alert('Removing a driver!')">Remove Driver</button>
    </div>
    
    <div class="section">
        <h2>Manage Vehicles</h2>
        <button onclick="alert('Adding a new vehicle!')">Add Vehicle</button>
        <button onclick="alert('Removing a vehicle!')">Remove Vehicle</button>
    </div>
    
    <div class="section">
        <h2>Manage Users</h2>
        <button onclick="window.location.href='viewUsers'">View Users</button>
        <button onclick="alert('Banning a user!')">Ban User</button>
        <button onclick="alert('Removing a customer!')">Remove Customer</button>
    </div>
    
    <button onclick="window.location.href='index.html'">← Back to Home</button>
</div>

</body>
</html>
