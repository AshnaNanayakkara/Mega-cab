<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign In</title>

<!-- Font Icon -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<div class="w-full max-w-md bg-white rounded-lg shadow-lg p-6">
    <h2 class="text-2xl font-semibold text-center text-gray-700 mb-4">Sign In</h2>
    <form method="post" action="login" class="space-y-4">
        <div class="flex items-center border border-gray-300 rounded-lg p-2">
            <i class="zmdi zmdi-account text-gray-500 mr-2"></i>
            <input type="text" name="username" id="username" placeholder="Your Name" class="w-full focus:outline-none"/>
        </div>
        <div class="flex items-center border border-gray-300 rounded-lg p-2">
            <i class="zmdi zmdi-lock text-gray-500 mr-2"></i>
            <input type="password" name="password" id="password" placeholder="Password" class="w-full focus:outline-none"/>
        </div>
        <div class="flex items-center">
            <input type="checkbox" name="remember-me" id="remember-me" class="mr-2"/> 
            <label for="remember-me" class="text-gray-600">Remember me</label>
        </div>
        <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded-lg hover:bg-blue-600 transition">Log in</button>
    </form>
    <div class="text-center mt-4">
        <span class="text-gray-600">Or login with</span>
        <div class="flex justify-center space-x-4 mt-2">
            <a href="#" class="text-blue-500 text-xl"><i class="zmdi zmdi-facebook"></i></a>
            <a href="#" class="text-blue-400 text-xl"><i class="zmdi zmdi-twitter"></i></a>
            <a href="#" class="text-red-500 text-xl"><i class="zmdi zmdi-google"></i></a>
        </div>
    </div>
    <p class="text-center text-gray-600 mt-4">Don't have an account? <a href="registration.jsp" class="text-blue-500">Sign up</a></p>
</div>

<!-- JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
    var status = document.getElementById("status").value;
    if(status == "success"){
        swal("Sorry", "Wrong Username or Password", "error");
    }
</script>
</body>
</html>
