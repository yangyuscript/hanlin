<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="com.hanlin.domain.MyAuthenticator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
   String result;
   // 收件人的电子邮件
   String to = "1837475870@qq.com";

   // 发件人的电子邮件
   String from = "15295532506@163.com";

   // 假设你是从本地主机发送电子邮件
   String host = "smtp.163.com";

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
      message.setSubject("This is the Subject Line!");
      // 现在设置的实际消息
      message.setText("This is actual message");
      // 发送消息
      Transport.send(message);
      result = "Sent message successfully....";
   }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
   }
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Send Email using JSP</h1>
</center>
<p align="center">
<% 
   out.println("Result: " + result + "\n");
%>
</p>
</body>
</html>