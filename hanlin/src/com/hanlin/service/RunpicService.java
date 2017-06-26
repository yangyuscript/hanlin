package com.hanlin.service;

import java.util.List;

import com.hanlin.domain.Runpic;

public interface RunpicService {
   public void addRunpic(Runpic runpic);
   public void deleteRunpic(Runpic runpic);
   public List<Runpic> findFourRunpics();
   public List<Runpic> findAllRunpics();
   public Runpic getRunpicByRunpicId(int runpicId);
}
