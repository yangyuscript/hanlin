package com.hanlin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanlin.dao.MessageDao;
import com.hanlin.domain.Message;
import com.hanlin.service.MessageService;

@Service("messageService")
@Transactional
public class MessageServiceImpl implements MessageService {
    @Autowired
    private MessageDao messageDao;
	@Override
	public void addMessage(Message message) {
         messageDao.save(message);
	}

	@Override
	public List<Message> findMessagesBySenderId(int senderId) {
		return messageDao.findMessagesBySenderId(senderId);
	}

	@Override
	public List<Message> findMessagesByrecieverId(int recieverId) {
		return messageDao.findMessagesByRecieverId(recieverId);
	}

}
