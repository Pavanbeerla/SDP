<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel List</title>
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fff;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #ccc;
            width: 80%;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 24px;
            font-weight: bold;
            cursor: pointer;
        }

        .close:hover,
        .close:focus {
            color: #333;
            text-decoration: none;
        }

        /* Add Hotel Button */
        #addHotelBtn {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin: 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Hotel List Styles */
        #hotelList {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .hotel-card {
            background-color: #fff;
            border: 1px solid #ccc;
            margin: 10px;
            padding: 10px;
            width: 300px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .hotel-card img {
            max-width: 100%;
            height: auto;
        }

        /* Input Styles */
        label {
            font-weight: bold;
            display: block;
            margin: 5px 0;
        }

        input[type="text"] {
            width: 100%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin: 5px 0;
        }

        /* Add Button Styles */
        #addHotel {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin: 10px 0;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <h1>Hotel List</h1>
    <button id="addHotelBtn">Add Hotel</button>

    <div id="hotelList">
        <!-- Predefined Hotels -->
        <div class="hotel-card">
            <img src="https://media-cdn.tripadvisor.com/media/photo-s/25/7b/71/b4/chambre-d-hotes-cottes.jpg" alt="Hotel 1">
            <h3>Hotel 1</h3>
            <p>Location: City 1</p>
            <p>Cost: $100 per night</p>
        </div>

        <div class="hotel-card">
            <img src="https://media-cdn.tripadvisor.com/media/photo-s/1c/75/8c/01/maison-d-hotes-chamade.jpg" alt="Hotel 2">
            <h3>Hotel 2</h3>
            <p>Location: City 2</p>
            <p>Cost: $120 per night</p>
        </div>

        <div class="hotel-card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoV1Y6krLFzkAWWxmMR-jNl8EgLETDgOn1Tw&usqp=CAU" alt="Hotel 3">
            <h3>Hotel 3</h3>
            <p>Location: City 3</p>
            <p>Cost: $90 per night</p>
        </div>
    </div>
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2>Add Hotel</h2>
            <label for="imageLink">Image Link:</label>
            <input type="text" id="imageLink" oninput="showImagePreview()"><br>
            <img id="previewImage" src="" alt="Preview">
            <label for="hotelName">Name:</label>
            <input type="text" id="hotelName"><br>
            <label for="hotelLocation">Location:</label>
            <input type="text" id="hotelLocation"><br>
            <label for="hotelCost">Cost:</label>
            <input type="text" id="hotelCost"><br><br>
            <button id="addHotel">Add</button>
        </div>
    </div>

    <script>
        var modal = document.getElementById('myModal');
        var btn = document.getElementById("addHotelBtn");
        var span = document.getElementsByClassName("close")[0];

        btn.onclick = function() {
            modal.style.display = "block";
        }

        span.onclick = function() {
            modal.style.display = "none";
        }

        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

        function showImagePreview() {
            var imageLink = document.getElementById("imageLink").value;
            var previewImage = document.getElementById("previewImage");

            if (imageLink) {
                previewImage.src = imageLink;
                previewImage.style.display = "block";
            } else {
                previewImage.src = "";
                previewImage.style.display = "none";
            }
        }

        var addHotelBtn = document.getElementById("addHotel");
        addHotelBtn.addEventListener("click", function() {
            var imageLink = document.getElementById("imageLink").value;
            var hotelName = document.getElementById("hotelName").value;
            var hotelLocation = document.getElementById("hotelLocation").value;
            var hotelCost = document.getElementById("hotelCost").value;

            var hotelListDiv = document.getElementById("hotelList");
            var newHotelDiv = document.createElement("div");
            newHotelDiv.classList.add("hotel-card"); // Add this line to apply the card format
            newHotelDiv.innerHTML = `
                <img src="${imageLink}" alt="${hotelName}" height="100">
                <h3>${hotelName}</h3>
                <p>Location: ${hotelLocation}</p>
                <p>Cost: ${hotelCost}</p>
            `;
            hotelListDiv.appendChild(newHotelDiv);

            modal.style.display = "none";
        });
    </script>
</body>

</html>