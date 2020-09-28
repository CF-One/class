package dao;

import entity.User;

import java.util.List;

public interface UserTeacherDao {
    //用户登录
    public boolean login(String phone, String pwd);
    //用户注册
    public boolean register(User user);
    //返回用户信息集合
    public List<User> getUserAll();
    //通过phone查询用户手机号是否存在
    public boolean queryOneUserPhone(String phone);
    //根据用户手机号查询姓名和学校
    public boolean queryNameSchool(String phone, String name,String school);
    //根据手机号修改密码
    public boolean updatePassWord(String phone,String pwd);
    //根据用户手机号查询姓名
    public String queryName(String phone);
}
