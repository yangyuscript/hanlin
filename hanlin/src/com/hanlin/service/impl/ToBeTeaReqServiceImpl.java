package com.hanlin.service.impl;

import java.util.List;

import org.hibernate.type.descriptor.java.UUIDTypeDescriptor.ToBytesTransformer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanlin.dao.ToBeTeaReqDao;
import com.hanlin.domain.ToBeTeaReq;
import com.hanlin.service.ToBeTeaReqService;
@Service("toBeTeaReqService")
@Transactional
public class ToBeTeaReqServiceImpl implements ToBeTeaReqService {
    @Autowired
    private ToBeTeaReqDao toBeTeaReqDao;
	@Override
	public void addToBeTeaReq(ToBeTeaReq toBeTeaReq) {
          toBeTeaReqDao.save(toBeTeaReq);
	}

	@Override
	public void modifyToBeTeaReq(ToBeTeaReq toBeTeaReq) {
          toBeTeaReqDao.update(toBeTeaReq);
	}

	@Override
	public void deleteToBeTeaReq(ToBeTeaReq toBeTeaReq) {
		toBeTeaReqDao.delete(toBeTeaReq);
	}

	@Override
	public ToBeTeaReq getToBeTeaReqByUserId(int userId) {
		return toBeTeaReqDao.getToBeTeaReqByUserId(userId);
	}

	@Override
	public List<ToBeTeaReq> findAllToBeTeaReqs() {
		return toBeTeaReqDao.findAllToBeTeaReqs();
	}

	@Override
	public ToBeTeaReq getToBeTeaReqByToBeTeaReqId(int toBeTeaReqId) {
		return toBeTeaReqDao.getToBeTeaReqByToBeTeaReqId(toBeTeaReqId);
	}
	

}
