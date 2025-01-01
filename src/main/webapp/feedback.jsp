<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body class="bg-gray-100 text-gray-800">
    <div class="container mx-auto px-6 py-12">
        <h1 class="text-3xl font-bold text-center mb-8">Feedback Form</h1>

        <!-- Start of Feedback Form -->
        <form action="feedback" method="POST" class="bg-white shadow-md rounded px-8 py-6 max-w-lg mx-auto">

            <!-- Full Name Field -->
            <div class="mb-4">
                <label for="fullName" class="block text-gray-700 font-bold mb-2">Full Name:</label>
                <input type="text" id="fullName" name="fullName" placeholder="Enter your full name" required
                    class="w-full px-4 py-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-indigo-200">
            </div>

            <!-- Email Field -->
            <div class="mb-4">
                <label for="email" class="block text-gray-700 font-bold mb-2">Email Address:</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required
                    class="w-full px-4 py-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-indigo-200">
            </div>

            <!-- Feedback Message -->
            <div class="mb-4">
                <label for="message" class="block text-gray-700 font-bold mb-2">Your Feedback:</label>
                <textarea id="message" name="message" rows="5" placeholder="Write your feedback here..." required
                    class="w-full px-4 py-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-indigo-200"></textarea>
            </div>

            <!-- Submit Button -->
            <div class="text-center">
                <button type="submit"
                    class="bg-indigo-600 text-white px-6 py-2 rounded hover:bg-indigo-700 transition">Submit Feedback</button>
            </div>
        </form>
        <!-- End of Feedback Form -->

        <!-- Feedback Chart -->
        <div class="mt-12">
            <h2 class="text-2xl font-bold text-center mb-6">Feedback Summary</h2>
            <canvas id="feedbackChart" class="max-w-2xl mx-auto"></canvas>
        </div>

        <script>
            const ctx = document.getElementById('feedbackChart').getContext('2d');
            const feedbackChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['Excellent', 'Good', 'Average', 'Poor'],
                    datasets: [{
                        label: '# of Feedbacks',
                        data: [12, 19, 3, 5], // Replace with dynamic data
                        backgroundColor: [
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(255, 99, 132, 0.2)'
                        ],
                        borderColor: [
                            'rgba(75, 192, 192, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(255, 99, 132, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        </script>
    </div>
</body>
</html>

