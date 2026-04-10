<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/index.css">
  <title>Disney Princess Gallery</title>
</head>
<body>

<header class="header">
  <div class="left">
    <div class="lines">
      <span></span>
      <span></span>
      <span></span>
    </div>
    <h4>Disney Princess Gallery</h4>
  </div>

  <nav class="nav-header">
    <a href="/characters">Home</a>
    <a href="/about">About</a>
    <a href="/characters/create">Add Character</a>
  </nav>
</header>

<div class="search-container">
  <input type="text" placeholder="Search characters...">
</div>

<main class="gallery" id="gallery">
  <#list characterList as character>
    <div class="card" data-name="${character.name}">
      <h3>${character.name}</h3>
      <p>
        Universe: ${character.universe}<br>
        Role: ${character.role}<br>
        Age: ${character.age}<br>
        Description: ${character.description}
      </p>
      <a href="/characters/${character.characterId}">View Details</a>
    </div>
  </#list>
</main>

</body>
</html>