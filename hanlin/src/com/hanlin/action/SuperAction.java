package com.hanlin.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.hanlin.domain.Course;
import com.hanlin.domain.CourseInfo;
import com.hanlin.domain.CourseType;
import com.hanlin.domain.Message;
import com.hanlin.domain.MessageInfo;
import com.hanlin.domain.Notice;
import com.hanlin.domain.NoticeInfo;
import com.hanlin.domain.Pager;
import com.hanlin.domain.Runpic;
import com.hanlin.domain.ToBeTeaReq;
import com.hanlin.domain.ToBeTeaReqInfo;
import com.hanlin.domain.User;
import com.hanlin.service.CourseService;
import com.hanlin.service.CourseTypeService;
import com.hanlin.service.MessageService;
import com.hanlin.service.NoticeService;
import com.hanlin.service.RunpicService;
import com.hanlin.service.ToBeTeaReqService;
import com.hanlin.service.UserService;
import com.hanlin.utils.DateTimeUtil;
import com.hanlin.utils.Params;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

public class SuperAction extends BaseAction {
	// 超管查找用户分页
	private int pageNum;
	private String nickname;
	private String account;
	// 添加课程种类
	private String courseTypeName;
	// 修改课程种类
	private int courseTypeId;
	// 超管查找课程分页
	private String courseName;
	private String time;

	// 超管向课程老师发送message
	private Message message;
	// 超管同意用户申请老师权限请求
	private int userId;
	private int toBeTeaReqId;
	private int superId;
	//超管屏蔽（取消屏蔽）课程
	private int courseId;
	// 超管上传滚屏
	private String disc;
	private File image;
	private String imageFileName;
	private String imageContentType;// 文件类型
	// 超管删除滚屏
	private int runpicId;
	// 超管发送公告
	private Notice notice;
	@Autowired
	private UserService userService;
	@Autowired
	private CourseTypeService courseTypeService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private MessageService messageService;
	@Autowired
	private ToBeTeaReqService toBeTeaReqService;
	@Autowired
	private RunpicService runpicService;
	@Autowired
	private NoticeService noticeService;

	public SuperAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	private static final long serialVersionUID = 1L;

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getCourseTypeName() {
		return courseTypeName;
	}

	public void setCourseTypeName(String courseTypeName) {
		this.courseTypeName = courseTypeName;
	}

	public int getCourseTypeId() {
		return courseTypeId;
	}

