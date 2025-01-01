<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CINX - Amazing Movie Experience</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-100 text-gray-800">
    <!-- Header -->
    <header class="bg-white shadow">
        <div class="container mx-auto px-6 py-4 flex justify-between items-center">
            <div class="text-2xl font-bold text-indigo-600">
                <a href="index.jsp">CINX</a>
            </div>
            <nav class="space-x-6">
                <a href="index.jsp" class="text-gray-600 hover:text-indigo-600">Home</a>
                <a href="#" class="text-gray-600 hover:text-indigo-600">Movies</a>
                <a href="feedback.jsp" class="text-gray-600 hover:text-indigo-600">Feedback</a>
                <a href="#" class="text-gray-600 hover:text-indigo-600">Contact Us</a>
            </nav>
            <div class="space-x-4">
                <a href="login.jsp" class="bg-indigo-600 text-white px-4 py-2 rounded hover:bg-indigo-700">Login</a>
                <a href="RegisterUser.jsp" class="bg-indigo-600 text-white px-4 py-2 rounded hover:bg-indigo-700">Signup</a>
            </div>
        </div>
    </header>

    <!-- Banner -->
    <section class="bg-indigo-600 text-white">
        <div class="container mx-auto px-6 py-20 flex flex-col md:flex-row items-center">
            <div class="md:w-1/2">
                <h1 class="text-4xl font-bold mb-4">Amazing Movie Experience</h1>
                <p class="mb-6">Come and enjoy our best movie experience with the best sound system.</p>
                <a href="#movies" class="bg-white text-indigo-600 px-6 py-3 rounded hover:bg-gray-200">Explore</a>
            </div>
            <div class="md:w-1/2">
                <img src="images/transformers.jpg" alt="Transformers" class="rounded-lg shadow-lg">
            </div>
        </div>
    </section>

    <!-- Movies Section -->
    <section id="movies" class="py-12">
        <div class="container mx-auto px-6">
            <h2 class="text-3xl font-bold text-center mb-8">Movies</h2>
            <div class="grid md:grid-cols-2 gap-8">
                <!-- Movie 1 -->
                <div class="flex flex-col md:flex-row bg-white rounded-lg shadow-lg overflow-hidden">
                    <img src="images/2222.jpg" alt="Avatar 3" class="w-full md:w-1/3 object-cover">
                    <div class="p-6">
                        <h3 class="text-2xl font-bold mb-4">Avatar 3</h3>
                        <p class="mb-4">James Cameron has suggested that the third Avatar movie will feature an antagonistic tribe of Na'vi referred to as "The Ash People."</p>
                        <a href="booking.jsp" class="text-indigo-600 hover:underline">Book</a>
                    </div>
                </div>

                <!-- Movie 2 -->
                <div class="flex flex-col md:flex-row bg-white rounded-lg shadow-lg overflow-hidden">
                    <img src="images/buuddy.jpg" alt="Buddy" class="w-full md:w-1/3 object-cover">
                    <div class="p-6">
                        <h3 class="text-2xl font-bold mb-4">Buddy</h3>
                        <p class="mb-4">The buddy film is a subgenre of romantic comedy combining romance, adventure, and comedy.</p>
                        <a href="booking.jsp" class="text-indigo-600 hover:underline">Book</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Facilities Section -->
    <section id="facilities" class="py-12 bg-gray-200">
        <div class="container mx-auto px-6">
            <h2 class="text-3xl font-bold text-center mb-8">Our Facilities</h2>
            <div class="flex flex-col md:flex-row items-center">
                <div class="md:w-1/2">
                    <img src="images/big_bear_open_house_2019___2_7885_1440x564px.png" alt="Facilities" class="rounded-lg shadow-lg">
                </div>
                <div class="md:w-1/2 md:pl-8">
                    <p class="text-gray-700">Our facilities offer a confined and suspenseful environment, enhancing the characters' psychological experiences and amplifying tension.</p>
                    <a href="#" class="text-indigo-600 hover:underline mt-4 inline-block">Read More</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-indigo-600 text-white py-8">
        <div class="container mx-auto px-6">
            <div class="flex flex-col md:flex-row justify-between items-center">
                <p class="text-center md:text-left">&copy; 2024 CINX. All Rights Reserved.</p>
                <div class="flex space-x-4 mt-4 md:mt-0">
                    <a href="#" class="hover:text-gray-300"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="hover:text-gray-300"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="hover:text-gray-300"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </footer>
</body>

</html>
