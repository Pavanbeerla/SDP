<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Educational Institutes</title>
<style>
  .cardContainer {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
  }

  .card {
    border: 1px solid #ccc;
    border-radius: 8px;
    margin: 10px;
    padding: 10px;
    width: 22%; /* Set the width to fit four cards in a row */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    box-sizing: border-box;
  }

  .card h2 {
    margin: 0;
    font-size: 1.5em;
  }

  .card p {
    margin: 5px 0;
  }

  .card img {
    width: 100%;
    max-width: 100%; /* Ensure images don't exceed the card width */
    border-radius: 8px;
  }

  /* Colors */
  .card:nth-child(1) {
    background-color: #ffcccc; /* Light Red */
  }

  .card:nth-child(2) {
    background-color: #ccffcc; /* Light Green */
  }

  .card:nth-child(3) {
    background-color: #ccccff; /* Light Blue */
  }

  .card:nth-child(4) {
    background-color: #ffccff; /* Light Purple */
  }
</style>
</head>
<body>
<div class="cardContainer" id="cardContainer"></div>

<script>
const institutes = [
  { name: "Example University", rating: 4.5, stream: "Engineering", location: "New York", image: "https://cdn-jklip.nitrocdn.com/safSuIdqgDlBkQZOuiEFYetySutVuoYj/assets/images/optimized/rev-5bef26f/happay.com/blog/wp-content/uploads/sites/12/2022/09/Business-Travel-Management-_1_-scaled-1-768x512.webp" },
  { name: "Another College", rating: 4.0, stream: "Arts", location: "Los Angeles", image: "https://via.placeholder.com/300" },
  { name: "Technical Institute", rating: 3.8, stream: "Technology", location: "San Francisco", image: "https://via.placeholder.com/300" },
  { name: "Art School", rating: 4.2, stream: "Fine Arts", location: "Chicago", image: "https://via.placeholder.com/300" }
];

const cardContainer = document.getElementById("cardContainer");

institutes.forEach(institute => {
  const card = document.createElement("div");
  card.classList.add("card");
  card.innerHTML = `
    <h2>${institute.name}</h2>
    <img src="${institute.image}" alt="${institute.name}">
    <p>Rating: ${institute.rating}</p>
    <p>Main Stream: ${institute.stream}</p>
    <p>Location: ${institute.location}</p>
  `;
  cardContainer.appendChild(card);
});
</script>
</body>
</html>
