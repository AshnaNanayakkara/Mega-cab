<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>

<!-- Font Icon -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<div class="w-full max-w-md bg-white rounded-lg shadow-lg p-6">
    <h2 class="text-2xl font-semibold text-center text-gray-700 mb-4">Sign Up</h2>
    <form method="post" action="register" class="space-y-4">
        <div class="flex items-center border border-gray-300 rounded-lg p-2">
            <i class="zmdi zmdi-account text-gray-500 mr-2"></i>
            <input type="text" name="name" id="name" placeholder="Your Name" class="w-full focus:outline-none"/>
        </div>
        <div class="flex items-center border border-gray-300 rounded-lg p-2">
            <i class="zmdi zmdi-email text-gray-500 mr-2"></i>
            <input type="email" name="email" id="email" placeholder="Your Email" class="w-full focus:outline-none"/>
        </div>
        <div class="flex items-center border border-gray-300 rounded-lg p-2">
            <i class="zmdi zmdi-phone text-gray-500 mr-2"></i>
            <input type="text" name="contact" id="contact" placeholder="Contact No" class="w-full focus:outline-none"/>
        </div>
        <div class="flex items-center border border-gray-300 rounded-lg p-2">
            <i class="zmdi zmdi-city text-gray-500 mr-2"></i>
            <input type="text" name="address" id="address" placeholder="Address" class="w-full focus:outline-none"/>
        </div>
        <div class="flex items-center border border-gray-300 rounded-lg p-2">
            <i class="zmdi zmdi-card text-gray-500 mr-2"></i>
            <input type="text" name="nic" id="nic" placeholder="NIC" class="w-full focus:outline-none"/>
        </div>
        <div class="flex items-center border border-gray-300 rounded-lg p-2">
            <i class="zmdi zmdi-lock text-gray-500 mr-2"></i>
            <input type="password" name="pass" id="pass" placeholder="Password" class="w-full focus:outline-none"/>
        </div>
        <div class="flex items-center border border-gray-300 rounded-lg p-2">
            <i class="zmdi zmdi-lock-outline text-gray-500 mr-2"></i>
            <input type="password" name="re_pass" id="re_pass" placeholder="Repeat Password" class="w-full focus:outline-none"/>
        </div>
        <div class="flex items-center">
            <input type="checkbox" name="agree-term" id="agree-term" class="mr-2"/> 
            <label for="agree-term" class="text-gray-600">I agree to the <a href="#" class="text-blue-500">Terms of Service</a></label>
        </div>
        <button type="submit" class="w-full bg-green-500 text-white py-2 rounded-lg hover:bg-green-600 transition">Register</button>
    </form>
    <p class="text-center text-gray-600 mt-4">Already have an account? <a href="login.jsp" class="text-blue-500">Sign in</a></p>
</div>

<!-- JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
    var status = document.getElementById("status").value;
    if(status == "success"){
        swal("Congrats", "Account Created Successfully", "success");
    }
</script>
</body>
</html>
