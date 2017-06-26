package com.hanlin.service;

import com.hanlin.domain.LearnRecord;

public interface LearnRecordService {
   public void addLearnRecord(LearnRecord learnRecord);
   public void deleteLearnRecord(LearnRecord learnRecord);
   public LearnRecord getByUserIdAndCourseId(int userId,int courseId);
}
