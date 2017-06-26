package com.hanlin.service;

import java.util.List;
import com.hanlin.domain.Character;
public interface CharacterService {
   public void addCharacter(Character character);
   public List<Character> findCharactersByCourseId(int courseId);
   public void modifyCharacter(Character character);
   public Character getCharacterByCharacterId(int characterId);
}
