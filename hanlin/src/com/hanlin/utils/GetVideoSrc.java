package com.hanlin.utils;

public class GetVideoSrc {
   public static String getVideoSrc(String s){
	   String s2[]=s.split(">");
	   String s3="";
	   String s4[]={};
	   if(s2.length!=1){
	      s3=s2[2];
	      System.out.println(s3);
	      s4=s3.split(" ");
	      System.out.println(s4[1]);
	      return s4[1].substring(5, s4[1].length()-1);
	   }else{
		   System.out.println(s);
		   //s="http://localhost:8080/hanlin/"+s;
		   s="http://119.29.169.103:8080/hanlin/"+s;
	   }
	   return s;
   }
   public static void main(String arg[]){
	   
	   //System.out.println(getVideoSrc("<p><video class='edui-upload-video  vjs-default-skin video-js' controls='' preload='none' width='420' height='280' src='http://localhost:8080/hanlin/ueditor/jsp/upload/video/20160515/1463280836902047124.mp4' data-setup='{}'><source src='http://localhost:8080/hanlin/ueditor/jsp/upload/video/20160515/1463280836902047124.mp4' type='video/mp4'/></video></p>"));
       System.out.println(getVideoSrc("video/defaultvideo.mp4"));
   }
}
