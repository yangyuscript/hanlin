package com.hanlin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanlin.dao.RunpicDao;
import com.hanlin.domain.Runpic;
import com.hanlin.service.RunpicService;
@Service("runpicService")
@Transactional
public class RunpicServiceImpl implements RunpicService {
    @Autowired
    private RunpicDao runpicDao;
	@Override
	public void addRunpic(Runpic runpic) {
        runpicDao.save(runpic);
	}

	@Override
	public void deleteRunpic(Runpic runpic) {
        runpicDao.delete(runpic);
	}

	@Override
	public List<Runpic> findFourRunpics() {
		return runpicDao.findFourRunpics();
	}

	@Override
	public List<Runpic> findAllRunpics() {
		return runpicDao.findAllRunpics();
	}

	@Override
	public Runpic getRunpicByRunpicId(int runpicId) {
		return runpicDao.getRunpicByRunpicId(runpicId);
	}
    
}
