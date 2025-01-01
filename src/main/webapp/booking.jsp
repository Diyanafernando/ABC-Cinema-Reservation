<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Page</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        let selectedSeat = null;

        function selectSeat(seatId) {
            if (document.getElementById(seatId).classList.contains('bg-red-500')) {
                alert('This seat is unavailable.');
                return;
            }

            if (selectedSeat) {
                document.getElementById(selectedSeat).classList.remove('bg-yellow-500');
                document.getElementById(selectedSeat).classList.add('bg-blue-500');
            }

            selectedSeat = seatId;
            document.getElementById(seatId).classList.remove('bg-blue-500');
            document.getElementById(seatId).classList.add('bg-yellow-500');
            document.getElementById('seatNumber').value = seatId;
        }

        function redirectToPayment() {
            if (!selectedSeat) {
                alert('Please select a seat before proceeding to payment.');
                return false;
            }
            return true;
        }
    </script>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col items-center">
    <h1 class="text-3xl font-bold mt-10">Book Your Ticket</h1>

    <div class="mt-5 text-xl">Movie: <span class="font-semibold"><%= request.getParameter("movie") %></span></div>

    <div class="mt-10 w-full max-w-4xl">
        <div class="text-center text-lg font-bold mb-5">SCREEN</div>
        <div class="grid grid-cols-10 gap-2 justify-center">
            <%-- Dynamic Seat Generation --%>
            <% for (char row = 'A'; row <= 'E'; row++) { %>
                <% for (int col = 1; col <= 10; col++) { %>
                    <div id="<%= row %><%= col %>" class="bg-blue-500 text-white text-center py-2 rounded cursor-pointer hover:bg-blue-700"
                        onclick="selectSeat('<%= row %><%= col %>')">
                        <%= row %><%= col %>
                    </div>
                <% } %>
            <% } %>
        </div>
        <div class="flex justify-center gap-4 mt-4 text-sm">
            <div class="flex items-center gap-2">
                <div class="w-4 h-4 bg-blue-500 rounded"></div>
                Available
            </div>
            <div class="flex items-center gap-2">
                <div class="w-4 h-4 bg-yellow-500 rounded"></div>
                Selected
            </div>
            <div class="flex items-center gap-2">
                <div class="w-4 h-4 bg-red-500 rounded"></div>
                Unavailable
            </div>
        </div>
    </div>

    <form action="AddBooking" method="POST" onsubmit="return redirectToPayment()" class="mt-10">
    <input type="hidden" id="movieName" name="movieName" value="<%= request.getParameter("movie") %>">
    <input type="hidden" id="seatNumber" name="seatNumber">
    <label for="userEmail" class="block text-lg font-semibold">Email:</label>
    <input type="email" id="userEmail" name="userEmail" required
           class="w-full max-w-md mt-2 p-2 border border-gray-300 rounded">
    <button type="submit" class="bg-green-500 text-white py-2 px-6 rounded hover:bg-green-600 mt-4">
        Proceed to Payment
    </button>
</form>
</body>
</html>
