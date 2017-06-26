package com.hanlin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hanlin.domain.Notice;

@Repository
public class NoticeDao extends BaseDao<Notice> {
	public List<Notice> findNoticesByCourseId(int courseId) {
		String hql = "FROM Notice WHERE courseId=" + courseId
				+ "ORDER BY time DESC";
		return super.getPageList(hql, 0, 5);
	}

	public List<Notice> findNoticesByNoticeType(int noticeType) {
		String hql = "FROM Notice WHERE noticeType=" + noticeType
				+ "ORDER BY time DESC";
		return super.getPageList(hql, 0, 5);
	}

	@SuppressWarnings("unchecked")
	public List<Notice> findAllNotices() {
		String hql = "FROM Notice ORDER BY time DESC";
		return super.find(hql);
	}
}
