package com.hanlin.service;

import java.util.List;

import com.hanlin.domain.Exercise;

public interface ExerciseService {
   public void addExercise(Exercise exercise);
   public void modifyExercise(Exercise exercise);
   public List<Exercise> findExercisesByMeasureId(int measureId);
   public List<Exercise> findThreeExerciseByCourseId(int courseId);
}
