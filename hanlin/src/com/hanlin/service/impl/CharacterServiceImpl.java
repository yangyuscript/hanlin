package com.hanlin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.hanlin.domain.Character;
import com.hanlin.dao.CharacterDao;
import com.hanlin.service.CharacterService;
@Service("characterService")
@Transactional
public class CharacterServiceImpl implements CharacterService {
    @Autowired
    private CharacterDao characterDao;
	@Override
	public void addCharacter(Character character) {
		characterDao.save(character);
	}
	@Override
	public List<Character> findCharactersByCourseId(int courseId) {
		return characterDao.findCharactersByCourseId(courseId);
	}
	@Override
	public void modifyCharacter(Character character) {
		characterDao.update(character);
	}
	@Override
	public Character getCharacterByCharacterId(int characterId) {
		return characterDao.getCharacterByCharacterId(characterId);
	}
	

}
