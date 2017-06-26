package com.hanlin.utils;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;






import com.hanlin.domain.MyAuthenticator;



public class SendEmail {
   public static void sendRegistMail(String toUser,String basePath,int superUserId){
	   String result;
	   // 收件人的电子邮件
	   //String to = "1837475870@qq.com";
	   String to = toUser;
	   // 发件人的电子邮件
	   String from = "15295532506@163.com";

	   // 假设你是从本地主机发送电子邮件
	   String host = "smtp.163.com";
       System.out.println("此时服务器路径为"+basePath);
	   // 获取系统属性对象
	   Properties properties = System.getProperties();

	   // 设置邮件服务器
	   properties.setProperty("mail.smtp.host", host);
	   /* properties.setProperty("mail.user", "1837475870@qq.com");
	   properties.setProperty("mail.password", "www123nbaqq"); */
	   properties.setProperty("mail.smtp.auth", "true");
	   
	   MyAuthenticator myauth = new MyAuthenticator("15295532506@163.com", "lin199400");
	   // 获取默认的Session对象。
	   Session mailSession = Session.getDefaultInstance(properties,myauth);

	   try{
	      // 创建一个默认的MimeMessage对象。
	      MimeMessage message = new MimeMessage(mailSession);
	      // 设置 From: 头部的header字段
	      message.setFrom(new InternetAddress(from));
	      // 设置 To: 头部的header字段
	      message.addRecipient(Message.RecipientType.TO,
	                               new InternetAddress(to));
	      // 设置 Subject: header字段
	      message.setSubject("翰林学院用户注册验证！！！");
	      // 现在设置的实际消息
	      //message.setText("This is actual message");
	      //message.setContent("<h4>欢迎您注册使用翰林学院，点击下面链接激活用户哦！！！</h4><a href ='"+basePath+"/user_invokeUser.do?account="+toUser+"'>点击激活用户</a>","text/html;charset=UTF-8");
	      //message.setContent("<h4>欢迎您注册使用翰林学院，点击下面链接激活用户哦！！！</h4><a href ='"+basePath+"/user_invokeUser.do?account="+toUser+"'>点击激活用户</a>","text/html;charset=UTF-8");
	      StringBuilder c=new StringBuilder();
	      c.append("<h4>欢迎您注册使用翰林学院，点击下面链接激活用户哦！！！</h4>");
	      c.append("<a href='"+basePath+"user_invokeUser.do?account="+toUser+"&&superUserId="+superUserId+"'>点击激活用户</a>");
	      message.setContent(c.toString(),"text/html;charset=UTF-8");
	      // 发送消息
	      Transport.send(message);
	      result = "Sent message successfully....";
	   }catch (MessagingException mex) {
	      mex.printStackTrace();
	      result = "Error: unable to send message....";
	   }
   }
}
