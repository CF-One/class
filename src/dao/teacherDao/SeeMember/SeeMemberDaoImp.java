package dao.teacherDao.SeeMember;

import entity.User;
import util.DBConn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SeeMemberDaoImp implements SeeMemberDao {
    //查询课程id查询所有选修了该课程的学生信息
    public List<User> getSelectUser(String courseId) {
        List<User> userList = new ArrayList<User>();
        try {
            DBConn.init();
            ResultSet rs = DBConn.selectSql("select * from student,selectcourse where student.phone=selectcourse.userPhone and selectcourse.courseId='"+courseId+"' ");
            while (rs.next()) {
                User user=new User();
                user.setId(rs.getString("student.id"));
                user.setName(rs.getString("name"));
                user.setPhone(rs.getString("phone"));
                user.setSchool(rs.getString("school"));
                user.setSystemDate(rs.getString("selectcourse.systemDate"));
                user.setImg(rs.getString("img"));
                userList.add(user);
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
    //查询课程id查询所有选修了该课程的老师信息
    public List<User> getSelectUserTeacher(String courseId) {
        List<User> userList = new ArrayList<User>();
        try {
            DBConn.init();
            ResultSet rs = DBConn.selectSql("select * from teacher,selectcourse where teacher.phone=selectcourse.userPhone and selectcourse.courseId='"+courseId+"' ");
            while (rs.next()) {
                User user=new User();
                user.setName(rs.getString("name"));
                user.setPhone(rs.getString("phone"));
                user.setSchool(rs.getString("school"));
                user.setSystemDate(rs.getString("selectcourse.systemDate"));
                user.setImg(rs.getString("img"));
                userList.add(user);
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
    //根据phone查询该老师的头像
    public String selectTeacherImg(String phone) {
        String img=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select img from teacher where phone='"+phone+"'");
            while (rs.next()){
                img=rs.getString("img");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return img;
    }
}
