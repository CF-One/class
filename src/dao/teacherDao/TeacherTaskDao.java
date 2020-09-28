package dao.teacherDao;

import entity.Task;

import java.util.List;

public interface TeacherTaskDao {
    //老师添加作业
    public boolean createCourseTask(Task task);
    //根据课程id查询该课程所有作业
    public List<Task> getCourseTaskAll(String courseId);
    //根据课程Id在作业中查询发布多少次作业
    public int selectTaskNum(String courseId);
    //老师根据课程ID删除作业
    public boolean deleteCourseTask(String courseId);
    //根据作业id查询作业名称
    public String selectTaskName(String taskId);
    //根据作业id查询课程Id
    public String selectCourseId(String taskId);
    //根据作业id查询截止日期
    public String selectTaskOverDate(String taskId);
}
