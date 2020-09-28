package dao.teacherDao;

import entity.Course;
import entity.Task;
import util.DBConn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TeacherTaskDaoImp implements TeacherTaskDao{
    //老师添加作业
    public boolean createCourseTask(Task task) {
        boolean flag=false;
        DBConn.init();
       int i=DBConn.addUpdDel("insert into task(name,summary,overDate,fullScore,checkTask,courseId,createDate)"+
               "values('"+task.getName()+"','"+task.getSummary()+"','"+task.getOverDate()+"','"+task.getFullScore()+"','"+task.getCheck()+"','"+task.getCourseId()+"','"+task.getCreateDate()+"')");
       if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据课程id查询该课程所有作业
    public List<Task> getCourseTaskAll(String courseId) {
        List<Task> taskList = new ArrayList<Task>();
        try {
            DBConn.init();
            ResultSet rs = DBConn.selectSql("select * from task where courseId='"+courseId+"' order by id desc");
            while (rs.next()) {
                Task task=new Task();
                task.setId(Integer.parseInt(rs.getString("id")));
                task.setName(rs.getString("name"));
                task.setSummary(rs.getString("summary"));
                task.setOverDate(rs.getString("overDate"));
                task.setFullScore(rs.getString("fullScore"));
                task.setCheck(rs.getString("checkTask"));
                task.setCourseId(rs.getString("courseId"));
                task.setCreateDate(rs.getString("createDate"));
                taskList.add(task);
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return taskList;
    }
    //根据课程Id在作业中查询发布多少次作业
    public int selectTaskNum(String courseId) {
        int flag=0;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select id from task where courseId='"+courseId+"'");
            while (rs.next()){
                    flag=flag+1;
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //老师根据课程ID删除作业
    public boolean deleteCourseTask(String courseId) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("delete from task where courseId='"+courseId+"'");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据作业id查询作业名称
    public String selectTaskName(String taskId) {
        String flag=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select name from task where id='"+taskId+"'");
            while (rs.next()){
                flag=rs.getString("name");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //根据作业id查询课程Id
    public String selectCourseId(String taskId) {
        String flag=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select courseId from task where id='"+taskId+"'");
            while (rs.next()){
                flag=rs.getString("courseId");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //根据作业id查询截止日期
    public String selectTaskOverDate(String taskId) {
        String flag=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select overDate from task where id='"+taskId+"'");
            while (rs.next()){
                flag=rs.getString("overDate");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
}
