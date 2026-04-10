<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Character Details</title>
    <link rel="stylesheet" href="/details.css">
</head>
<body>

<header class="header">
    <h4>Disney Princess Details</h4>
    <nav>
        <a href="/characters">Home</a>
        <a href="/about">About</a>
        <a href="/characters/create">Add a Character</a>
    </nav>
</header>

<main>
    <section class="character-details">
        <h2>${character.name}</h2>
        <p><strong>Universe:</strong> ${character.universe}</p>
        <p><strong>Role:</strong> ${character.role}</p>
        <p><strong>Age:</strong> ${character.age}</p>
        <p><strong>Description:</strong> ${character.description}</p>

        <br>

        <a href="/characters/updateForm/${character.characterId}">Edit Character</a>
        <br><br>
        <a href="/characters/delete/${character.characterId}">Delete Character</a>
    </section>
</main>

<footer>
    <p>&copy; 2026 Disney Character Gallery</p>
</footer>

</body>
</html>