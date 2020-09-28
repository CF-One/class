package dao.teacherDao.SeeMember;

import entity.User;

import java.util.ArrayList;
import java.util.List;

public interface SeeMemberDao {
    //查询课程id查询所有选修了该课程的成员信息
    public List<User> getSelectUser(String courseId);
    //根据phone查询该老师的头像
    public String selectTeacherImg(String courseId);
    //查询课程id查询所有选修了该课程的老师信息
    public List<User> getSelectUserTeacher(String courseId);
}
