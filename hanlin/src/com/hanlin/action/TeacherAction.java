package com.hanlin.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javassist.expr.NewArray;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.hanlin.domain.Character;
import com.hanlin.domain.CharacterAndMeasure;
import com.hanlin.domain.Course;
import com.hanlin.domain.CourseComment;
import com.hanlin.domain.Exercise;
import com.hanlin.domain.LearnRecord;
import com.hanlin.domain.Measure;
import com.hanlin.domain.Message;
import com.hanlin.domain.MyLearnCourse;
import com.hanlin.domain.MyLearnCourseInfo;
import com.hanlin.domain.MyLikeCourse;
import com.hanlin.domain.MyLikeCourseInfo;
import com.hanlin.domain.Notice;
import com.hanlin.domain.Post;
import com.hanlin.domain.PostInfo;
import com.hanlin.domain.User;
import com.hanlin.service.CharacterService;
import com.hanlin.service.CourseCommentService;
import com.hanlin.service.CourseService;
import com.hanlin.service.ExerciseService;
import com.hanlin.service.LearnRecordService;
import com.hanlin.service.MeasureService;
import com.hanlin.service.MessageService;
import com.hanlin.service.MyLearnCourseService;
import com.hanlin.service.MyLikeCourseService;
import com.hanlin.service.NoticeService;
import com.hanlin.service.PostService;
import com.hanlin.service.UserService;
import com.hanlin.utils.DateTimeUtil;
import com.hanlin.utils.GetVideoSrc;

import freemarker.template.utility.DateUtil;

public class TeacherAction extends BaseAction {
	
	private static final long serialVersionUID = -1638000953527840207L;
	//教师登陆
	private int teacherId;
	private Course course;
	private File image;
	private String imageFileName;
	private String imageContentType;// 文件类型
	//教师修改课程信息
	private int courseId;
	//教师向学习某课程的同学发布公告
    private Notice notice;
    //教师给某课程添加章
    private Character character;
    //教师给某章添加小节
    private int characterId;
    private Measure measure;
    //教师查看小节||教师添加小节测试前
    private int measureId;
    private int userId;
    //教师添加小节测试时
    private Exercise exerciseOne;
    private Exercise exerciseTwo;
    private Exercise exerciseThree;
    private Exercise exerciseFour;
    private Exercise exerciseFive;
    //用户退课
    private int myLearnCourseId;
    private CourseComment courseComment;
    //用户修改个人信息
    private User user;
    //向管理员发送疑问notice发送
    private int message_senderId;
    private String message_content;
	public TeacherAction() {
		super();
	}

	@Autowired
	private CourseService courseService;
	@Autowired
	private CharacterService characterService;
	@Autowired
	private MeasureService measureService;
    @Autowired
    private NoticeService noticeService;
    @Autowired
    private ExerciseService exerciseService;
    @Autowired
    private MyLearnCourseService myLearnCourseService;
    @Autowired
    private UserService userService;
    @Autowired
    private CourseCommentService courseCommentService;
    @Autowired
    private MyLikeCourseService myLikeCourseService;
    @Autowired
    private PostService postService;
    @Autowired
    private MessageService messageService;
    @Autowired
    private LearnRecordService learnRecordService;
	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
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
	
	public int getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	
	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
    
	public Notice getNotice() {
		return notice;
	}

	public void setNotice(Notice notice) {
		this.notice = notice;
	}
    
	public Character getCharacter() {
		return character;
	}

	public void setCharacter(Character character) {
		this.character = character;
	}
    
	public int getCharacterId() {
		return characterId;
	}

	public void setCharacterId(int characterId) {
		this.characterId = characterId;
	}

	
	public Measure getMeasure() {
		return measure;
	}

	public void setMeasure(Measure measure) {
		this.measure = measure;
	}
    
	public int getMeasureId() {
		return measureId;
	}

	public void setMeasureId(int measureId) {
		this.measureId = measureId;
	}
    
