package com.hanlin.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.hanlin.domain.Course;
import com.hanlin.domain.CourseInfo;
import com.hanlin.domain.CourseType;
import com.hanlin.domain.Message;
import com.hanlin.domain.MessageInfo;
import com.hanlin.domain.MyLearnCourse;
import com.hanlin.domain.MyLikeCourse;
import com.hanlin.domain.Notice;
import com.hanlin.domain.NoticeInfo;
import com.hanlin.domain.Post;
import com.hanlin.domain.PostInfo;
import com.hanlin.domain.ToBeTeaReq;
import com.hanlin.domain.User;
import com.hanlin.service.CourseService;
import com.hanlin.service.CourseTypeService;
import com.hanlin.service.MessageService;
import com.hanlin.service.MyLearnCourseService;
import com.hanlin.service.MyLikeCourseService;
import com.hanlin.service.NoticeService;
import com.hanlin.service.PostService;
import com.hanlin.service.RunpicService;
import com.hanlin.service.ToBeTeaReqService;
import com.hanlin.service.UserService;
import com.hanlin.utils.DateTimeUtil;
import com.hanlin.utils.SendEmail;

public class UserAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	// 用户登陆注册
	private User user;
	// 激活用户
	private String account;
	private String basePath;
	// 用户在课程小节中发评论帖
	private Post post;
	// 用户申请成为老师
	private int userId;
	private String idenNum;
	private File image;
	private String imageFileName;
	private String imageContentType;// 文件类型
	private int superUserId;
    //为用户推荐课程
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getBasePath() {
		return basePath;
	}

	public void setBasePath(String basePath) {
		this.basePath = basePath;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getIdenNum() {
		return idenNum;
	}

	public void setIdenNum(String idenNum) {
		this.idenNum = idenNum;
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}
    
	public int getSuperUserId() {
		return superUserId;
	}

	public void setSuperUserId(int superUserId) {
		this.superUserId = superUserId;
	}

	@Autowired
	private UserService userService;
	@Autowired
	private CourseTypeService courseTypeService;
	@Autowired
	private PostService postService;
	@Autowired
	private ToBeTeaReqService toBeTeaReqService;
	@Autowired
	private MessageService messageService;
	@Autowired
	private RunpicService runpicService;
    @Autowired
    private NoticeService noticeService;
    @Autowired
    private CourseService courseService;
    @Autowired
    private MyLearnCourseService myLearnCourseService;
    @Autowired
    private MyLikeCourseService myLikeCourseService;
	public UserAction() {
		super();
	}

	public String judge() {
		callbackInfo.clear();
		System.out.println("传过来的账号是" + user.getAccount());
		User user2 = null;
		user2 = userService.getUserByAccount(user.getAccount());
		if (user2 != null) {
			callbackInfo.put("result", "no");
		} else {
			callbackInfo.put("result", "yes");
		}
		return "callback";
	}

	public String regist() {
		callbackInfo.clear();
		userService.regist(new User(user.getAccount(), user.getPassword(),
				"defaulthead.jpg", "hl_" + user.getAccount(), 0, 3));
		System.out.println("此时传过来的basePath是" + basePath);
		User superUser=userService.getSuper();
		SendEmail.sendRegistMail(user.getAccount(), basePath,superUser.getUserId());
		return "callback";
	}

	public String login() {
		callbackInfo.clear();
		boolean flag = userService.userLogin(user.getAccount(),
				user.getPassword());
		System.out.println("此时的flag为" + flag);
		if (flag) {
			User userNew = userService.getUserByAccount(user.getAccount());
			List<CourseType> allCourseTypes = courseTypeService
					.findAllCourseTypes();
			ToBeTeaReq toBeTeaReq = toBeTeaReqService
					.getToBeTeaReqByUserId(userNew.getUserId());
			List<Message> userMessages = messageService
					.findMessagesByrecieverId(userNew.getUserId());
			List<MessageInfo> userMessageInfos = new ArrayList<MessageInfo>();
			for (int i = 0, len = userMessages.size(); i < len; i++) {
                User sendUser=userService.getUserByUserId(userMessages.get(i).getSenderId());
                User recieveUser=userService.getUserByUserId(userMessages.get(i).getRecieverId());
                MessageInfo messageInfo=new MessageInfo(userMessages.get(i).getSenderId(), userMessages.get(i).getRecieverId(), userMessages.get(i).getTitle(), userMessages.get(i).getContent(), userMessages.get(i).getTime(),userMessages.get(i).getMessageId(),sendUser,recieveUser);
                userMessageInfos.add(messageInfo);
			}
			List<Notice> noticesList=noticeService.findAllNotice();		
			List<NoticeInfo> noticeInfosList=new ArrayList<NoticeInfo>();
			List<Course> forthCoursesList=courseService.findCoursesLastestFour();
			List<CourseInfo>  forthCoursesInfoList=new ArrayList<CourseInfo>();
			
			for(int i=0,len=forthCoursesList.size();i<len;i++){
				User teacherUser=userService.getUserByUserId(forthCoursesList.get(i).getTeacherId());
				CourseType courseType=courseTypeService.findCourseTypeByCourseTypeId(forthCoursesList.get(i).getCourseType());
				CourseInfo newcourInfo=new CourseInfo(forthCoursesList.get(i).getTeacherId(), forthCoursesList.get(i).getCourseName(), forthCoursesList.get(i).getCourseHead(), forthCoursesList.get(i).getLearningPeopleNum(), forthCoursesList.get(i).getLikeingPeopleNum(), forthCoursesList.get(i).getCourseIntroduction(), forthCoursesList.get(i).getCourseTips(), forthCoursesList.get(i).getCourseType(), forthCoursesList.get(i).getCourseSatisfied(), forthCoursesList.get(i).getCourseCondi(), forthCoursesList.get(i).getTime(),forthCoursesList.get(i).getCourseId(),teacherUser.getHead(),teacherUser.getNickname(),courseType.getCourseTypeName());
			    forthCoursesInfoList.add(newcourInfo);
			}
			session.put("forthCoursesList", forthCoursesInfoList);
			if(noticesList.size()!=0&&noticesList!=null){
			for(int i=0,len=noticesList.size();i<len;i++){
				User user=userService.getUserByUserId(noticesList.get(i).getSenduserId());
				NoticeInfo noticeInfo=new NoticeInfo(noticesList.get(i).getSenduserId(), noticesList.get(i).getTitle(), noticesList.get(i).getNoticeType(), noticesList.get(i).getContent(), noticesList.get(i).getTime(), noticesList.get(i).getCourseId(),noticesList.get(i).getNoticeId(),user);
			    noticeInfosList.add(noticeInfo);
			}
			}
			session.put("loginUser", userNew);
			session.put("allCourseTypes", allCourseTypes);
			session.put("toBeTeaReqCondi", toBeTeaReq);// 判断申请教师权限的请求状态
            session.put("userMessages", userMessageInfos);//获得用户收到的messages        
            session.put("allNotices", noticeInfosList);
			//callbackInfo.put("loginUserId", userNew.getUserId());
			/*if (userNew.getCondi() == 0) {
				getRecommendCourse(userNew,forthCoursesInfoList);
				callbackInfo.put("login", "student");
			} else if (userNew.getCondi() == 1) {
				getRecommendCourse(userNew,forthCoursesInfoList);
				callbackInfo.put("login", "teacher");

			} else if (userNew.getCondi() == 3) {
				callbackInfo.put("login", "notMail");
			} else if (userNew.getCondi()==4) {
				callbackInfo.put("login", "screen");
			} else {
			    session.put("runpics", runpicService.findAllRunpics());
				callbackInfo.put("login", "super");
			}*/
			System.out.println("userNew.getCondi is:"+userNew.getUserId());
			switch (userNew.getCondi()) {
			case 0:
				System.out.println("user is student.................");
				callbackInfo.put("login", "student");
				break;
			case 1:
				callbackInfo.put("login", "teacher");
				break;
			case 2:
				session.put("runpics", runpicService.findAllRunpics());
				callbackInfo.put("login", "super");
				break;
			case 3:
				callbackInfo.put("login", "notMail");
				break;
			case 4:
				callbackInfo.put("login", "screen");
				break;
			default:
				callbackInfo.put("login", "fail");
				break;
			}
		} else {
			callbackInfo.put("login", "fail");
		}
		return "callback";
	}

	public String invokeUser() {
		User user = userService.getUserByAccount(account);
		user.setCondi(0);
		userService.updateUser(user);
		messageService.addMessage(new Message(superUserId, userId,"入院通知" ,"恭喜您成为翰林学院的一员！学海无涯苦作舟，天道酬勤", DateTimeUtil.getCurrentDateTime2()));
		return "invokeUser_yes";
	}

	// 发帖
	public String subPost() {
		callbackInfo.clear();
		Post newPost = new Post(post.getUserId(), post.getCourseId(),
				post.getCharacterId(), post.getMeasureId(), post.getContent(),
				DateTimeUtil.getCurrentDateTime2(), 0, 0);
		int di = postService.addPostGetId(newPost);
		User user = userService.getUserByUserId(post.getUserId());
		PostInfo postInfo = new PostInfo(post.getUserId(), post.getCourseId(),
				post.getCharacterId(), post.getMeasureId(), post.getContent(),
				newPost.getTime(), newPost.getLikeNum(), newPost.getReplyNum(),
				di, user);
		callbackInfo.put("newPost", postInfo);
		return "callback";
	}

	// 用户点击退出
	public String removeUserSession() {
		System.out.println("进入清楚sessionUser方法");
		session.put("loginUser",null);
		return "removeUserSession_yes";
	}

	// 用户提交成为老师信息
	public String toBeTea() {
		String newImageFileName = "";
		String realPath = ServletActionContext.getServletContext().getRealPath(
				"/head");
		System.out.println("realPath:" + realPath);
		if (image != null) {
			System.out.println("begin to copy file");
			newImageFileName = getNewFileName(imageFileName);
			System.out.println(newImageFileName);
			File saveFile = new File(realPath, newImageFileName);
			if (!saveFile.getParentFile().exists()) {
				saveFile.getParentFile().mkdirs();
			}
			try {
				FileUtils.copyFile(image, saveFile);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		ToBeTeaReq toBeTeaReq = new ToBeTeaReq(userId, idenNum,
				newImageFileName, DateTimeUtil.getCurrentDateTime2(), 0);
		toBeTeaReqService.addToBeTeaReq(toBeTeaReq);
		session.put("toBeTeaReqCondi", toBeTeaReq);
		return "toBeTea_yes";
	}

	public String getNewFileName(String imageFileName) {
		if(imageFileName.length()>=7){
			return DateTimeUtil.getCurrentDateTime() + "_" + imageFileName.substring(imageFileName.length() - 6,
					imageFileName.length());
		    }
		return DateTimeUtil.getCurrentDateTime()+"_"+imageFileName;
	}
	//根据用户的正在学习课程和收藏课程推荐
	/*public void getRecommendCourse(User userNew,List<CourseInfo> forthCoursesInfoList){
		//get recommend course for user
		int userid=userNew.getUserId();
		if(myLearnCourseService.findMyLearnCoursesByUserId(userid)==null||myLearnCourseService.findMyLearnCoursesByUserId(userid).size()==0){
			//用户没有正在学习的课程，只好在收藏的课程中寻找推荐
			System.out.println("1.用户没有正在学习的课程，只好在收藏的课程中寻找推荐");
			if(myLikeCourseService.findMyLikeCourseByUserId(userid)==null||myLikeCourseService.findMyLikeCourseByUserId(userid).size()==0){
				//用户没有收藏的课程，推荐最新的课程
				System.out.println("2.用户没有收藏的课程，推荐最新的课程");
				session.put("recoCourse", forthCoursesInfoList.get(0));
			}else{
				//用户有收藏的课程,推荐类似课程
				System.out.println("3.用户有收藏的课程,推荐类似课程");
				MyLikeCourse myLikeCourse=myLikeCourseService.getUserLatestLike(userid);
				Course userLatestLikeC=courseService.getCourseByCourseId(myLikeCourse.getCourseId());
				Course recoCourse=courseService.getRecCourse(userLatestLikeC.getCourseType(), userLatestLikeC.getCourseId());
				if(recoCourse!=null){
					session.put("recoCourse",recoCourse);
				}else{
					session.put("recoCourse",forthCoursesInfoList.get(0));
				}
			}
		}else{
			System.out.println("4.用户有正在学习的课程,推荐类似课程");
			//用户有正在学习的课程,推荐类似课程
			MyLearnCourse myLearnCourse=myLearnCourseService.getUserLatestLearn(userid);
			Course userLatestLearnC=courseService.getCourseByCourseId(myLearnCourse.getCourseId());
			Course recoCourse=courseService.getRecCourse(userLatestLearnC.getCourseType(), userLatestLearnC.getCourseId());
			if(recoCourse!=null){
				session.put("recoCourse",recoCourse);
			}else{
				session.put("recoCourse",forthCoursesInfoList.get(0));
			}
			
		}
	}*/
}
