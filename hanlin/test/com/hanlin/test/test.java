package com.hanlin.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hanlin.dao.UserDao;
import com.hanlin.domain.Course;
import com.hanlin.domain.CourseComment;
import com.hanlin.domain.CourseType;
import com.hanlin.domain.Danmu;
import com.hanlin.domain.Exercise;
import com.hanlin.domain.Measure;
import com.hanlin.domain.Message;
import com.hanlin.domain.MyLearnCourse;
import com.hanlin.domain.MyLikeCourse;
import com.hanlin.domain.Notice;
import com.hanlin.domain.Post;
import com.hanlin.domain.Runpic;
import com.hanlin.domain.ToBeTeaReq;
import com.hanlin.domain.User;
import com.hanlin.service.CharacterService;
import com.hanlin.service.CourseCommentService;
import com.hanlin.service.CourseService;
import com.hanlin.service.CourseTypeService;
import com.hanlin.service.DanmuService;
import com.hanlin.service.ExerciseService;
import com.hanlin.service.MeasureService;
import com.hanlin.service.MessageService;
import com.hanlin.service.MyLearnCourseService;
import com.hanlin.service.MyLikeCourseService;
import com.hanlin.service.NoticeService;
import com.hanlin.service.PostService;
import com.hanlin.service.RunpicService;
import com.hanlin.service.ToBeTeaReqService;
import com.hanlin.service.UserService;
import com.hanlin.service.impl.UserServiceImpl;
import com.hanlin.utils.DateTimeUtil;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/applicationContext.xml"})
public class test {
    @Autowired
    private UserService userService;
    @Autowired
    private CourseService courseService;
    @Autowired
    private CourseTypeService courseTypeService;
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
    private MyLikeCourseService myLikeCourseService;
    @Autowired
    private CourseCommentService courseCommentService;
    @Autowired
    private MessageService messageService;
    @Autowired
    private PostService postService;
    @Autowired
    private DanmuService danmuService;
    @Autowired
    private RunpicService runpicService;
    @Autowired
    private ToBeTeaReqService toBeTeaReqService;
	@Test
	public void test() {
       //User user=new User("1837475870@qq.com","123","defaulthead.jpg","羊羽",0,1);
       //userDaoImpl.save(user);
       //userService.regist(user);
	   /*Course course=new Course(1, "bootstrap22", "1.png", 0, 0, "hahah", "hehe", 1, 9.56, 1,DateTimeUtil.getCurrentDateTime2());
	   courseService.addOneCourse(course);*/
	   //courseTypeService.addOneCourseType(new CourseType("计算机类"));
	   //System.out.println(courseTypeService.findAllCourseTypes().size());
	   //characterService.addCharacter(new com.hanlin.domain.Character(1, "1", "1", DateTimeUtil.getCurrentDateTime2()));
	   //System.out.println(characterService.findCharactersByCourseId(1).size());
	   //System.out.println(courseService.findCoursesByTeacherId(1).size());
		//measureService.addMeasure(new Measure(1, 1, "haha", "s.mp4",DateTimeUtil.getCurrentDateTime2(),"hahahahahaha"));
	   //noticeService.addNotice(new Notice(1, "1", 4, "hehhe", DateTimeUtil.getCurrentDateTime()));
	   //exerciseService.addExercise(new Exercise(1, "什么是bootStrap？", "b", "hehehehe", "nnn", "haljg", "kjdkjs", DateTimeUtil.getCurrentDateTime2()));
	   //myLearnCourseService.addMyLearnCourse(new MyLearnCourse(1, 1, 0, DateTimeUtil.getCurrentDateTime2()));
	   //myLikeCourseService.addMyLikeCourse(new MyLikeCourse(1, 1, DateTimeUtil.getCurrentDateTime2()));
	   //courseCommentService.addCourseComment(new CourseComment(1, 1, 1, "不错的课程哦", DateTimeUtil.getCurrentDateTime2()));	   
	   //System.out.println(userService.countAll());
		//messageService.addMessage(new Message(1, 2, "哈哈", "呵呵呵呵呵恶化", DateTimeUtil.getCurrentDateTime2()));
	   //postService.addPost(new Post(1, 1, 1, 1, "哈哈哈", DateTimeUtil.getCurrentDateTime2(), 0, 0));
	   /*List<Measure> list=measureService.findThreeMeasuresByCourseId(1);
	   for(int i=0,len=list.size();i<len;i++){
		   System.out.println(list.get(i).getTime());
	   }*/
		//danmuService.addDanmu(new Danmu(3, "23333", "green", 1, 0, 3));
	   //System.out.println("此时的postId为"+postService.addPostGetId(new Post(1, 1, 1, 1, "哈哈哈", DateTimeUtil.getCurrentDateTime2(), 0, 0)));
	   //System.out.println("近四个"+courseService.findCoursesLastestFour().size());
	   //runpicService.addRunpic(new Runpic("index1.jpg","可以的",DateTimeUtil.getCurrentDateTime2()));
		//System.out.println("近四个"+runpicService.findFourRunpics().size());
		//toBeTeaReqService.addToBeTeaReq(new ToBeTeaReq(1, "1111","haha", DateTimeUtil.getCurrentDateTime2(), 0));
	   //System.out.println(noticeService.findAllNotice().size());
	   //System.out.println(myLearnCourseService.getUserLatestLearn(2).getTime());
	   System.out.println(myLikeCourseService.getById(2).getTime());
	}

}
