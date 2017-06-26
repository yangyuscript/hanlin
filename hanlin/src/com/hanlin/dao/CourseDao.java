package com.hanlin.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.domain.Course;
import com.hanlin.domain.CourseInfo;
import com.hanlin.domain.Pager;

@Repository
public class CourseDao extends BaseDao<Course> {
	public List<Course> findCoursesByTeacherId(int teacherId) {
		String hqlString = "FROM Course WHERE teacherId=?";
		return super.find(hqlString, new Object[] { teacherId });
	}

	public Course getCourseByCourseId(int courseId) {
		String hqlString = "FROM Course WHERE courseId=?";
		List<Course> list = super.find(hqlString, new Object[] { courseId });
		if (list.size() != 0 && list != null) {
			return list.get(0);
		}
		return null;
	}

	// 管理员管理所有课程
	public Pager<Course> findCoursesWithSearch(String courseName,int courseTypeId,String time,
			int pageNum, int pageSize) {
		Pager<Course> coursePager = null;
		StringBuilder hql = new StringBuilder("from Course where 1=1");
		StringBuilder countHql = new StringBuilder(
				"select count(*) from Course where 1=1");
		if (courseName != null && !courseName.equals("")) {
			hql.append(" and courseName like '%" + courseName + "%'");
			countHql.append(" and courseName like '%" + courseName + "%'");
		}
		if ((Integer)courseTypeId!=null&&courseTypeId!=0) {
			hql.append(" and courseType =" + courseTypeId);
			countHql.append(" and courseType =" + courseTypeId);
		}
		if (time != null && !time.equals("")) {
			hql.append(" and time like '%" + time + "%'");
			countHql.append(" and time like '%" + time + "%'");
		}
		/*
		 * if (teacherName != null && !teacherName.equals("")) {
		 * hql.append(" and where teacherName like '%" + teacherName + "%'");
		 * countHql.append(" and where teacherName like '%" + teacherName +
		 * "%'"); }
		 */
		// 起始索引
		int fromIndex = pageSize * (pageNum - 1);
		// 使用limit关键字，实现分页
		// hql.append(" limit " + fromIndex + ", " + pageSize);
		int totalRecord = Integer.parseInt(String.valueOf(super.count(countHql
				.toString())));
		// 获取总页数
		int totalPage = totalRecord / pageSize;
		if (totalRecord % pageSize != 0) {
			totalPage++;
		}
		List<Course> courseList = super.getPageList(hql.toString(), fromIndex,
				pageSize); 
		coursePager = new Pager<Course>(pageSize, pageNum, totalRecord,
				totalPage, courseList);
		return coursePager;
	}


	// 首次登陆网站，找出最新发布的四个课程
	public List<Course> findCoursesLastestFour() {
		String hql = "FROM Course WHERE courseCondi=1 ORDER BY time Desc";
		return super.getPageList(hql, 0, 4);
	}
	//根据课程类别找到最热门的课程
	public Course getRecCourse(int courseType,int courseId){
		String hql="FROM Course WHERE courseCondi=1 AND courseId!="+courseId+" AND courseType="+courseType+"ORDER BY learningPeopleNum desc,likeingPeopleNum desc";
		List<Course> list=super.getPageList(hql, 0, 1);
		if(list!=null&&list.size()!=0){
			return list.get(0);
		}
		return null;
	}
}
