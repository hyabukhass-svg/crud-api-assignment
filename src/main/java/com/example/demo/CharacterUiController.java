package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CharacterUiController {

    private final CharacterService characterService;

    public CharacterUiController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/characters")
    public String getAllCharacters(Model model) {
        model.addAttribute("characterList", characterService.getAllCharacters());
        return "character-list";
    }

    @GetMapping("/characters/{characterId}")
    public String getCharacterById(@PathVariable("characterId") Long characterId, Model model) {
        Character character = characterService.getCharacterById(characterId);

        if (character == null) {
            return "error";
        }

        model.addAttribute("character", character);
        return "character-details";
    }

    @GetMapping("/characters/create")
    public String showCreateForm() {
        return "character-create";
    }

    @PostMapping("/characters/create")
    public String createCharacter(Character character) {
        Character savedCharacter = characterService.createCharacter(character);
        return "redirect:/characters/" + savedCharacter.getCharacterId();
    }

    @GetMapping("/characters/updateForm/{characterId}")
    public String showUpdateForm(@PathVariable("characterId") Long characterId, Model model) {
        Character character = characterService.getCharacterById(characterId);

        if (character == null) {
            return "error";
        }

        model.addAttribute("character", character);
        model.addAttribute("title", "Update Character: " + characterId);
        return "character-update";
    }

    @PostMapping("/characters/update/{characterId}")
    public String updateCharacter(@PathVariable("characterId") Long characterId, Character character) {
        Character updatedCharacter = characterService.updateCharacter(characterId, character);

        if (updatedCharacter == null) {
            return "error";
        }

        return "redirect:/characters/" + characterId;
    }

    @GetMapping("/characters/delete/{characterId}")
    public String deleteCharacter(@PathVariable("characterId") Long characterId) {
        characterService.deleteCharacter(characterId);
        return "redirect:/characters";
    }
}