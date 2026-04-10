<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title}</title>
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
    <h2>${title}</h2>

    <h3>Current Character Information</h3>
    <p><strong>ID:</strong> ${character.characterId}</p>
    <p><strong>Name:</strong> ${character.name}</p>
    <p><strong>Universe:</strong> ${character.universe}</p>
    <p><strong>Role:</strong> ${character.role}</p>
    <p><strong>Age:</strong> ${character.age}</p>
    <p><strong>Description:</strong> ${character.description}</p>

    <hr>

    <h3>Edit Character</h3>

    <form action="/characters/update/${character.characterId}" method="post">
        <label for="characterId">Character ID:</label>
        <input type="text" id="characterId" name="characterId" value="${character.characterId}" readonly
               style="width:100%; padding:10px; margin-bottom:15px; border-radius:10px; border:1px solid #ccc;">

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${character.name}" required
               style="width:100%; padding:10px; margin-bottom:15px; border-radius:10px; border:1px solid #ccc;">

        <label for="universe">Universe:</label>
        <input type="text" id="universe" name="universe" value="${character.universe}" required
               style="width:100%; padding:10px; margin-bottom:15px; border-radius:10px; border:1px solid #ccc;">

        <label for="role">Role:</label>
        <input type="text" id="role" name="role" value="${character.role}" required
               style="width:100%; padding:10px; margin-bottom:15px; border-radius:10px; border:1px solid #ccc;">

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" value="${character.age}" required
               style="width:100%; padding:10px; margin-bottom:15px; border-radius:10px; border:1px solid #ccc;">

        <label for="description">Description:</label>
        <textarea id="description" name="description" rows="5" required
                  style="width:100%; padding:10px; margin-bottom:15px; border-radius:10px; border:1px solid #ccc;">${character.description}</textarea>

        <button type="submit" class="back-button" style="display:block; width:100%;">Save Changes</button>
    </form>

    <br>

    <a href="/characters/delete/${character.characterId}" 
       style="display:block; text-align:center; background:#c94f7c; color:white; padding:12px; border-radius:10px; text-decoration:none;">
       Delete Character
    </a>
</main>

<footer>
    <p>&copy; 2026 Disney Character Gallery</p>
</footer>

</body>
</html>