package dao.teacherDao;

import com.sun.org.apache.bcel.internal.generic.Select;
import entity.Course;
import entity.SelectCourse;
import entity.User;
import util.DBConn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TeacherCourseImp implements TeacherCourse {
    //老师添加课程
    public boolean addCourse(Course course) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("insert into course(id,name,grade,schoolYear,semester,teacherPhone,img,file)"+
                "values( '"+course.getId()+"','"+course.getName()+"','"+course.getGrade()+"','"+course.getSchoolYear()+"','"+course.getSemester()+"','"+course.getTeacherPhone()+"','"+course.getImg()+"','"+course.getFile()+"')");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据用户手机号查询课程表中所有由此手机号创建的未被归档的课程课程
    public List<Course> getCourseAll(String phone) {
        List<Course> courseList = new ArrayList<Course>();
        try {
            DBConn.init();
            ResultSet rs = DBConn.selectSql("select * from course where teacherPhone='"+phone+"' and file='"+1+"'");
            while (rs.next()) {
                Course course = new Course();
                course.setImg(rs.getString("img"));
                course.setId(rs.getString("id"));
                course.setName(rs.getString("name"));
                course.setGrade(rs.getString("grade"));
                course.setSchoolYear(rs.getString("schoolYear"));
                course.setSemester(rs.getString("semester"));
                course.setTeacherPhone(rs.getString("teacherPhone"));
                courseList.add(course);
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return courseList;
    }
    //根据用户手机号查询课程表中所有由此手机号创建的被归档的课程课程
    public List<Course> getFileCourseAll(String phone) {
        List<Course> courseList = new ArrayList<Course>();
        try {
            DBConn.init();
            ResultSet rs = DBConn.selectSql("select * from course where teacherPhone='"+phone+"' and file='"+2+"'");
            while (rs.next()) {
                Course course = new Course();
                course.setImg(rs.getString("img"));
                course.setId(rs.getString("id"));
                course.setName(rs.getString("name"));
                course.setGrade(rs.getString("grade"));
                course.setSchoolYear(rs.getString("schoolYear"));
                course.setSemester(rs.getString("semester"));
                course.setTeacherPhone(rs.getString("teacherPhone"));
                courseList.add(course);
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return courseList;
    }
    //根据课程ID查询该课程创建老师phone
    public String queryCourseTeacherPhone(String id) {
        String teacherPhone = null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select * from course where id='"+id+"'");
            while (rs.next()){
                teacherPhone=rs.getString("teacherPhone");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return teacherPhone;
    }
    //通过手机号和课程ID创建选课
    public boolean createSelectCourse(SelectCourse selectCourse) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("insert into selectcourse(id,courseId,userPhone,teacherPhone,file)"+
                "values( '"+selectCourse.getId()+"','"+selectCourse.getCourseId()+"','"+selectCourse.getUserPhone()+"','"+selectCourse.getTeacherPhone()+"','"+selectCourse.getFile()+"')");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据用户手机号查询选课表中所有此手机号加入的课程
    public List<Course> getSelectCourseAll(String phone) {
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
    //查询加入的所有课程中归档的课程
    public List<Course> getSelectCourseFileAll(String phone) {
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
    //老师根据课程ID删除自己创建的课程
    public boolean deleteCreateCourse(String courseId) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("delete from course where id='"+courseId+"'");
        DBConn.addUpdDel("delete from selectcourse where courseId='"+courseId+"'");
        DBConn.addUpdDel("delete from message where taskId in (select id from task where courseId='"+courseId+"')");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //老师根据课程ID删除自己选修的课程Add
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
    //根据课程Id修自己创建的课程内容
    public boolean updateCreateCourse(String id,String name,String grade,String schoolYear,String semester) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("update course set name='"+name+"' , grade='"+grade+"' , schoolYear='"+schoolYear+"' , semester='"+semester+"' where id='"+id+"'");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据课程Id在选课表中查询又多少人选修该课程
    public int selectCourseId(String courseId) {
        int flag=0;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select * from selectcourse where courseId='"+courseId+"'");
            while (rs.next()){
                if (rs.getString("courseId").equals(courseId)){
                    flag=flag+1;
                }
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //老师根据课程Id归档自己(修改课程表中file值为2)
    public boolean updateCreateCourseFile(String courseId) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("update course set file='"+2+"' where id='"+courseId+"'");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //老师根据课程Id归档全部(修改课程表与选课表中file值为2)
    public boolean updateCreateCourseFileAll(String courseId) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("update course set file='"+2+"' where id='"+courseId+"'");
        int j=DBConn.addUpdDel("update selectcourse set file='"+2+"' where courseId='"+courseId+"'");
        if (i>0&&j>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据选课Id归档选课
    public boolean updateAddCourseFile(String courseId) {
        boolean flag=false;
        DBConn.init();
        int j=DBConn.addUpdDel("update selectcourse set file='"+2+"' where id='"+courseId+"'");
        if (j>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //老师根据课程Id恢复所有归档课程
    public boolean updateCreateCourseRecoverFile(String courseId) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("update course set file='"+1+"' where id='"+courseId+"'");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //老师根据课程Id恢复加入课程中的归档课程
    public boolean updateAddCourseRecoverFile(String courseId) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("update selectcourse set file='"+1+"' where id='"+courseId+"'");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据课程Id查询课程
    public List<Course> getSelectCourse(String courseId) {
        List<Course> courseList = new ArrayList<Course>();
        try {
            DBConn.init();
            ResultSet rs = DBConn.selectSql("select * from course where id='"+courseId+"'");
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
    //根据phone在课程表中查询该老师创建了多少门课程
    public int selectCourseNum(String phone) {
        int flag=0;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select * from course where teacherPhone='"+phone+"'");
            while (rs.next()){
                flag=flag+1;
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //根据用户手机号查询课程表中所有由此手机号创建得课程
    public List<Course> courseAll(String phone) {
        List<Course> courseList = new ArrayList<Course>();
        try {
            DBConn.init();
            ResultSet rs = DBConn.selectSql("select * from course where teacherPhone='"+phone+"'");
            while (rs.next()) {
                Course course = new Course();
                course.setImg(rs.getString("img"));
                course.setId(rs.getString("id"));
                course.setName(rs.getString("name"));
                course.setGrade(rs.getString("grade"));
                course.setSchoolYear(rs.getString("schoolYear"));
                course.setSemester(rs.getString("semester"));
                course.setTeacherPhone(rs.getString("teacherPhone"));
                courseList.add(course);
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return courseList;
    }
    //根据用户手机号查询选课表中所有此手机号加入的课程
    public List<Course> selectCourseAll(String phone) {
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
    //根据phone在课程表中查询该老师创建了多少门课程
    public int getSelectCourseNum(String phone) {
        int flag=0;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select * from selectcourse where userPhone='"+phone+"'");
            while (rs.next()){
                flag=flag+1;
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //根据课程ID查询选课表中选修这门课的学生信息
    public List<User> selectStuAll(String courseId) {
        List<User> userList = new ArrayList<User>();
        try {
            DBConn.init();
            ResultSet rs = DBConn.selectSql("select userPhone from selectcourse where courseId='"+courseId+"'");
            while (rs.next()) {
                User user=new User();
                user.setPhone(rs.getString("userPhone"));
                userList.add(user);
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
    //根据课程id查询课程名字
    public String selectCourseName(String courseId) {
        String flag=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select name from course where id='"+courseId+"'");
            while (rs.next()){
                flag=rs.getString("name");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //查询最近创建的作业Id
    public String selectTaskId(String courseId) {
        String taskId=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select max(id) as taskId from task where courseId='"+courseId+"'");
            while (rs.next()){
                taskId=rs.getString("taskId");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return taskId;
    }


}
