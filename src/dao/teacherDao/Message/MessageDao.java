package dao.teacherDao.Message;

import entity.Message;

import java.util.List;

public interface MessageDao {
    //在消息表中插入记录
    public boolean insertMessage(Message message);
    //根据学生Id查询所有给他的消息记录
    public List<Message> getCallMessageAll(String studentId);
    //根据学生ID查询他的消息数量
    public String selectMessageNum(String studentId);
}
