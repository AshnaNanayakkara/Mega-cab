<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Now - Cab Service</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col">

    <!-- Header -->
    <nav class="bg-gray-900 text-white p-4 flex justify-between items-center shadow-md">
        <div class="text-xl font-semibold">Cab Service</div>
        <div>
            <a href="index.jsp" class="px-4 py-2 rounded-md hover:bg-gray-700">Home</a>
            <a href="login.jsp" class="px-4 py-2 rounded-md bg-blue-500 hover:bg-blue-600"> <%= session.getAttribute("name") %> </a>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="max-w-lg mx-auto mt-10 p-6 bg-white rounded-lg shadow-lg">
        <h2 class="text-2xl font-semibold text-center text-gray-700 mb-4">Book a Cab</h2>

        <!-- Messages -->
        <% if (request.getAttribute("errorMessage") != null) { %>
            <p class="text-red-500 text-center"><%= request.getAttribute("errorMessage") %></p>
        <% } %>
        <% if (request.getAttribute("successMessage") != null) { %>
            <p class="text-green-500 text-center"><%= request.getAttribute("successMessage") %></p>
        <% } %>

        <form action="BookingServlet" method="post" class="space-y-4">
            <label class="block text-gray-600">Username:</label>
            <input type="text" name="username" id="username" value="<%= session.getAttribute("name") %>" readonly class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            
            <label class="block text-gray-600">Pickup Location:</label>
            <input type="text" name="pickup" id="pickup" required class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">

            <label class="block text-gray-600">Dropoff Location:</label>
            <input type="text" name="dropoff" id="dropoff" required class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">

            <label class="block text-gray-600">Vehicle Type:</label>
            <select name="vehicle" id="vehicle" required class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                <option value="Budget">Budget</option>
                <option value="Car">Car</option>
                <option value="Van">Van</option>
            </select>

            <label class="block text-gray-600">Choose Your Booking Date:</label>
            <input type="date" name="booked_date" id="booked_date" required class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">

            <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded-lg hover:bg-blue-600 transition">Book Now</button>
        </form>
    </div>

    <!-- Footer -->
    <footer class="mt-auto bg-gray-900 text-white text-center p-4">
        <p>&copy; 2025 Cab Service. All Rights Reserved.</p>
    </footer>

</body>
</html>
