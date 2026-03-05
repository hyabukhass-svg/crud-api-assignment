package com.example.demo;

import java.util.Collection;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/characters")
public class CharacterApiController {

    private final CharacterService characterService;

    public CharacterApiController(CharacterService characterService) {
        this.characterService = characterService;
    }

    // Get all characters
    @GetMapping("/")
    public ResponseEntity<Collection<Character>> getAllCharacters() {
        return ResponseEntity.ok(characterService.getAllCharacters());
    }

    // Get character by ID
    @GetMapping("/{id}")
    public ResponseEntity<Character> getCharacterById(@PathVariable Long id) {
        Character character = characterService.getCharacterById(id);

        if (character != null) {
            return ResponseEntity.ok(character);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    // Add a new character
    @PostMapping("/")
    public ResponseEntity<Character> createCharacter(@RequestBody Character character) {

        Character createdCharacter = characterService.createCharacter(character);

        if (createdCharacter != null) {
            return ResponseEntity.ok(createdCharacter);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    // Update an existing character
    @PutMapping("/{id}")
    public ResponseEntity<Character> updateCharacter(
            @PathVariable Long id,
            @RequestBody Character updatedCharacter) {

        Character character = characterService.updateCharacter(id, updatedCharacter);

        if (character != null) {
            return ResponseEntity.ok(character);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    // Delete a character
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCharacter(@PathVariable Long id) {

        characterService.deleteCharacter(id);
        return ResponseEntity.noContent().build();
    }

    // Get characters by universe 
    @GetMapping("/universe/{universe}")
    public ResponseEntity<Collection<Character>> getCharactersByUniverse(@PathVariable String universe) {
        return ResponseEntity.ok(characterService.getCharactersByUniverse(universe));
    }

    // Get characters by role 
    @GetMapping("/role/{role}")
    public ResponseEntity<Collection<Character>> getCharactersByRole(@PathVariable String role) {
        return ResponseEntity.ok(characterService.getCharactersByRole(role));
    }

    // Search characters by name
    @GetMapping("/search")
    public ResponseEntity<Collection<Character>> searchCharactersByName(
            @RequestParam(required = false) String name) {

        List<Character> characters;

        if (name != null) {
            characters = characterService.searchCharactersByName(name);
        } else {
            characters = characterService.getAllCharacters();
        }

        return ResponseEntity.ok(characters);
    }
}
