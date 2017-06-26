package com.hanlin.service;

import java.util.List;

import com.hanlin.domain.Danmu;

public interface DanmuService {
   public void addDanmu(Danmu danmu);
   public List<Danmu> findDanmusByMeasureId(int measureId);
}
