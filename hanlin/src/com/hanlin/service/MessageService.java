package com.hanlin.service;

import java.util.List;

import com.hanlin.domain.Message;

public interface MessageService {
   public void addMessage(Message message);
   public List<Message> findMessagesBySenderId(int senderId);
   public List<Message> findMessagesByrecieverId(int recieverId);
}
