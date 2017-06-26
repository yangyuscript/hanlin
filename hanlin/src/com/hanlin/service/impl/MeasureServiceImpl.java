package com.hanlin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanlin.dao.MeasureDao;
import com.hanlin.domain.Measure;
import com.hanlin.service.MeasureService;
@Service("measureService")
@Transactional
public class MeasureServiceImpl implements MeasureService {
    @Autowired
    private MeasureDao measureDao;
	@Override
	public void addMeasure(Measure measure) {
       measureDao.save(measure);
	}

	@Override
	public List<Measure> findMeasuresByCharacterId(int characterId) {
		return measureDao.findMeasuresByCharacterId(characterId);
	}

	@Override
	public Measure getMeasureByMeasureId(int measureId) {
		return measureDao.getMeasureByMeasureId(measureId);
	}

	@Override
	public void modifyMeasure(Measure measure) {
		measureDao.update(measure);
	}

	@Override
	public List<Measure> findThreeMeasuresByCourseId(int courseId) {
		return measureDao.findThreeMeasuresByCourseId(courseId);
	}

	@Override
	public void deleteM(Measure measure) {
		measureDao.delete(measure);
	}
    
}
