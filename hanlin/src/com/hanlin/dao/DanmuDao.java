package com.hanlin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.domain.Danmu;
@Repository
public class DanmuDao extends BaseDao<Danmu> {
   public List<Danmu> findDanmusByMeasureId(int measureId){
	   String hqlString="FROM Danmu WHERE measureId=?";
	   return super.find(hqlString, new Object[]{measureId});
   }
}
