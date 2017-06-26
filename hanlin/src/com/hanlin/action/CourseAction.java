package com.hanlin.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;


import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.hanlin.domain.Character;
import com.hanlin.domain.CharacterAndMeasure;
import com.hanlin.domain.Course;
import com.hanlin.domain.CourseComment;
import com.hanlin.domain.CourseCommentInfo;
import com.hanlin.domain.CourseInfo;
import com.hanlin.domain.CourseType;
import com.hanlin.domain.Danmu;
import com.hanlin.domain.Exercise;
import com.hanlin.domain.LearnRecord;
import com.hanlin.domain.Measure;
import com.hanlin.domain.MyLearnCourse;
import com.hanlin.domain.MyLearnCourseInfo;
import com.hanlin.domain.MyLikeCourse;
import com.hanlin.domain.MyLikeCourseInfo;
import com.hanlin.domain.Notice;
import com.hanlin.domain.Pager;
import com.hanlin.domain.Post;
import com.hanlin.domain.User;
import com.hanlin.service.CharacterService;
import com.hanlin.service.CourseCommentService;
import com.hanlin.service.CourseService;
import com.hanlin.service.CourseTypeService;
import com.hanlin.service.DanmuService;
import com.hanlin.service.ExerciseService;
import com.hanlin.service.LearnRecordService;
import com.hanlin.service.MeasureService;
import com.hanlin.service.MyLearnCourseService;
import com.hanlin.service.MyLikeCourseService;
import com.hanlin.service.NoticeService;
import com.hanlin.service.PostService;
import com.hanlin.service.RunpicService;
import com.hanlin.service.UserService;
import com.hanlin.utils.DateTimeUtil;
import com.hanlin.utils.Params;
/*import com.sun.xml.internal.ws.policy.privateutil.PolicyUtils.Text;*/

