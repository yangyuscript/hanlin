package com.hanlin.service;

import java.util.List;

import com.hanlin.domain.ToBeTeaReq;

public interface ToBeTeaReqService {
   public void addToBeTeaReq(ToBeTeaReq toBeTeaReq);
   public void modifyToBeTeaReq(ToBeTeaReq toBeTeaReq);
   public void deleteToBeTeaReq(ToBeTeaReq toBeTeaReq);
   public ToBeTeaReq getToBeTeaReqByUserId(int userId);
   public ToBeTeaReq getToBeTeaReqByToBeTeaReqId(int toBeTeaReqId);
   public List<ToBeTeaReq> findAllToBeTeaReqs();
}
