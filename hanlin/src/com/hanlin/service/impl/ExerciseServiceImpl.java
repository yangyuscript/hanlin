package com.hanlin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanlin.dao.ExerciseDao;
import com.hanlin.domain.Exercise;
import com.hanlin.service.ExerciseService;
@Service("exerciseService")
@Transactional
public class ExerciseServiceImpl implements ExerciseService {
    @Autowired
    private ExerciseDao exerciseDao;
	@Override
	public void addExercise(Exercise exercise) {
       exerciseDao.save(exercise);
	}

	@Override
	public void modifyExercise(Exercise exercise) {
       exerciseDao.update(exercise);
	}

	@Override
	public List<Exercise> findExercisesByMeasureId(int measureId) {
		return exerciseDao.findExerciseByMeasureId(measureId);
	}

	@Override
	public List<Exercise> findThreeExerciseByCourseId(int courseId) {
		return exerciseDao.findThreeExerciseByCourseId(courseId);
	}
    
	
}
