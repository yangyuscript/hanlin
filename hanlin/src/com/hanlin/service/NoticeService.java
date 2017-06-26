package com.hanlin.service;

import java.util.List;

import com.hanlin.domain.Notice;

public interface NoticeService {
   public void addNotice(Notice notice);
   public List<Notice> findNoticesByCourseId(int courseId);
   public List<Notice> findNoticesByNoticeType(int noticeType);
   public List<Notice> findAllNotice();
}
