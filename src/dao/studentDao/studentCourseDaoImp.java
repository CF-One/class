package dao.studentDao;

import entity.Course;
import entity.SelectCourse;
import util.DBConn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class studentCourseDaoImp implements StudentCourseDao {
    //通过手机号和课程ID创建选课
    public boolean studentCreateSelectCourse(SelectCourse selectCourse) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("insert into selectcourse(id,courseId,userPhone,teacherPhone,file,systemDate)"+
                "values( '"+selectCourse.getId()+"','"+selectCourse.getCourseId()+"','"+selectCourse.getUserPhone()+"','"+selectCourse.getTeacherPhone()+"','"+selectCourse.getFile()+"','"+selectCourse.getSystemDate()+"')");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据用户手机号查询选课表中所有此手机号加入的并且被归档的课程
    public List<Course> getSelectFileCourseAll(String phone) {
        List<Course> courseList = new ArrayList<Course>();
        try {
            DBConn.init();
            ResultSet rs = DBConn.selectSql("select * from course,selectcourse where course.id=selectcourse.courseId and selectcourse.userPhone='"+phone+"' and selectcourse.file='"+2+"'");
            while (rs.next()) {
                Course course = new Course();
                course.setId(rs.getString("id"));
                course.setName(rs.getString("name"));
                course.setGrade(rs.getString("grade"));
                course.setSchoolYear(rs.getString("schoolYear"));
                course.setSemester(rs.getString("semester"));
                course.setTeacherPhone(rs.getString("teacherPhone"));
                course.setImg(rs.getString("img"));
                courseList.add(course);
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return courseList;
    }
    //学生根据课程Id恢复归档课程
    public boolean recoveryRecoverFile(String courseId) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("update selectcourse set file='"+1+"' where id='"+courseId+"'");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //学生根据课程ID删除自己选修的课程
    public boolean deleteAddCourse(String id) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("delete from selectcourse where id='"+id+"'");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据用户手机号查询选课表中所有此手机号加入的并且被归档的课程
    public List<Course> getSelectNotFileCourseAll(String phone) {
        List<Course> courseList = new ArrayList<Course>();
        try {
            DBConn.init();
            ResultSet rs = DBConn.selectSql("select * from course,selectcourse where course.id=selectcourse.courseId and selectcourse.userPhone='"+phone+"' and selectcourse.file='"+1+"'");
            while (rs.next()) {
                Course course = new Course();
                course.setId(rs.getString("id"));
                course.setName(rs.getString("name"));
                course.setGrade(rs.getString("grade"));
                course.setSchoolYear(rs.getString("schoolYear"));
                course.setSemester(rs.getString("semester"));
                course.setTeacherPhone(rs.getString("teacherPhone"));
                course.setImg(rs.getString("img"));
                courseList.add(course);
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return courseList;
    }
    //学生根据课程Id归档课程
    public boolean fileCourse(String courseId) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("update selectcourse set file='"+2+"' where id='"+courseId+"'");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据用户手机号查询选课表中所有此手机号选修的课程
    public List<Course> getSelectCourseAll(String phone) {
        List<Course> courseList = new ArrayList<Course>();
        try {
            DBConn.init();
            ResultSet rs = DBConn.selectSql("select * from course,selectcourse where course.id=selectcourse.courseId and selectcourse.userPhone='"+phone+"'");
            while (rs.next()) {
                Course course = new Course();
                course.setId(rs.getString("id"));
                course.setName(rs.getString("name"));
                course.setGrade(rs.getString("grade"));
                course.setSchoolYear(rs.getString("schoolYear"));
                course.setSemester(rs.getString("semester"));
                course.setTeacherPhone(rs.getString("teacherPhone"));
                course.setImg(rs.getString("img"));
                courseList.add(course);
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return courseList;
    }
    //根据phone查询该用户的头像
    public String selectStudentImg(String phone) {
        String img=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select img from student where phone='"+phone+"'");
            while (rs.next()){
                img=rs.getString("img");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return img;
    }
    //根据phone查询该用户的名字
    public String selectStudentName(String phone) {
        String name=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select name from student where phone='"+phone+"'");
            while (rs.next()){
                name=rs.getString("name");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return name;
    }
    //根据phone查询该用户的学号
    public String selectStudentId(String phone) {
        String id=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select id from student where phone='"+phone+"'");
            while (rs.next()){
                id=rs.getString("id");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;
    }
    //根据选课id查询该课程id
    public String selectCourseId(String selectCourseId) {
        String courseId=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select courseId from selectCourse where id='"+selectCourseId+"'");
            while (rs.next()){
                courseId=rs.getString("courseId");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return courseId;
    }
}
