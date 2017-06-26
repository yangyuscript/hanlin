package com.hanlin.dao;

import java.util.List;
import com.hanlin.domain.Character;
import org.springframework.stereotype.Repository;
@Repository
public class CharacterDao extends BaseDao<Character> {
   public List<Character> findCharactersByCourseId(int courseId){
	    String hql="FROM Character WHERE courseId=?";
	    return super.find(hql, new Object[]{courseId});
   }
   public Character getCharacterByCharacterId(int characterId){
	   String hql="FROM Character WHERE characterId=?";
	   List<Character> list=super.find(hql, new Object[]{characterId});
	   if(list.size()!=0&&list!=null){
		   return list.get(0);
	   }
	   return null;
   }
}