	public Exercise getExerciseOne() {
		return exerciseOne;
	}

	public void setExerciseOne(Exercise exerciseOne) {
		this.exerciseOne = exerciseOne;
	}

	public Exercise getExerciseTwo() {
		return exerciseTwo;
	}

	public void setExerciseTwo(Exercise exerciseTwo) {
		this.exerciseTwo = exerciseTwo;
	}

	public Exercise getExerciseThree() {
		return exerciseThree;
	}

	public void setExerciseThree(Exercise exerciseThree) {
		this.exerciseThree = exerciseThree;
	}

	public Exercise getExerciseFour() {
		return exerciseFour;
	}

	public void setExerciseFour(Exercise exerciseFour) {
		this.exerciseFour = exerciseFour;
	}

	public Exercise getExerciseFive() {
		return exerciseFive;
	}

	public void setExerciseFive(Exercise exerciseFive) {
		this.exerciseFive = exerciseFive;
	}
    
	
	public int getMyLearnCourseId() {
		return myLearnCourseId;
	}

	public void setMyLearnCourseId(int myLearnCourseId) {
		this.myLearnCourseId = myLearnCourseId;
	}
    
	
	public CourseComment getCourseComment() {
		return courseComment;
	}

	public void setCourseComment(CourseComment courseComment) {
		this.courseComment = courseComment;
	}
    
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
    
	public int getMessage_senderId() {
		return message_senderId;
	}

	public void setMessage_senderId(int message_senderId) {
		this.message_senderId = message_senderId;
	}

