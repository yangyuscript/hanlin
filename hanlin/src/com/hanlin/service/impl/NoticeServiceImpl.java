package com.hanlin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanlin.dao.NoticeDao;
import com.hanlin.domain.Notice;
import com.hanlin.service.NoticeService;
@Service("noticeService")
@Transactional
public class NoticeServiceImpl implements NoticeService {
    @Autowired
    private NoticeDao noticeDao;
	@Override
	public void addNotice(Notice notice) {
       noticeDao.save(notice);
	}
	@Override
	public List<Notice> findNoticesByCourseId(int courseId) {
		return noticeDao.findNoticesByCourseId(courseId);
	}
	@Override
	public List<Notice> findNoticesByNoticeType(int noticeType) {
		return noticeDao.findNoticesByNoticeType(noticeType);
	}
	@Override
	public List<Notice> findAllNotice() {
		// TODO Auto-generated method stub
		return noticeDao.findAllNotices();
	}
    
}
