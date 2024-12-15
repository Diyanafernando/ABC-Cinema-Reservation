<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<h1>Feedback Form</h1>

<!-- Start of Feedback Form -->
<form action="feedback" method="POST">

    <!-- Full Name Field -->
    <label for="fullName">Full Name:</label>
    <input type="text" id="fullName" name="fullName" placeholder="Enter your full name" required><br><br>

    <!-- Email Field -->
    <label for="email">Email Address:</label>
    <input type="email" id="email" name="email" placeholder="Enter your email" required><br><br>

    <!-- Feedback Message -->
    <label for="message">Your Feedback:</label><br>
    <textarea id="message" name="message" rows="5" cols="40" placeholder="Write your feedback here..." required></textarea><br><br>

    <!-- Submit Button -->
    <button type="submit">Submit Feedback</button>
</form>
<!-- End of Feedback Form -->
<canvas id="feedbackChart"></canvas>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
</body>
</html>
