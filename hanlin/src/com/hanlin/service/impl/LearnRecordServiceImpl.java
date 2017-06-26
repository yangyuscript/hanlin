package com.hanlin.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanlin.dao.LearnRecordDao;
import com.hanlin.domain.LearnRecord;
import com.hanlin.service.LearnRecordService;
@Service("learnRecordService")
@Transactional
public class LearnRecordServiceImpl implements LearnRecordService {
    @Autowired
    private LearnRecordDao learnRecordDao;
	@Override
	public void addLearnRecord(LearnRecord learnRecord) {
		learnRecordDao.add(learnRecord);
	}

	@Override
	public void deleteLearnRecord(LearnRecord learnRecord) {
        learnRecordDao.delete(learnRecord);
	}

	@Override
	public LearnRecord getByUserIdAndCourseId(int userId, int courseId) {
		return learnRecordDao.getByUserIdAndCourseId(userId, courseId);
	}

	

}
