package dao;

import entity.StuResult;

import java.util.List;

public interface ResultDao {
    //在成绩表中插入记录
    public boolean insertResult(StuResult result);
    //根据课程ID和学生Id删除成绩表中记录
    public boolean deleteResult(String stuId,String courseId);
    //根据课程ID删除成绩表中记录
    public boolean deleteTeacherResult(String courseId);
    //根据作业id在result表中查询该课程所有记录
    public List<StuResult> getStuResultAll(String taskId);
    //老师根据成绩id修改成绩
    public boolean updateStudentResult(String resultId,String studentResult);
    //老师根据成绩id修改催交
    public boolean updateExNum(String resultId);
    //根据作业id查询学生名字
    public String selectStudentName(String resultId);
    //根据作业id查询学生成绩
    public String selectStudentGrade(String resultId);
    //根据成绩id查询作业id
    public String selectTaskId(String resultId);
    //根据成绩id查询作业内容
    public String selectTaskContent(String resultId);
    //根据成绩id,和批改状态查询未批数量
    public String selectTaskNoChangeNum(int taskId);
    //根据成绩id查询未交数量
    public String selectTaskNoProvide(int taskId);
    //根据成绩id查询已批数量
    public String selectTaskChangeNum(int taskId);
    //学生根据taskId和studentId修改作业
    public boolean updateStudentResultContent(String resultId,String studentId,String taskContent,String provideDate);
    //根据taskId和studentId查询作业内容
    public String selectTaskContent(String taskId,String studentId);
}

