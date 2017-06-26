package com.hanlin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanlin.dao.DanmuDao;
import com.hanlin.domain.Danmu;
import com.hanlin.service.DanmuService;
@Service("danmuService")
@Transactional
public class DanmuServiceImpl implements DanmuService {
    @Autowired
    private DanmuDao danmuDao;
	@Override
	public void addDanmu(Danmu danmu) {
        danmuDao.save(danmu);
	}

	@Override
	public List<Danmu> findDanmusByMeasureId(int measureId) {
		return danmuDao.findDanmusByMeasureId(measureId);
	}

}
