package dao.teacherDao;

import entity.Course;
import entity.SelectCourse;
import entity.User;

import java.util.List;

public interface TeacherCourse {
    //老师添加课程
    public boolean addCourse(Course course);
    //查询课程表中所有课程
    public List<Course> getCourseAll(String phone);
    //根据课程ID查询该课程创建老师phone
    public String queryCourseTeacherPhone(String id);
    //通过手机号和课程ID创建选课
    public boolean createSelectCourse(SelectCourse selectCourse);
    //根据用户手机号查询选课表中所有此手机号加入的课程
    public List<Course> getSelectCourseAll(String phone);
    //查询加入的所有课程中归档的课程
    public List<Course> getSelectCourseFileAll(String phone);
    //老师根据课程ID删除自己创建的课程
    public boolean deleteCreateCourse(String courseId);
    //老师根据课程ID删除自己选修的课程Add
    public boolean deleteAddCourse(String id);
    //根据课程Id修改自己创建的课程内容
    public boolean updateCreateCourse(String id,String name,String grade,String schoolYear,String semester);
    //根据课程Id在选课表中查询又多少人选修该课程
    public int selectCourseId(String courseId);
    //根据用户手机号查询课程表中所有由此手机号创建的被归档的课程课程
    public List<Course> getFileCourseAll(String phone);
    //老师根据课程Id归档自己(修改课程表中file值为2)
    public boolean updateCreateCourseFile(String courseId);
    //老师根据课程Id归档全部(修改课程表与选课表中file值为2)
    public boolean updateCreateCourseFileAll(String courseId);
    //老师根据课程Id恢复所有归档课程
    public boolean updateCreateCourseRecoverFile(String courseId);
    //老师根据课程Id恢复加入课程中的归档课程
    public boolean updateAddCourseRecoverFile(String courseId);
    //根据选课Id归档选课
    public boolean updateAddCourseFile(String courseId);
    //根据课程Id查询课程
    public List<Course> getSelectCourse(String courseId);
    //根据用户手机号查询课程表中所有由此手机号创建得课程
    public List<Course> courseAll(String phone);
    //根据phone在课程表中查询该老师创建了多少门课程
    public int selectCourseNum(String phone);
    //根据用户手机号查询选课表中所有此手机号加入的课程
    public List<Course> selectCourseAll(String phone);
    //根据phone在选课表中查询该老师选修了多少门课程
    public int getSelectCourseNum(String phone);
    //根据课程ID查询选课表中选修这门课的学生信息
    public List<User> selectStuAll(String systemDate);
    //根据课程id查询课程名字
    public String selectCourseName(String courseId);
    //查询最近创建的作业Id
    public String selectTaskId(String courseId);
}
