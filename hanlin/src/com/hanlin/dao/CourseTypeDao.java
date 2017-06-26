package com.hanlin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.domain.CourseType;

@Repository
public class CourseTypeDao extends BaseDao<CourseType> {
	@SuppressWarnings("unchecked")
	public List<CourseType> findAllCourseType() {
		String hqlString = "FROM CourseType";
		return super.find(hqlString);
	}
	public CourseType findCourseTypeByCourseTypeId(int courseTypeId){
		String hqlString="FROM CourseType WHERE courseTypeId=?";
		List<CourseType> list=super.find(hqlString, new Object[]{courseTypeId});
		if(list!=null&&list.size()!=0){
			return list.get(0);
		}
		return null;
	}
}
