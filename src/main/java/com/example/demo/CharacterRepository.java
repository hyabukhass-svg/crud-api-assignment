package com.example.demo;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {

    // Derived query
    List<Character> findByUniverse(String universe);

    // Derived query
    List<Character> findByRole(String role);

    // Custom query: find characters above a certain age
    @Query(value = "SELECT c.* FROM character c WHERE c.age >= ?1", nativeQuery = true)
    List<Character> findOlderCharacters(double age);

    // Custom query: search characters by name
    @Query(value = "SELECT c.* FROM character c WHERE c.name LIKE %?1%", nativeQuery = true)
    List<Character> searchByName(String name);

}