	public String getMessage_content() {
		return message_content;
	}

	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}
    
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String goToTeacher(){
		List<Course> list=courseService.findCoursesByTeacherId(teacherId);
		List<MyLearnCourse> myLearnCourseList=myLearnCourseService.findMyLearnCoursesByUserId(teacherId);		
		List<MyLearnCourseInfo> myLearnCourseInfoList=new ArrayList<MyLearnCourseInfo>();
		if(myLearnCourseList.size()!=0&&myLearnCourseList!=null){
		for(int i=0,len=myLearnCourseList.size();i<len;i++){
			//User userInfo=userService.getUserByUserId(myLearnCourseList.get(i).getUserId());
			Course courseInfo=courseService.getCourseByCourseId(myLearnCourseList.get(i).getCourseId());
			User teacherUser=userService.getUserByUserId(courseInfo.getTeacherId());
			LearnRecord learnRecord=learnRecordService.getByUserIdAndCourseId(teacherId, courseInfo.getCourseId());
			MyLearnCourseInfo myLearnCourseInfo=new MyLearnCourseInfo(myLearnCourseList.get(i).getUserId(), myLearnCourseList.get(i).getCourseId(), myLearnCourseList.get(i).getConditi(), myLearnCourseList.get(i).getTime(), myLearnCourseList.get(i).getMyLearnCourseId(), teacherUser, courseInfo,learnRecord);
		    myLearnCourseInfoList.add(myLearnCourseInfo);
		}
		}
		List<MyLikeCourse> myLikeCourseList=myLikeCourseService.findMyLikeCourseByUserId(teacherId);
		List<MyLikeCourseInfo> myLikeCourseInfoList=new ArrayList<MyLikeCourseInfo>();
		if(myLikeCourseList.size()!=0&&myLikeCourseList!=null){
			for(int i=0,len=myLikeCourseList.size();i<len;i++){
				Course courseInfo=courseService.getCourseByCourseId(myLikeCourseList.get(i).getCourseId());
				User teacherUser=userService.getUserByUserId(courseInfo.getTeacherId());
				MyLikeCourseInfo myLikeCourseInfo=new MyLikeCourseInfo(myLikeCourseList.get(i).getUserId(), myLikeCourseList.get(i).getCourseId(), DateTimeUtil.getCurrentDateTime2(), myLikeCourseList.get(i).getMyLikeCourseId(), teacherUser, courseInfo);
			    myLikeCourseInfoList.add(myLikeCourseInfo);
			}
		}
		session.put("teacherCourses", list);//教师发布的所有课程
		session.put("myLearnCourseInfoList", myLearnCourseInfoList);
		session.put("myLikeCourseInfoList", myLikeCourseInfoList);
		return "goToTeacher_yes";
	}
	public String goToTeacherCenter(){
		List<Course> list=courseService.findCoursesByTeacherId(teacherId);
		List<MyLearnCourse> myLearnCourseList=myLearnCourseService.findMyLearnCoursesByUserId(teacherId);		
		List<MyLearnCourseInfo> myLearnCourseInfoList=new ArrayList<MyLearnCourseInfo>();
		if(myLearnCourseList.size()!=0&&myLearnCourseList!=null){
		for(int i=0,len=myLearnCourseList.size();i<len;i++){
			//User userInfo=userService.getUserByUserId(myLearnCourseList.get(i).getUserId());
			Course courseInfo=courseService.getCourseByCourseId(myLearnCourseList.get(i).getCourseId());
			User teacherUser=userService.getUserByUserId(courseInfo.getTeacherId());
			LearnRecord learnRecord=learnRecordService.getByUserIdAndCourseId(teacherId, courseInfo.getCourseId());
			MyLearnCourseInfo myLearnCourseInfo=new MyLearnCourseInfo(myLearnCourseList.get(i).getUserId(), myLearnCourseList.get(i).getCourseId(), myLearnCourseList.get(i).getConditi(), myLearnCourseList.get(i).getTime(), myLearnCourseList.get(i).getMyLearnCourseId(), teacherUser, courseInfo,learnRecord);
		    myLearnCourseInfoList.add(myLearnCourseInfo);
		}
		}
		List<MyLikeCourse> myLikeCourseList=myLikeCourseService.findMyLikeCourseByUserId(teacherId);
		List<MyLikeCourseInfo> myLikeCourseInfoList=new ArrayList<MyLikeCourseInfo>();
		if(myLikeCourseList.size()!=0&&myLikeCourseList!=null){
			for(int i=0,len=myLikeCourseList.size();i<len;i++){
				Course courseInfo=courseService.getCourseByCourseId(myLikeCourseList.get(i).getCourseId());
				User teacherUser=userService.getUserByUserId(courseInfo.getTeacherId());
				MyLikeCourseInfo myLikeCourseInfo=new MyLikeCourseInfo(myLikeCourseList.get(i).getUserId(), myLikeCourseList.get(i).getCourseId(), DateTimeUtil.getCurrentDateTime2(), myLikeCourseList.get(i).getMyLikeCourseId(), teacherUser, courseInfo);
			    myLikeCourseInfoList.add(myLikeCourseInfo);
			}
		}
		session.put("teacherCourses", list);//教师发布的所有课程
		session.put("myLearnCourseInfoList", myLearnCourseInfoList);
		session.put("myLikeCourseInfoList", myLikeCourseInfoList);
		return "goToTeacherCenter_yes";
	}
	public String addCourse() {
		System.out.println(course.getTeacherId());
		System.out.println(course.getCourseName());
		System.out.println(course.getCourseHead());
		System.out.println(course.getCourseType());
		System.out.println(course.getCourseIntroduction());
		System.out.println(course.getCourseTips());
		Course newCourse =new Course();
		String realPath = ServletActionContext.getServletContext().getRealPath(
				"/head");
		System.out.println("realPath:" + realPath);
		if (image != null) {
			System.out.println("begin to copy file");
			String newImageFileName = getNewFileName(imageFileName);
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
			newCourse.setCourseHead(newImageFileName);
		}
		newCourse.setTeacherId(course.getTeacherId());
		System.out.println("这是课程老师的id"+course.getTeacherId());
		newCourse.setCourseName(course.getCourseName());
		newCourse.setLearningPeopleNum(0);
		newCourse.setLikeingPeopleNum(0);
		newCourse.setCourseIntroduction(course.getCourseIntroduction());
		newCourse.setCourseTips(course.getCourseTips());
		newCourse.setCourseSatisfied(10.0);
		newCourse.setCourseCondi(1);
		newCourse.setCourseType(course.getCourseType());	
		newCourse.setTime(DateTimeUtil.getCurrentDateTime2());
		courseService.addOneCourse(newCourse);
		List<Course> list=courseService.findCoursesByTeacherId(course.getTeacherId());
		session.put("teacherCourses", list);//教师发布的所有课程
		return "addCourse_yes";
	}
	public String modifyCourseInfoB(){//进入修改课程信息页面前获取要修改的课程
		Course course=courseService.getCourseByCourseId(courseId);
		session.put("course", course);
		return "modifyCourseInfoB_yes";
	}
	public String modifyCourseInfoA(){//进入修改课程信息页面前获取要修改的课程
		Course newCourse =courseService.getCourseByCourseId(course.getCourseId());
		String realPath = ServletActionContext.getServletContext().getRealPath(
				"/head");
		System.out.println("realPath:" + realPath);
		if (image != null) {
			System.out.println("begin to copy file");
			String newImageFileName = getNewFileName(imageFileName);
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
			newCourse.setCourseHead(newImageFileName);
		}
		newCourse.setCourseName(course.getCourseName());
		newCourse.setCourseIntroduction(course.getCourseIntroduction());
		newCourse.setCourseTips(course.getCourseTips());
		newCourse.setCourseType(course.getCourseType());	
		courseService.modifyCourse(newCourse);
		List<Course> list=courseService.findCoursesByTeacherId(newCourse.getTeacherId());
		session.put("teacherCourses", list);//教师发布的所有课程
		return "modifyCourseInfoA_yes";
	}
	public String lookCharacter(){//教师进入一个课程的章节
		//String flag="no";//判断小节是否存在测试题
		Course lookCourse=courseService.getCourseByCourseId(courseId);
		List<Character> characterList=characterService.findCharactersByCourseId(courseId);
		List<CharacterAndMeasure> characterAndMeasureList=new ArrayList<CharacterAndMeasure>();
		if(characterList.size()!=0&&characterList!=null){
		for(int i=0,len=characterList.size();i<len;i++){
			List<Measure> measureList=measureService.findMeasuresByCharacterId(characterList.get(i).getCharacterId());
			CharacterAndMeasure cam=new CharacterAndMeasure(characterList.get(i).getCourseId(), characterList.get(i).getTitle(), characterList.get(i).getDiscription(), characterList.get(i).getTime(), measureList,characterList.get(i).getCharacterId());
		    characterAndMeasureList.add(cam);
		}
		}
		session.put("lookCourse", lookCourse);
		session.put("characterAndMeasureList", characterAndMeasureList);
		return "lookCharacter_yes";
	}
	public String subNotice(){
		callbackInfo.clear();
		Notice newNotice=new Notice(notice.getSenduserId(), notice.getTitle(), notice.getNoticeType(), notice.getContent(),DateTimeUtil.getCurrentDateTime2(), notice.getCourseId());
		noticeService.addNotice(newNotice);
		callbackInfo.put("addNotice", "yes");
		return "callback";
	}
	public String addCharacter(){
		callbackInfo.clear();
		Character newCharacter=new Character(character.getCourseId(),character.getTitle(),character.getDiscription(),DateTimeUtil.getCurrentDateTime2());
		characterService.addCharacter(newCharacter);
		//String flag="no";
		List<Character> characterList=characterService.findCharactersByCourseId(character.getCourseId());
		List<CharacterAndMeasure> characterAndMeasureList=new ArrayList<CharacterAndMeasure>();
		if(characterList.size()!=0&&characterList!=null){
		for(int i=0,len=characterList.size();i<len;i++){
			List<Measure> measureList=measureService.findMeasuresByCharacterId(characterList.get(i).getCharacterId());
			/*if(measureList!=null){
				for(int j=0,len2=measureList.size();j<len2;j++){
					if(exerciseService.findExercisesByMeasureId(measureList.get(j).getMeasureId())!=null){
						flag="yes";
						break;
					}
				}
			}*/
			CharacterAndMeasure cam=new CharacterAndMeasure(characterList.get(i).getCourseId(), characterList.get(i).getTitle(), characterList.get(i).getDiscription(), characterList.get(i).getTime(), measureList,characterList.get(i).getCharacterId());
		    characterAndMeasureList.add(cam);
		}
		}
		session.put("characterAndMeasureList", characterAndMeasureList);
		callbackInfo.put("addCharacter", "yes");
		return "callback";
	}
	public String modifyCharacter(){
		callbackInfo.clear();
		Character oldCharacter=characterService.getCharacterByCharacterId(character.getCharacterId());
		oldCharacter.setTitle(character.getTitle());
		oldCharacter.setDiscription(character.getDiscription());
		characterService.modifyCharacter(oldCharacter);
		callbackInfo.put("modifyCharacter", "yes");
		return "callback";
	}
	public String addSmallCharacterB(){
		System.out.println("传来的characterId ismmmmmmmmmmmmmmmmmmmmmmmmm:"+characterId);
		Character character=characterService.getCharacterByCharacterId(characterId);
		session.put("characterId", characterId);
		session.put("courseId", character.getCourseId());
		//request.put("characterId", characterId);
		//request.put("courseId", character.getCourseId());
		return "addSmallCharacterB_yes";
	}
	public String addSmallCharacterA(){
		Measure newMeasure=new Measure(measure.getCourseId(), measure.getCharacterId(), measure.getTitle(), measure.getVideoPath(), DateTimeUtil.getCurrentDateTime2(), measure.getDiscription(),"no");
	    measureService.addMeasure(newMeasure);
	    //String flag="no";
	    List<Character> characterList=characterService.findCharactersByCourseId(measure.getCourseId());
		List<CharacterAndMeasure> characterAndMeasureList=new ArrayList<CharacterAndMeasure>();
		if(characterList.size()!=0&&characterList!=null){
		for(int i=0,len=characterList.size();i<len;i++){
			List<Measure> measureList=measureService.findMeasuresByCharacterId(characterList.get(i).getCharacterId());
			/*if(measureList!=null){
				for(int j=0,len2=measureList.size();j<len2;j++){
					if(exerciseService.findExercisesByMeasureId(measureList.get(j).getMeasureId())!=null){
						flag="yes";
						break;
					}
				}
			}*/
			CharacterAndMeasure cam=new CharacterAndMeasure(characterList.get(i).getCourseId(), characterList.get(i).getTitle(), characterList.get(i).getDiscription(), characterList.get(i).getTime(), measureList,characterList.get(i).getCharacterId());
		    characterAndMeasureList.add(cam);
		}
		}
		session.put("characterAndMeasureList", characterAndMeasureList);
		
		return "addSmallCharacterA_yes";
	}
	public String checkMeasure(){
		Measure checkedMeasure=measureService.getMeasureByMeasureId(measureId);
		checkedMeasure.setVideoPath(GetVideoSrc.getVideoSrc(checkedMeasure.getVideoPath()));//得到纯videosrc
		List<Post> measurePosts=postService.findPostsByMeasureId(measureId);
		List<PostInfo> measurePostInfos=new ArrayList<PostInfo>();
		for(int i=0,len=measurePosts.size();i<len;i++){
			User user=userService.getUserByUserId(measurePosts.get(i).getUserId());
			PostInfo postInfo=new PostInfo(measurePosts.get(i).getUserId(), measurePosts.get(i).getCourseId(), measurePosts.get(i).getCharacterId(), measurePosts.get(i).getMeasureId(), measurePosts.get(i).getContent(), measurePosts.get(i).getTime(), measurePosts.get(i).getLikeNum(), measurePosts.get(i).getReplyNum(),measurePosts.get(i).getPostId(),user);			
			measurePostInfos.add(postInfo);
		}
		LearnRecord oldL=learnRecordService.getByUserIdAndCourseId(userId, checkedMeasure.getCourseId());
		if(oldL!=null){
		   learnRecordService.deleteLearnRecord(oldL);
		}
		LearnRecord learnRecord =new LearnRecord(userId, measureId, checkedMeasure.getTitle(),DateTimeUtil.getCurrentDateTime2(), checkedMeasure.getCourseId());
		learnRecordService.addLearnRecord(learnRecord);
		session.put("checkedMeasure", checkedMeasure);
		session.put("measurePostInfos", measurePostInfos);
		return "checkMeasure_yes";
	}
	public String addExerciseB(){
		Measure addExerciseOfMeasure=measureService.getMeasureByMeasureId(measureId);
		session.put("addExerciseOfMeasure", addExerciseOfMeasure);
		return "addExerciseB_yes";
	}
	public String addExerciseA(){
		Measure measureMeasure=measureService.getMeasureByMeasureId(measureId);
		exerciseService.addExercise(new Exercise(measureId, exerciseOne.getQuestion(), exerciseOne.getAnswer(), exerciseOne.getAcChoice(), exerciseOne.getBcChoice(), exerciseOne.getCcChoice(), exerciseOne.getDcChoice(), DateTimeUtil.getCurrentDateTime2(),measureMeasure.getCourseId()));
		exerciseService.addExercise(new Exercise(measureId, exerciseTwo.getQuestion(), exerciseTwo.getAnswer(), exerciseTwo.getAcChoice(), exerciseTwo.getBcChoice(), exerciseTwo.getCcChoice(), exerciseTwo.getDcChoice(), DateTimeUtil.getCurrentDateTime2(),measureMeasure.getCourseId()));
		exerciseService.addExercise(new Exercise(measureId, exerciseThree.getQuestion(), exerciseThree.getAnswer(), exerciseThree.getAcChoice(), exerciseThree.getBcChoice(), exerciseThree.getCcChoice(), exerciseThree.getDcChoice(), DateTimeUtil.getCurrentDateTime2(),measureMeasure.getCourseId()));
		exerciseService.addExercise(new Exercise(measureId, exerciseFour.getQuestion(), exerciseFour.getAnswer(), exerciseFour.getAcChoice(), exerciseFour.getBcChoice(), exerciseFour.getCcChoice(), exerciseFour.getDcChoice(), DateTimeUtil.getCurrentDateTime2(),measureMeasure.getCourseId()));
		exerciseService.addExercise(new Exercise(measureId, exerciseFive.getQuestion(), exerciseFive.getAnswer(), exerciseFive.getAcChoice(), exerciseFive.getBcChoice(), exerciseFive.getCcChoice(), exerciseFive.getDcChoice(), DateTimeUtil.getCurrentDateTime2(),measureMeasure.getCourseId()));	
		//String flag="no";
	    Measure hahameasure=measureService.getMeasureByMeasureId(measureId);
	    hahameasure.setIsHaveExercise("yes");
	    measureService.modifyMeasure(hahameasure);
		List<Character> characterList=characterService.findCharactersByCourseId(hahameasure.getCourseId());
		List<CharacterAndMeasure> characterAndMeasureList=new ArrayList<CharacterAndMeasure>();
		if(characterList.size()!=0&&characterList!=null){
		for(int i=0,len=characterList.size();i<len;i++){
			List<Measure> measureList=measureService.findMeasuresByCharacterId(characterList.get(i).getCharacterId());
			/*if(measureList!=null){
				for(int j=0,len2=measureList.size();j<len2;j++){
					if(exerciseService.findExercisesByMeasureId(measureList.get(j).getMeasureId())!=null){
						flag="yes";
						break;
					}
				}
			}*/
			CharacterAndMeasure cam=new CharacterAndMeasure(characterList.get(i).getCourseId(), characterList.get(i).getTitle(), characterList.get(i).getDiscription(), characterList.get(i).getTime(), measureList,characterList.get(i).getCharacterId());
		    characterAndMeasureList.add(cam);
		}
		}
		session.put("characterAndMeasureList", characterAndMeasureList);
		return "addExerciseA_yes";
	}
	//教师查看小节习题（准备修改）
	public String checkExercise(){
		List<Exercise> exerciseCheckedList=exerciseService.findExercisesByMeasureId(measureId);
		Measure measureM=measureService.getMeasureByMeasureId(measureId);
		session.put("checkExerciseOfMeasure", measureM);
		session.put("exerciseCheckedList", exerciseCheckedList);
		return "checkExercise_yes";
	}
	//教师修改小节习题
	public String modifyExercise(){
		List<Exercise> lists=exerciseService.findExercisesByMeasureId(measureId);
		Exercise exerciseOneOld=lists.get(0);
		exerciseOneOld.setQuestion(exerciseOne.getQuestion());
		exerciseOneOld.setAcChoice(exerciseOne.getAcChoice());
		exerciseOneOld.setBcChoice(exerciseOne.getBcChoice());
		exerciseOneOld.setCcChoice(exerciseOne.getCcChoice());
		exerciseOneOld.setDcChoice(exerciseOne.getDcChoice());
		exerciseOneOld.setAnswer(exerciseOne.getAnswer());
		exerciseService.modifyExercise(exerciseOneOld);
		
		Exercise exerciseTwoOld=lists.get(1);
		exerciseTwoOld.setQuestion(exerciseTwo.getQuestion());
		exerciseTwoOld.setAcChoice(exerciseTwo.getAcChoice());
		exerciseTwoOld.setBcChoice(exerciseTwo.getBcChoice());
		exerciseTwoOld.setCcChoice(exerciseTwo.getCcChoice());
		exerciseTwoOld.setDcChoice(exerciseTwo.getDcChoice());
		exerciseTwoOld.setAnswer(exerciseOne.getAnswer());
		exerciseService.modifyExercise(exerciseTwoOld);
		
		Exercise exerciseThreeOld=lists.get(2);
		exerciseThreeOld.setQuestion(exerciseThree.getQuestion());
		exerciseThreeOld.setAcChoice(exerciseThree.getAcChoice());
		exerciseThreeOld.setBcChoice(exerciseThree.getBcChoice());
		exerciseThreeOld.setCcChoice(exerciseThree.getCcChoice());
		exerciseThreeOld.setDcChoice(exerciseThree.getDcChoice());
		exerciseThreeOld.setAnswer(exerciseThree.getAnswer());
		exerciseService.modifyExercise(exerciseThreeOld);
		
		Exercise exerciseFourOld=lists.get(3);
		exerciseFourOld.setQuestion(exerciseFour.getQuestion());
		exerciseFourOld.setAcChoice(exerciseFour.getAcChoice());
		exerciseFourOld.setBcChoice(exerciseFour.getBcChoice());
		exerciseFourOld.setCcChoice(exerciseFour.getCcChoice());
		exerciseFourOld.setDcChoice(exerciseFour.getDcChoice());
		exerciseFourOld.setAnswer(exerciseFour.getAnswer());
		exerciseService.modifyExercise(exerciseFourOld);
		
		Exercise exerciseFiveOld=lists.get(4);
		exerciseFiveOld.setQuestion(exerciseFive.getQuestion());
		exerciseFiveOld.setAcChoice(exerciseFive.getAcChoice());
		exerciseFiveOld.setBcChoice(exerciseFive.getBcChoice());
		exerciseFiveOld.setCcChoice(exerciseFive.getCcChoice());
		exerciseFiveOld.setDcChoice(exerciseFive.getDcChoice());
		exerciseFiveOld.setAnswer(exerciseFive.getAnswer());
		exerciseService.modifyExercise(exerciseFiveOld);		
		return "modifyExercise_yes";
	}
	public String quitCourse(){
		MyLearnCourse myLearnCourseOld=myLearnCourseService.getMyLearnCourseByMyLearnCourseId(myLearnCourseId);
		//myLearnCourseOld.setConditi(2);
		//myLearnCourseService.modifyMyLearnCourse(myLearnCourseOld);	
		myLearnCourseService.deleteMyLearnCourse(myLearnCourseOld);
		List<MyLearnCourse> myLearnCourseList=myLearnCourseService.findMyLearnCoursesByUserId(myLearnCourseOld.getUserId());		
		List<MyLearnCourseInfo> myLearnCourseInfoList=new ArrayList<MyLearnCourseInfo>();
		if(myLearnCourseList.size()!=0&&myLearnCourseList!=null){
		for(int i=0,len=myLearnCourseList.size();i<len;i++){
			//User userInfo=userService.getUserByUserId(myLearnCourseList.get(i).getUserId());
			Course courseInfo=courseService.getCourseByCourseId(myLearnCourseList.get(i).getCourseId());
			User teacherUser=userService.getUserByUserId(courseInfo.getTeacherId());
			LearnRecord learnRecord=learnRecordService.getByUserIdAndCourseId(teacherId, courseInfo.getCourseId());
			MyLearnCourseInfo myLearnCourseInfo=new MyLearnCourseInfo(myLearnCourseList.get(i).getUserId(), myLearnCourseList.get(i).getCourseId(), myLearnCourseList.get(i).getConditi(), myLearnCourseList.get(i).getTime(), myLearnCourseList.get(i).getMyLearnCourseId(), teacherUser, courseInfo,learnRecord);
		    myLearnCourseInfoList.add(myLearnCourseInfo);
		}
		}
		
		CourseComment courseCommentNew=new CourseComment(courseComment.getCourseId(), courseComment.getUserId(), courseComment.getLevel(), courseComment.getContent(),DateTimeUtil.getCurrentDateTime2());
		courseCommentService.addCourseComment(courseCommentNew);
		session.put("myLearnCourseInfoList", myLearnCourseInfoList);
		return "quitCourse_yes";
	}
	public String modifyUser(){
		User oldUser=userService.getUserByUserId(user.getUserId());
		String realPath = ServletActionContext.getServletContext().getRealPath(
				"/head");
		System.out.println("realPath:" + realPath);
		if (image != null) {
			System.out.println("begin to copy file");
			String newImageFileName = getNewFileName(imageFileName);
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
			oldUser.setHead(newImageFileName);
		}
		oldUser.setNickname(user.getNickname());
		userService.updateUser(oldUser);
		User newUser=userService.getUserByUserId(user.getUserId());
		session.put("loginUser", newUser);
		return "modifyUser_yes";
	}
	
	public String subQuestion(){
		callbackInfo.clear();
		User user=userService.getSuper();
		Message message=new Message(message_senderId, user.getUserId(), "用户疑问", message_content, DateTimeUtil.getCurrentDateTime2());
		messageService.addMessage(message);
		callbackInfo.put("send_message", "ok");
		return "callback";
	}
	//delete course measure
	public String delMeasure(){
		callbackInfo.clear();
		Measure delM=measureService.getMeasureByMeasureId(measureId);
		measureService.deleteM(delM);
		
		callbackInfo.put("delM", "yes");
		return "callback";
	}
	public String getNewFileName(String imageFileName) {
		if(imageFileName.length()>=7){
			return DateTimeUtil.getCurrentDateTime() + "_" + imageFileName.substring(imageFileName.length() - 6,
					imageFileName.length());
		    }
		return DateTimeUtil.getCurrentDateTime()+"_"+imageFileName;
	}
}
