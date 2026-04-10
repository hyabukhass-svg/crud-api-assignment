<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add a New Character</title>
<link rel="stylesheet" href="/about.css">
</head>
<body>

<header class="header">
    <h4>Disney Princess Gallery</h4>
    <nav>
        <a href="/characters">Home</a>
        <a href="/about">About</a>
        <a href="/characters/create">Add a Character</a>
    </nav>
</header>

<main class="character-details">
    <h2>Add a New Character</h2>

    <form action="/characters/create" method="post">
      
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter character name" required
               style="width:100%; padding:10px; margin-bottom:15px; border-radius:10px; border:1px solid #ccc;">

        <label for="universe">Universe:</label>
        <input type="text" id="universe" name="universe" placeholder="Enter character universe" required
               style="width:100%; padding:10px; margin-bottom:15px; border-radius:10px; border:1px solid #ccc;">

        <label for="role">Role:</label>
        <input type="text" id="role" name="role" placeholder="Enter character role" required
               style="width:100%; padding:10px; margin-bottom:15px; border-radius:10px; border:1px solid #ccc;">

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" placeholder="Enter character age" required
               style="width:100%; padding:10px; margin-bottom:15px; border-radius:10px; border:1px solid #ccc;">

        <label for="description">Description:</label>
        <textarea id="description" name="description" placeholder="Enter short description" required
                  style="width:100%; padding:10px; margin-bottom:15px; border-radius:10px; border:1px solid #ccc;"
                  rows="5"></textarea>

        <button type="submit" class="back-button" style="display:block; width:100%;">Add Character</button>
    </form>
</main>

<footer>
    <p>&copy; 2026 Disney Character Gallery</p>
</footer>

</body>
</html>