public class CourseAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	// 查看课程详细信息
	private int courseId;
	private int userId;
	// 取弹幕
	private int measureId;
    //增加一条弹幕
	private String danmu;
	//课程分页
	private String courseName;
	private String time;
	private int pageNum;
	private int courseTypeId;
	//用户取消收藏课程
	private int myLikeCourseId;
	public CourseAction() {
		super();
	}

	@Autowired
	private CourseService courseService;
	@Autowired
	private UserService userService;
	@Autowired
	private CourseTypeService courseTypeService;
	@Autowired
	private CharacterService characterService;
	@Autowired
	private MeasureService measureService;
	@Autowired
	private CourseCommentService courseCommentService;
	@Autowired
	private MyLearnCourseService myLearnCourseService;
	@Autowired
	private MyLikeCourseService myLikeCourseService;
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private PostService postService;
	@Autowired
	private ExerciseService exerciseService;
	@Autowired
	private DanmuService danmuService;
    @Autowired
    private RunpicService runpicService;
    @Autowired
    private LearnRecordService learnRecordService;
	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getMeasureId() {
		return measureId;
	}

	public void setMeasureId(int measureId) {
		this.measureId = measureId;
	}
    
	public String getDanmu() {
		return danmu;
	}

	public void setDanmu(String danmu) {
		this.danmu = danmu;
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

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
    
	public int getCourseTypeId() {
		return courseTypeId;
	}

	public void setCourseTypeId(int courseTypeId) {
		this.courseTypeId = courseTypeId;
	}
    
	
	public int getMyLikeCourseId() {
		return myLikeCourseId;
	}

	public void setMyLikeCourseId(int myLikeCourseId) {
		this.myLikeCourseId = myLikeCourseId;
	}

	// 查看课程详细信息
	public String getCourseDetailInfo() {
		if(userId==0){
			System.out.println("what the fuck！");
			return "login";
		}else{
		Course courseDetail = courseService.getCourseByCourseId(courseId);
		User teacherCourse = userService.getUserByUserId(courseDetail
				.getTeacherId());
		CourseType courseTypeDetail = courseTypeService
				.findCourseTypeByCourseTypeId(courseDetail.getCourseType());
		CourseInfo courseInfoDetail = new CourseInfo(
				courseDetail.getTeacherId(), courseDetail.getCourseName(),
				courseDetail.getCourseHead(),
				courseDetail.getLearningPeopleNum(),
				courseDetail.getLikeingPeopleNum(),
				courseDetail.getCourseIntroduction(),
				courseDetail.getCourseTips(), courseDetail.getCourseType(),
				courseDetail.getCourseSatisfied(),
				courseDetail.getCourseCondi(), courseDetail.getTime(),
				courseDetail.getCourseId(), teacherCourse.getHead(),
				teacherCourse.getNickname(),
				courseTypeDetail.getCourseTypeName());
		List<Character> characterList = characterService
				.findCharactersByCourseId(courseId);
		List<CharacterAndMeasure> characterAndMeasureList = new ArrayList<CharacterAndMeasure>();
		if (characterList.size() != 0 && characterList != null) {
			for (int i = 0, len = characterList.size(); i < len; i++) {
				List<Measure> measureList = measureService
						.findMeasuresByCharacterId(characterList.get(i)
								.getCharacterId());
				CharacterAndMeasure cam = new CharacterAndMeasure(characterList
						.get(i).getCourseId(), characterList.get(i).getTitle(),
						characterList.get(i).getDiscription(), characterList
								.get(i).getTime(), measureList, characterList
								.get(i).getCharacterId());
				characterAndMeasureList.add(cam);
			}
		}
		List<CourseComment> courseCommentList = courseCommentService
				.findCourseCommentsByCourseId(courseId);
		List<CourseCommentInfo> courseCommentInfoList = new ArrayList<CourseCommentInfo>();
		for (int i = 0, len = courseCommentList.size(); i < len; i++) {
			User user = userService.getUserByUserId(courseCommentList.get(i)
					.getUserId());
			Course course = courseService.getCourseByCourseId(courseCommentList
					.get(i).getCourseId());
			CourseCommentInfo courseCommentInfo = new CourseCommentInfo(
					courseCommentList.get(i).getCourseId(), courseCommentList
							.get(i).getUserId(), courseCommentList.get(i)
							.getLevel(), courseCommentList.get(i).getContent(),
					courseCommentList.get(i).getTime(), courseCommentList
							.get(i).getCourseCommentId(), user, course);
			courseCommentInfoList.add(courseCommentInfo);
		}

		session.put("courseInfoDetail", courseInfoDetail);// 课程的详细信息
		session.put("characterAndMeasureList", characterAndMeasureList);// 获得课程大纲
		session.put("courseCommentInfoList", courseCommentInfoList);// 获得课程评价
		session.put("isHaveLearned",
				myLearnCourseService.userIsHaveLearnedCourse(userId, courseId));//是否已学习此课程
		session.put("isHaveLiked", myLikeCourseService.userIsHaveLikedCourse(userId, courseId));
		return "getCourseDetailInfo_yes";
		}
	}

	public String lookLearningCourseInfoB() {
		Course learningCourse = courseService.getCourseByCourseId(courseId);
		User teacherUser = userService.getUserByUserId(learningCourse
				.getTeacherId());
		CourseType courseType = courseTypeService
				.findCourseTypeByCourseTypeId(learningCourse.getCourseType());
		CourseInfo learingCourseInfo = new CourseInfo(
				learningCourse.getTeacherId(), learningCourse.getCourseName(),
				learningCourse.getCourseHead(),
				learningCourse.getLearningPeopleNum(),
				learningCourse.getLikeingPeopleNum(),
				learningCourse.getCourseIntroduction(),
				learningCourse.getCourseTips(), learningCourse.getCourseType(),
				learningCourse.getCourseSatisfied(),
				learningCourse.getCourseCondi(), learningCourse.getTime(),
				learningCourse.getCourseId(), teacherUser.getHead(),
				teacherUser.getNickname(), courseType.getCourseTypeName());
		List<Notice> learningCourseNoticesList = noticeService
				.findNoticesByCourseId(courseId);
		List<CourseComment> courseCommentList = courseCommentService
				.findCourseCommentsByCourseId(courseId);
		List<CourseCommentInfo> courseCommentInfoList = new ArrayList<CourseCommentInfo>();
		for (int i = 0, len = courseCommentList.size(); i < len; i++) {
			User user = userService.getUserByUserId(courseCommentList.get(i)
					.getUserId());
			Course course = courseService.getCourseByCourseId(courseCommentList
					.get(i).getCourseId());
			CourseCommentInfo courseCommentInfo = new CourseCommentInfo(
					courseCommentList.get(i).getCourseId(), courseCommentList
							.get(i).getUserId(), courseCommentList.get(i)
							.getLevel(), courseCommentList.get(i).getContent(),
					courseCommentList.get(i).getTime(), courseCommentList
							.get(i).getCourseCommentId(), user, course);
			courseCommentInfoList.add(courseCommentInfo);
		}
		List<Character> characterList = characterService
				.findCharactersByCourseId(courseId);
		List<CharacterAndMeasure> characterAndMeasureList = new ArrayList<CharacterAndMeasure>();
		if (characterList.size() != 0 && characterList != null) {
			for (int i = 0, len = characterList.size(); i < len; i++) {
				List<Measure> measureList = measureService
						.findMeasuresByCharacterId(characterList.get(i)
								.getCharacterId());
				CharacterAndMeasure cam = new CharacterAndMeasure(characterList
						.get(i).getCourseId(), characterList.get(i).getTitle(),
						characterList.get(i).getDiscription(), characterList
								.get(i).getTime(), measureList, characterList
								.get(i).getCharacterId());
				characterAndMeasureList.add(cam);
			}
		}
		List<Post> learningCoursePostList = postService
				.findPostsByCourseId(courseId);
		List<Exercise> learningCourseExerciseList = exerciseService
				.findThreeExerciseByCourseId(courseId);
		List<Measure> learningCourseMeasureList = measureService
				.findThreeMeasuresByCourseId(courseId);

		session.put("learningCourseInfo", learingCourseInfo);// 课程的基本信息
		session.put("learningCourseNoticesList", learningCourseNoticesList);// 课程公告5条
		session.put("courseCommentInfoList", courseCommentInfoList);// 获得课程评价
		session.put("characterAndMeasureList", characterAndMeasureList);// 获得课程大纲
		session.put("learningCoursePostList", learningCoursePostList);// 获得课程帖子
		session.put("learningCourseExerciseList", learningCourseExerciseList);// 最新发布的测验题
		session.put("learningCourseMeasureList", learningCourseMeasureList);// 获得最新发布的小节
		return "lookLearningCourseInfoB_yes";
	}

	public String findDanmus() {
		callbackInfo.clear();
		List<Danmu> danmuList = danmuService.findDanmusByMeasureId(measureId);
		if (danmuList.size() != 0 && danmuList != null) {
			HttpServletResponse response = ServletActionContext.getResponse();
			try {
				PrintWriter out = response.getWriter();
				String jsonString = "[";
				if (danmuList.size() == 1) {
					jsonString = jsonString + "\'{\"text\":\""
							+ danmuList.get(0).getText() + "\",\"color\":\""
							+ danmuList.get(0).getColor() + "\",\"size\":\""
							+ danmuList.get(0).getSize() + "\",\"position\":\""
							+ danmuList.get(0).getPosition() + "\",\"time\":"
							+ danmuList.get(0).getTime() + "}\']";
				} else {
					for (int i = 0, len = danmuList.size(); i < len; i++) {
						if (i == len - 1) {
							jsonString = jsonString + "\'{\"text\":\""
									+ danmuList.get(i).getText()
									+ "\",\"color\":\""
									+ danmuList.get(i).getColor()
									+ "\",\"size\":\""
									+ danmuList.get(i).getSize()
									+ "\",\"position\":\""
									+ danmuList.get(i).getPosition()
									+ "\",\"time\":"
									+ danmuList.get(i).getTime() + "}\']";
						} else {
							if (i == 0) {
								jsonString = jsonString + "\'{\"text\":\""
										+ danmuList.get(i).getText()
										+ "\",\"color\":\""
										+ danmuList.get(i).getColor()
										+ "\",\"size\":\""
										+ danmuList.get(i).getSize()
										+ "\",\"position\":\""
										+ danmuList.get(i).getPosition()
										+ "\",\"time\":"
										+ danmuList.get(i).getTime() + "}\',";
							} else {
								jsonString = jsonString + "\'{\"text\":\""
										+ danmuList.get(i).getText()
										+ "\",\"color\":\""
										+ danmuList.get(i).getColor()
										+ "\",\"size\":\""
										+ danmuList.get(i).getSize()
										+ "\",\"position\":\""
										+ danmuList.get(i).getPosition()
										+ "\",\"time\":"
										+ danmuList.get(i).getTime() + "}\',";

							}
						}
					}
				}
				System.out.println("此时的jsonString" + jsonString);
				out.println(jsonString);
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println("执行return前");
		return "callback";
	}
	public String addDanmu(){
		System.out.println(danmu);
		String d[]=danmu.split(",");
		String text=d[0].split(":")[1].substring(1,d[0].split(":")[1].length()-1);
		System.out.println(text);
		String color=d[1].split(":")[1].substring(1,d[1].split(":")[1].length()-1);
		System.out.println(color);
		int size=Integer.parseInt(d[2].split(":")[1].substring(1,d[2].split(":")[1].length()-1));
		System.out.println(size);
		int position=Integer.parseInt(d[3].split(":")[1].substring(1,d[3].split(":")[1].length()-1));
		System.out.println(position);
		int time=Integer.parseInt(d[4].split(":")[1].substring(1,d[4].split(":")[1].length()-1));
		System.out.println(time);
		Danmu danmuNew=new Danmu(measureId, text, color, position, size, time);
		danmuService.addDanmu(danmuNew);
		return "callback";
	}
	//用户做题之前
	public String workExerciseB(){
		List<Exercise> exerciseList=exerciseService.findExercisesByMeasureId(measureId);
		Measure measureM=measureService.getMeasureByMeasureId(measureId);
		session.put("exerciseOfMeasure", measureM);
		session.put("exerciseList", exerciseList);
		return "workExerciseB_yes";
	}
	//用户访问网站
	public String beginWebsiteB(){
		List<Course> forthCoursesList=courseService.findCoursesLastestFour();
		List<User> showTeachersList=userService.findAllTeachers();
		List<CourseInfo>  forthCoursesInfoList=new ArrayList<CourseInfo>();
		
		for(int i=0,len=forthCoursesList.size();i<len;i++){
			User teacherUser=userService.getUserByUserId(forthCoursesList.get(i).getTeacherId());
			CourseType courseType=courseTypeService.findCourseTypeByCourseTypeId(forthCoursesList.get(i).getCourseType());
			CourseInfo newcourInfo=new CourseInfo(forthCoursesList.get(i).getTeacherId(), forthCoursesList.get(i).getCourseName(), forthCoursesList.get(i).getCourseHead(), forthCoursesList.get(i).getLearningPeopleNum(), forthCoursesList.get(i).getLikeingPeopleNum(), forthCoursesList.get(i).getCourseIntroduction(), forthCoursesList.get(i).getCourseTips(), forthCoursesList.get(i).getCourseType(), forthCoursesList.get(i).getCourseSatisfied(), forthCoursesList.get(i).getCourseCondi(), forthCoursesList.get(i).getTime(),forthCoursesList.get(i).getCourseId(),teacherUser.getHead(),teacherUser.getNickname(),courseType.getCourseTypeName());
		    forthCoursesInfoList.add(newcourInfo);
		}
		session.put("forthCoursesList", forthCoursesInfoList);
		session.put("showTeachersList", showTeachersList);
		session.put("fourRunpics", runpicService.findFourRunpics());
		return "beginWebsiteB_yes";
	}
	//用户进入网站主页student/index.jsp
	public String goMain(){
		System.out.println("初次进来courseTypeId为:"+courseTypeId);
		List<CourseType> allCourseTypes=courseTypeService.findAllCourseTypes();
		session.put("allCourseTypes", allCourseTypes);
		Pager<Course> coursePager=courseService.findCoursesWithSearch(courseName, courseTypeId,time, pageNum, Params.pageSize);
        List<CourseInfo>  coursesInfoList=new ArrayList<CourseInfo>();		
		for(int i=0,len=coursePager.getDataList().size();i<len;i++){
			User teacherUser=userService.getUserByUserId(coursePager.getDataList().get(i).getTeacherId());
			CourseType courseType=courseTypeService.findCourseTypeByCourseTypeId(coursePager.getDataList().get(i).getCourseType());
			CourseInfo newcourInfo=new CourseInfo(coursePager.getDataList().get(i).getTeacherId(), coursePager.getDataList().get(i).getCourseName(), coursePager.getDataList().get(i).getCourseHead(), coursePager.getDataList().get(i).getLearningPeopleNum(), coursePager.getDataList().get(i).getLikeingPeopleNum(), coursePager.getDataList().get(i).getCourseIntroduction(), coursePager.getDataList().get(i).getCourseTips(), coursePager.getDataList().get(i).getCourseType(), coursePager.getDataList().get(i).getCourseSatisfied(), coursePager.getDataList().get(i).getCourseCondi(), coursePager.getDataList().get(i).getTime(),coursePager.getDataList().get(i).getCourseId(),teacherUser.getHead(),teacherUser.getNickname(),courseType.getCourseTypeName());
		    coursesInfoList.add(newcourInfo);
		}
		Pager<CourseInfo> courseInfoPager=new Pager<CourseInfo>(coursePager.getPageSize(), coursePager.getCurrentPage(), coursePager.getTotalRecord(), coursePager.getTotalPage(), coursesInfoList);
		if((User)session.get("loginUser")!=null){
			System.out.println("机智如我，哈哈");
			getRecommendCourse((User)session.get("loginUser"),courseService.findCoursesLastestFour());
		}		
		session.put("coursePager",courseInfoPager);
		request.put("courseName",courseName);
		request.put("courseTypeId_request", courseTypeId);
		request.put("pageSize", Params.pageSize);
		return "goMain_yes";
	}
	//用户加入某课程学习
	public String learnCourse(){
		callbackInfo.clear();
		MyLearnCourse myLearnCourse=new MyLearnCourse(userId, courseId, 0, DateTimeUtil.getCurrentDateTime2());
		myLearnCourseService.addMyLearnCourse(myLearnCourse);
		session.put("isHaveLearned", true);
		Course course=courseService.getCourseByCourseId(courseId);
		course.setLearningPeopleNum(course.getLearningPeopleNum()+1);
		courseService.modifyCourse(course);		
		callbackInfo.put("learn", "ok");
		getRecommendCourse(userService.getUserByUserId(userId),courseService.findCoursesLastestFour());
		return "callback";
	}
	//用户收藏某课程
	public String likeCourse(){
		callbackInfo.clear();
		MyLikeCourse myLikeCourse=new MyLikeCourse(userId, courseId, DateTimeUtil.getCurrentDateTime2());
		myLikeCourseService.addMyLikeCourse(myLikeCourse);
		session.put("isHaveLiked", true);
		Course course=courseService.getCourseByCourseId(courseId);
		course.setLikeingPeopleNum(course.getLikeingPeopleNum()+1);
		courseService.modifyCourse(course);
		callbackInfo.put("like", "ok");
		System.out.println("在收藏课程中调用getRecommendCourse");
		getRecommendCourse(userService.getUserByUserId(userId),courseService.findCoursesLastestFour());
		return "callback";
	}
	//用户取消收藏某课程
	public String cancleLikeCourse(){
		MyLikeCourse mlc=myLikeCourseService.getById(myLikeCourseId);
		myLikeCourseService.deleteMyLikeCourse(mlc);
		List<MyLikeCourse> myLikeCourseList=myLikeCourseService.findMyLikeCourseByUserId(userId);
		List<MyLikeCourseInfo> myLikeCourseInfoList=new ArrayList<MyLikeCourseInfo>();
		if(myLikeCourseList.size()!=0&&myLikeCourseList!=null){
			for(int i=0,len=myLikeCourseList.size();i<len;i++){
				Course courseInfo=courseService.getCourseByCourseId(myLikeCourseList.get(i).getCourseId());
				User teacherUser=userService.getUserByUserId(courseInfo.getTeacherId());
				MyLikeCourseInfo myLikeCourseInfo=new MyLikeCourseInfo(myLikeCourseList.get(i).getUserId(), myLikeCourseList.get(i).getCourseId(), DateTimeUtil.getCurrentDateTime2(), myLikeCourseList.get(i).getMyLikeCourseId(), teacherUser, courseInfo);
			    myLikeCourseInfoList.add(myLikeCourseInfo);
			}
		}
		session.put("myLikeCourseInfoList", myLikeCourseInfoList);
		return "cancleLikeCourse_yes";
	}
	public String getAnalysis(){
		Course course=courseService.getCourseByCourseId(courseId);
		List<MyLearnCourse> myLearnCourseList=myLearnCourseService.findMyLearnCoursesByCourseId(courseId);
		List<MyLearnCourseInfo> mLCIList=new ArrayList<MyLearnCourseInfo>();
		for(int i=0,len=myLearnCourseList.size();i<len;i++){
			User user=userService.getUserByUserId(myLearnCourseList.get(i).getUserId());
			
			MyLearnCourseInfo mlci=new MyLearnCourseInfo(myLearnCourseList.get(i).getUserId(), myLearnCourseList.get(i).getCourseId(), myLearnCourseList.get(i).getConditi(), myLearnCourseList.get(i).getTime(),myLearnCourseList.get(i).getMyLearnCourseId(),user,null,null);
			mLCIList.add(mlci);
		}
		session.put("mlciList", mLCIList);
		session.put("course_analysis", course);
		return "getAnalysis_yes";
	}
	public String tradeCard(){
		return "tradeCard_yes";
	}
	//根据用户的正在学习课程和收藏课程推荐
		public void getRecommendCourse(User userNew,List<Course> forthCoursesInfoList){
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
						if(forthCoursesInfoList==null||forthCoursesInfoList.size()==0){
							session.put("recoCourse", null);
						}else{
							session.put("recoCourse",forthCoursesInfoList.get(0));
						}
					}
				}
			}else{
				//用户有正在学习的课程,推荐类似课程
				System.out.println("4.用户有正在学习的课程,推荐类似课程");
				MyLearnCourse myLearnCourse=myLearnCourseService.getUserLatestLearn(userid);
				Course userLatestLearnC=courseService.getCourseByCourseId(myLearnCourse.getCourseId());
				Course recoCourse=courseService.getRecCourse(userLatestLearnC.getCourseType(), userLatestLearnC.getCourseId());
				if(recoCourse!=null){
					session.put("recoCourse",recoCourse);
				}else{
					if(forthCoursesInfoList==null||forthCoursesInfoList.size()==0){
						session.put("recoCourse", null);
					}else{
						session.put("recoCourse",forthCoursesInfoList.get(0));
					}
				}
				
			}
		}
}
