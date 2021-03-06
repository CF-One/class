package dao;

import entity.User;
import util.DBConn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserTeacherDaoImpl implements UserTeacherDao {
    //教师用户登录
    @Override
    public boolean login(String phone, String pwd) {
        boolean flag=false;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select * from teacher where phone='"+phone+"' and password='"+pwd+"'");
            while (rs.next()){
                if (rs.getString("phone").equals(phone)&&rs.getString("password").equals(pwd)){
                    flag=true;
                }else {
                    flag=false;
                }
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //教师用户注册
    @Override
    public boolean register(User user) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("insert into teacher(name,phone,password,school,img)"+
                "values( '"+user.getName()+"','"+user.getPhone()+"','"+user.getPassWord()+"','"+user.getSchool()+"','"+user.getImg()+"')");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //返回所有用户信息
    @Override
    public List<User> getUserAll() {
        return null;
    }
    //通过phone查询用户手机号是否存在
    public boolean queryOneUserPhone(String phone){
        boolean flag=false;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select * from teacher where phone='"+phone+"'");
            while (rs.next()){
                flag=true;
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }
    //根据用户手机号查询姓名和学校
    public boolean queryNameSchool(String phone, String name,String school) {
        boolean flag=false;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select * from teacher where phone='"+phone+"'");
            while (rs.next()){
                if (rs.getString("phone").equals(phone)&&rs.getString("name").equals(name)&&rs.getString("school").equals(school)){
                    flag=true;
                }else {
                    flag=false;
                }
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //根据手机号修改密码
    public boolean updatePassWord(String phone,String pwd) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("update teacher set password='"+pwd+"' where phone='"+phone+"'");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据用户手机号查询姓名
    public String queryName(String phone) {
        String name = "暂无";
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select * from teacher where phone='"+phone+"'");
            while (rs.next()){
                name=rs.getString("name");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return name;
    }
}
