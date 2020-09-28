package dao.studentDao;

import entity.Course;
import entity.SelectCourse;

import java.util.List;

public interface StudentCourseDao {
    //通过手机号和课程ID创建选课
    public boolean studentCreateSelectCourse(SelectCourse selectCourse);
    //根据用户手机号查询选课表中所有此手机号加入的并且被归档的课程
    public List<Course> getSelectFileCourseAll(String phone);
    //学生根据课程Id恢复归档课程
    public boolean recoveryRecoverFile(String courseId);
    //学生根据课程ID删除自己选修的课程
    public boolean deleteAddCourse(String id);
    //根据用户手机号查询选课表中所有此手机号加入的并且被归档的课程
    public List<Course> getSelectNotFileCourseAll(String phone);
    //学生根据课程Id归档课程
    public boolean fileCourse(String courseId);
    //根据用户手机号查询选课表中所有此手机号选修的课程
    public List<Course> getSelectCourseAll(String phone);
    //根据phone查询该用户的头像
    public String selectStudentImg(String phone);
    //根据phone查询该用户的名字
    public String selectStudentName(String phone);
    //根据phone查询该用户的学号
    public String selectStudentId(String phone);
    //根据选课id查询该课程id
    public String selectCourseId(String selectCourseId);
}
