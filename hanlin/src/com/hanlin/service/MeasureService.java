package com.hanlin.service;

import java.util.List;

import com.hanlin.domain.Measure;

public interface MeasureService {
   public void addMeasure(Measure measure);
   public List<Measure> findMeasuresByCharacterId(int characterId);
   public Measure getMeasureByMeasureId(int measureId);
   public void modifyMeasure(Measure measure);
   public List<Measure> findThreeMeasuresByCourseId(int courseId);
   public void deleteM(Measure measure);
}