	public void setCourseTypeId(int courseTypeId) {
		this.courseTypeId = courseTypeId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Message getMessage() {
		return message;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getToBeTeaReqId() {
		return toBeTeaReqId;
	}

	public void setToBeTeaReqId(int toBeTeaReqId) {
		this.toBeTeaReqId = toBeTeaReqId;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	public int getSuperId() {
		return superId;
	}

	public void setSuperId(int superId) {
		this.superId = superId;
	}

	public String getDisc() {
		return disc;
	}

	public void setDisc(String disc) {
		this.disc = disc;
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

	public int getRunpicId() {
		return runpicId;
	}

	public void setRunpicId(int runpicId) {
		this.runpicId = runpicId;
	}

	public Notice getNotice() {
		return notice;
	}

	public void setNotice(Notice notice) {
		this.notice = notice;
	}
    
	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String findUsersByPager() {
		System.out.println("nickname:" + nickname);
		Pager<User> pager = userService.findUsersByPager(account, nickname,
				pageNum, Params.pageSize);
		session.put("pager", pager);
		request.put("account", account);
		request.put("nickname", nickname);
		// session.put("totalRecord", pager.getTotalRecord());
		request.put("pageSize", Params.pageSize);
		return "findUsersByPager_yes";
	}

	public String addCourseType() {
		CourseType courseType = new CourseType(courseTypeName);
		courseTypeService.addOneCourseType(courseType);
		List<CourseType> list = courseTypeService.findAllCourseTypes();
		session.put("allCourseTypes", list);
		return "Type_yes";
	}

	public String modifyCourseTypeName() {
		CourseType courseType = courseTypeService
				.findCourseTypeByCourseTypeId(courseTypeId);
		courseType.setCourseTypeName(courseTypeName);
		courseTypeService.modifyCourseType(courseType);
		List<CourseType> list = courseTypeService.findAllCourseTypes();
		session.put("allCourseTypes", list);
		return "modifyType_yes";
	}

	// 管理员登陆后到达的第一个action
	public String findCoursesByPager() {
		Pager<Course> coursePager = courseService.findCoursesWithSearch(
				courseName, courseTypeId, time, pageNum, Params.pageSize);
		List<CourseInfo> coursesInfoList = new ArrayList<CourseInfo>();
		for (int i = 0, len = coursePager.getDataList().size(); i < len; i++) {
			User teacherUser = userService.getUserByUserId(coursePager
					.getDataList().get(i).getTeacherId());
			CourseType courseType = courseTypeService
					.findCourseTypeByCourseTypeId(coursePager.getDataList()
							.get(i).getCourseType());
			CourseInfo newcourInfo = new CourseInfo(coursePager.getDataList()
					.get(i).getTeacherId(), coursePager.getDataList().get(i)
					.getCourseName(), coursePager.getDataList().get(i)
					.getCourseHead(), coursePager.getDataList().get(i)
					.getLearningPeopleNum(), coursePager.getDataList().get(i)
					.getLikeingPeopleNum(), coursePager.getDataList().get(i)
					.getCourseIntroduction(), coursePager.getDataList().get(i)
					.getCourseTips(), coursePager.getDataList().get(i)
					.getCourseType(), coursePager.getDataList().get(i)
					.getCourseSatisfied(), coursePager.getDataList().get(i)
					.getCourseCondi(), coursePager.getDataList().get(i)
					.getTime(), coursePager.getDataList().get(i).getCourseId(),
					teacherUser.getHead(), teacherUser.getNickname(),
					courseType.getCourseTypeName());
			coursesInfoList.add(newcourInfo);
		}
		Pager<CourseInfo> courseInfoPager = new Pager<CourseInfo>(
				coursePager.getPageSize(), coursePager.getCurrentPage(),
				coursePager.getTotalRecord(), coursePager.getTotalPage(),
				coursesInfoList);
		// 找到所有申请老师权限请求
		List<ToBeTeaReq> toBeTeaReqList = toBeTeaReqService
				.findAllToBeTeaReqs();
		List<ToBeTeaReqInfo> toBeTeaReqInfoList = new ArrayList<ToBeTeaReqInfo>();
		for (int i = 0, len = toBeTeaReqList.size(); i < len; i++) {
			User user = userService.getUserByUserId(toBeTeaReqList.get(i)
					.getUserId());
			ToBeTeaReqInfo toBeTeaReqInfo = new ToBeTeaReqInfo(toBeTeaReqList
					.get(i).getUserId(), toBeTeaReqList.get(i).getIdenNum(),
					toBeTeaReqList.get(i).getIdenPic(), toBeTeaReqList.get(i)
							.getTime(), toBeTeaReqList.get(i).getCondi(),
					toBeTeaReqList.get(i).getToBeTeaReqId(), user);
			toBeTeaReqInfoList.add(toBeTeaReqInfo);
		}
		session.put("coursePager", courseInfoPager);
		session.put("allToBeTeaReqs", toBeTeaReqInfoList);
		request.put("courseName", courseName);
		request.put("time", time);
		request.put("pageSize", Params.pageSize);
		return "findCoursesByPager_yes";
	}

	public String sendMessageToTea() {
		Message messageNew = new Message(message.getSenderId(),
				message.getRecieverId(), message.getTitle(),
				message.getContent(), DateTimeUtil.getCurrentDateTime2());
		messageService.addMessage(messageNew);
		return "sendMessageToTea_yes";
	}

	public String acceptBeTea() {
		User user = userService.getUserByUserId(userId);
		user.setCondi(1);
		userService.updateUser(user);
		ToBeTeaReq toBeTeaReq = toBeTeaReqService
				.getToBeTeaReqByToBeTeaReqId(toBeTeaReqId);
		toBeTeaReq.setCondi(1);
		toBeTeaReqService.modifyToBeTeaReq(toBeTeaReq);
		session.put("allToBeTeaReqs", toBeTeaReqService.findAllToBeTeaReqs());
		// 管理员向申请人发送通过通知
		messageService.addMessage(new Message(superId, userId, "恭喜您获得教师权限",
				"在您获得教师全选之后，请您创建的课程内容积极、阳光不得宣传传播上传一切不合法或不道德的视频文件，一切后果自负哦！！！",
				DateTimeUtil.getCurrentDateTime2()));
		return "acceptBeTea_yes";
	}

	public String refuseBeTea() {
		ToBeTeaReq toBeTeaReq = toBeTeaReqService
				.getToBeTeaReqByToBeTeaReqId(toBeTeaReqId);
		toBeTeaReqService.deleteToBeTeaReq(toBeTeaReq);
		session.put("allToBeTeaReqs", toBeTeaReqService.findAllToBeTeaReqs());
		messageService.addMessage(new Message(superId, userId,
				"非常遗憾您未通过教师权限请求", "希望您可以完善个人信息，准备下次的申请哦！！！", DateTimeUtil
						.getCurrentDateTime2()));
		return "refuseBeTea_yes";
	}

	public String uploadRunpic() {
		String newImageFileName = "";
		String realPath = ServletActionContext.getServletContext().getRealPath(
				"/img");
		System.out.println("realPath:" + realPath);
		System.out.println("文件类型是:"+imageContentType);
		if (image != null&&"image/jpeg".equals(imageContentType)||"image/png".equals(imageContentType)) {
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
			Runpic runpic = new Runpic(newImageFileName, disc,
					DateTimeUtil.getCurrentDateTime2());
			runpicService.addRunpic(runpic);
			session.put("runpics", runpicService.findAllRunpics());
			request.put("tip", "");
		}else{
			request.put("tip", "请上传png jpg格式的图片，大小不超过2m");
		}
		return "uploadRunpic_yes";
	}

	public String deleteRunpic() {
		runpicService.deleteRunpic(runpicService.getRunpicByRunpicId(runpicId));
		session.put("runpics", runpicService.findAllRunpics());
		return "deleteRunpic_yes";
	}

	// 超管发送公告
	public String sendNotice() {
		callbackInfo.clear();
		if (notice.getSenduserId() != 0 && notice.getTitle() != null
				&& notice.getContent() != null) {
			notice.setTime(DateTimeUtil.getCurrentDateTime2());
			noticeService.addNotice(notice);
			callbackInfo.put("send", "yes");

			List<Notice> noticesList = noticeService.findAllNotice();
			List<NoticeInfo> noticeInfosList = new ArrayList<NoticeInfo>();
			if (noticesList.size() != 0 && noticesList != null) {
				for (int i = 0, len = noticesList.size(); i < len; i++) {
					User user = userService.getUserByUserId(noticesList.get(i)
							.getSenduserId());
					NoticeInfo noticeInfo = new NoticeInfo(noticesList.get(i)
							.getSenduserId(), noticesList.get(i).getTitle(),
							noticesList.get(i).getNoticeType(), noticesList
									.get(i).getContent(), noticesList.get(i)
									.getTime(), noticesList.get(i)
									.getCourseId(), noticesList.get(i)
									.getNoticeId(), user);
					noticeInfosList.add(noticeInfo);
				}
				session.put("allNotices", noticeInfosList);
			}
		} else {
			callbackInfo.put("send", "no");
		}
		return "callback";
	}
	//刷新教师申请
	public String getAllBeTea() {
		session.put("allToBeTeaReqs", toBeTeaReqService.findAllToBeTeaReqs());
		return "getAllBeTea_yes";
	}
	//刷新管理员消息
	public String updateMessages(){
		List<Message> userMessages = messageService
				.findMessagesByrecieverId(userId);
		List<MessageInfo> userMessageInfos = new ArrayList<MessageInfo>();
		for (int i = 0, len = userMessages.size(); i < len; i++) {
            User sendUser=userService.getUserByUserId(userMessages.get(i).getSenderId());
            User recieveUser=userService.getUserByUserId(userMessages.get(i).getRecieverId());
            MessageInfo messageInfo=new MessageInfo(userMessages.get(i).getSenderId(), userMessages.get(i).getRecieverId(), userMessages.get(i).getTitle(), userMessages.get(i).getContent(), userMessages.get(i).getTime(),userMessages.get(i).getMessageId(),sendUser,recieveUser);
            userMessageInfos.add(messageInfo);
		}
		session.put("userMessages", userMessageInfos);//获得用户收到的messages
		return "updateMessages_yes";
	}
	//屏蔽课程
	public String screenCourse(){
		Course course=courseService.getCourseByCourseId(courseId);
		course.setCourseCondi(0);//设置课程屏蔽状态0，正常状态为1
		courseService.modifyCourse(course);		
		return "screenCourse_yes";
	}
	//取消屏蔽课程
	public String unScreenCourse(){
		Course course=courseService.getCourseByCourseId(courseId);
		course.setCourseCondi(1);
		courseService.modifyCourse(course);
		return "unScreenCourse_yes";
	}
	//屏蔽用户
	public String screenUser(){
		User user=userService.getUserByUserId(userId);
		user.setCondi(4);//设置用户状态为屏蔽状态4
		userService.updateUser(user);
		return "screenUser_yes";
	}
	//取消屏蔽用户
	public String unScreenUser(){
		User user=userService.getUserByUserId(userId);
		ToBeTeaReq toBeTeaReq=toBeTeaReqService.getToBeTeaReqByUserId(userId);
		if(toBeTeaReq==null){
			user.setCondi(0);
			System.out.println("haha,,,,,,,,,,,,,,,,,,,,");
		}else{
			System.out.println("xixi.........................");
			if(toBeTeaReq.getCondi()==0){
				user.setCondi(0);
			}else{
				user.setCondi(1);
			}
		}
		userService.updateUser(user);
		return "unScreenUser_yes";
	}
	public String getNewFileName(String imageFileName) {
		if (imageFileName.length() >= 7) {
			return DateTimeUtil.getCurrentDateTime()
					+ "_"
					+ imageFileName.substring(imageFileName.length() - 6,
							imageFileName.length());
		}
		return DateTimeUtil.getCurrentDateTime() + "_" + imageFileName;
	}

}
