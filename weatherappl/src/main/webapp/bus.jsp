<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bus Routes Management</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 20px;
  }
  .container {
    max-width: 1400px;
    margin: 0 auto;
    background-color: #f9f9f9;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
    
  }
  .input-group {
    display: flex;
    margin-bottom: 10px;
  }
  .input-group input, .input-group select {
    flex: 1;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  .input-group button {
    padding: 10px 20px;
    margin-left: 10px;
    background-color: #4caf50;
    border: none;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
  }
  .routes-list {
    list-style-type: none;
    padding: 0;
  }
  .route-item {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 10px;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-bottom: 5px;
  }
  .route-item button {
    background-color: #ff5722;
    color: #fff;
    border: none;
    cursor: pointer;
    padding: 5px 10px;
    border-radius: 5px;
  }
  .modal {
    display: none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0,0.4);
    padding-top: 60px;
  }
  .modal-content {
    background-color: #fefefe;
    margin: 5% auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
    border-radius: 5px;
  }
  .modal-content input {
    width: calc(100% - 22px);
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  .modal-content button {
    padding: 10px 20px;
    background-color: #4caf50;
    border: none;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
  }
</style>
</head>
<body>
  <div class="container">
    <button onclick="openModal()">Add Route</button>
    <ul class="routes-list" id="routes-list">
      <li class="route-item">Source: A, Destination: B, Departure: 08:00 AM, Arrival: 10:00 AM <button onclick="removeRoute(this)">Remove</button></li>
      <li class="route-item">Source: C, Destination: D, Departure: 09:00 AM, Arrival: 11:00 AM <button onclick="removeRoute(this)">Remove</button></li>
      <li class="route-item">Source: E, Destination: F, Departure: 10:00 AM, Arrival: 12:00 PM <button onclick="removeRoute(this)">Remove</button></li>
    </ul>
  </div>

  <div id="addModal" class="modal">
    <div class="modal-content">
      <span onclick="closeModal()" class="close">&times;</span>
      <h2>Add Route</h2>
      <div class="input-group">
        <input type="text" id="source" placeholder="Source Location">
        <input type="text" id="destination" placeholder="Destination Location">
        <input type="time" id="departure" placeholder="Departure Time">
        <input type="time" id="arrival" placeholder="Arrival Time">
        <button onclick="addRoute()">Save</button>
      </div>
    </div>
  </div>

  <script>
    function openModal() {
      document.getElementById("addModal").style.display = "block";
    }

    function closeModal() {
      document.getElementById("addModal").style.display = "none";
      clearInputs();
    }

    function addRoute() {
      var source = document.getElementById("source").value;
      var destination = document.getElementById("destination").value;
      var departure = document.getElementById("departure").value;
      var arrival = document.getElementById("arrival").value;
      if (source && destination && departure && arrival) {
        var routesList = document.getElementById("routes-list");
        var li = document.createElement("li");
        li.className = "route-item";
        li.innerHTML = `
          Source: ${source}, Destination: ${destination}, Departure: ${departure}, Arrival: ${arrival}
          <button onclick="removeRoute(this)">Remove</button>
        `;
        routesList.appendChild(li);
        closeModal();
      }
    }

    function removeRoute(button) {
      button.parentElement.remove();
    }

    function clearInputs() {
      document.getElementById("source").value = "";
      document.getElementById("destination").value = "";
      document.getElementById("departure").value = "";
      document.getElementById("arrival").value = "";
    }
  </script>
</body>
</html>