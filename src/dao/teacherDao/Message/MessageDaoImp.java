package dao.teacherDao.Message;

import entity.Course;
import entity.Message;
import entity.StuResult;
import util.DBConn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MessageDaoImp implements MessageDao{
    //在消息表中插入记录
    public boolean insertMessage(Message message) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("insert into message(id,taskId,studentId,resultId,systemDate)"+
                "values( '"+message.getId()+"','"+message.getTaskId()+"','"+message.getStudentId()+"','"+message.getResultId()+"','"+message.getSystemDate()+"')");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据学生Id查询所有给他的消息记录
    public List<Message> getCallMessageAll(String studentId) {
        List<Message> messages = new ArrayList<Message>();
        try {
            DBConn.init();
            ResultSet rs = DBConn.selectSql("select * from message where studentId='"+studentId+"' order by id desc");
            while (rs.next()) {
                Message message=new Message();
                message.setSystemDate(rs.getString("systemDate"));
                message.setId(Integer.parseInt(rs.getString("id")));
                message.setResultId(rs.getString("resultId"));
                message.setStudentId(rs.getString("studentId"));
                messages.add(message);
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return messages;
    }
    //根据学生ID查询他的消息数量
    public String selectMessageNum(String studentId) {
        String flag=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select count(id) as messageNum from message where studentId='"+studentId+"'");
            while (rs.next()){
                flag=rs.getString("messageNum");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

}
