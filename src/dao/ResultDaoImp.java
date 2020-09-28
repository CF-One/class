package dao;

import entity.StuResult;
import entity.Task;
import util.DBConn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ResultDaoImp implements ResultDao {
    //在成绩表中插入记录
    public boolean insertResult(StuResult result) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("insert into result(courseId,taskId,studentId,studentResult,callNum,wordNum,studentName,taskContent,exNum,provideDate)"+
                "values( '"+result.getCourseId()+"','"+result.getTaskId()+"','"+result.getStudentId()+"','"+result.getStudentResult()+"','"+result.getCallNum()+"','"+result.getWordNum()+"','"+result.getStudentName()+"','"+result.getTaskContent()+"','"+result.getExNum()+"','"+result.getProvideDate()+"')");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据课程ID和学生Id删除成绩表中记录
    public boolean deleteResult(String stuId,String courseId){
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("delete from result where studentId='"+stuId+"' and courseId='"+courseId+"'");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据课程ID删除成绩表中记录
    public boolean deleteTeacherResult(String courseId){
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("delete from result where courseId='"+courseId+"'");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据课程在result表中查询该课程所有记录
    public List<StuResult> getStuResultAll(String taskId) {
        List<StuResult> stuResults = new ArrayList<StuResult>();
        try {
            DBConn.init();
            ResultSet rs = DBConn.selectSql("select * from result where taskId='"+taskId+"'");
            while (rs.next()) {
                StuResult stuResult=new StuResult();
                stuResult.setId(Integer.parseInt(rs.getString("id")));
                stuResult.setCourseId(rs.getString("courseId"));
                stuResult.setTaskId(Integer.parseInt(rs.getString("taskId")));
                stuResult.setStudentId(rs.getString("studentId"));
                stuResult.setStudentResult(rs.getString("studentResult"));
                stuResult.setCallNum(Integer.parseInt(rs.getString("callNum")));
                stuResult.setWordNum(rs.getString("wordNum"));
                stuResult.setStudentName(rs.getString("studentName"));
                stuResult.setTaskContent(rs.getString("taskContent"));
                stuResult.setExNum(Integer.parseInt(rs.getString("exNum")));
                stuResult.setProvideDate(rs.getString("provideDate"));
                stuResults.add(stuResult);
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return stuResults;
    }
    //老师根据成绩id修改成绩
    public boolean updateStudentResult(String resultId,String studentResult) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("update result set studentResult='"+studentResult+"',callNum=callNum+1 where id='"+resultId+"'");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //老师根据成绩id修改催交
    public boolean updateExNum(String resultId) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("update result set exNum=exNum+1 where id='"+resultId+"'");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据成绩id查询学生名字
    public String selectStudentName(String resultId) {
        String flag=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select studentName from result where id='"+resultId+"'");
            while (rs.next()){
                flag=rs.getString("studentName");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //根据成绩id查询学生成绩
    public String selectStudentGrade(String resultId) {
        String flag=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select studentResult from result where id='"+resultId+"'");
            while (rs.next()){
                flag=rs.getString("studentResult");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //根据成绩id查询作业id
    public String selectTaskId(String resultId) {
        String flag=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select taskId from result where id='"+resultId+"'");
            while (rs.next()){
                flag=rs.getString("taskId");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //根据成绩id查询作业内容
    public String selectTaskContent(String resultId) {
        String flag=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select taskContent from result where id='"+resultId+"'");
            while (rs.next()){
                flag=rs.getString("taskContent");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //根据成绩id查询未批数量
    public String selectTaskNoChangeNum(int taskId) {
        String flag=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select count(id) as changeNum from result where taskId='"+taskId+"' and studentResult='未批'");
            while (rs.next()){
                flag=rs.getString("changeNum");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //根据成绩id查询未交数量
    public String selectTaskNoProvide(int taskId) {
        String flag=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select count(id) as changeNum from result where taskId='"+taskId+"' and taskContent='null'");
            while (rs.next()){
                flag=rs.getString("changeNum");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //根据成绩id查询已批数量
    public String selectTaskChangeNum(int taskId) {
        String flag=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select count(id) as changeNum from result where taskId='"+taskId+"' and studentResult!='未批'");
            while (rs.next()){
                flag=rs.getString("changeNum");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    //学生根据taskId和studentId修改作业
    public boolean updateStudentResultContent(String taskId,String studentId,String taskContent,String provideDate) {
        boolean flag=false;
        DBConn.init();
        int i=DBConn.addUpdDel("update result set taskContent='"+taskContent+"',provideDate='"+provideDate+"' where taskId='"+taskId+"' and studentId='"+studentId+"'");
        if (i>0){
            flag=true;
        }
        DBConn.closeConn();
        return flag;
    }
    //根据taskId和studentId查询作业内容
    public String selectTaskContent(String taskId,String studentId) {
        String flag=null;
        try {
            DBConn.init();
            ResultSet rs=DBConn.selectSql("select taskContent from result where taskId='"+taskId+"' and studentId='"+studentId+"'");
            while (rs.next()){
                flag=rs.getString("taskContent");
            }
            DBConn.closeConn();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
}
