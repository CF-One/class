package servlet.teacherServlet.task;

import dao.ResultDao;
import dao.ResultDaoImp;
import dao.studentDao.StudentCourseDao;
import dao.studentDao.studentCourseDaoImp;
import dao.teacherDao.TeacherCourse;
import dao.teacherDao.TeacherCourseImp;
import dao.teacherDao.TeacherTaskDao;
import dao.teacherDao.TeacherTaskDaoImp;
import entity.Course;
import entity.StuResult;
import entity.Task;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class teacherCreateCourseTaskServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取jsp页面传过来的参数
        String createTaskName = request.getParameter("createTaskName");
        String createTaskSummary = request.getParameter("createTaskSummary");
        String createTaskOverDate = request.getParameter("createTaskOverDate");
        String createTaskFullScore = request.getParameter("createTaskFullScore");
        String createTaskCheck = request.getParameter("createTaskCheck");
        String courseId = request.getParameter("courseId");
        String systemDate = request.getParameter("systemDate").trim();
        String num = request.getParameter("num");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        //实例化一个对象，组装属性
        Task task=new Task();
        task.setId(11);
        task.setName(createTaskName);
        task.setSummary(createTaskSummary);
        task.setOverDate(createTaskOverDate);
        task.setFullScore(createTaskFullScore);
        task.setCheck(createTaskCheck);
        task.setCourseId(courseId);
        task.setCreateDate(systemDate);
        PrintWriter out = response.getWriter();
        //实例化接口
        TeacherTaskDao teacherTaskDao=new TeacherTaskDaoImp();
        if (teacherTaskDao.createCourseTask(task)){
            /*if (userList.size()>0){
                for (int i=0;i<userList.size();i++){
                    User user=userList.get(i);
                    StuResult stuResult=new StuResult();
                    stuResult.setCourseId(courseId);
                    stuResult.setTaskId(Integer.parseInt(taskId));
                    stuResult.setStudentId(user.getId());
                    stuResult.setStudentName(studentCourseDao.selectStudentName(user.getPhone()));
                    resultDao.insertResult(stuResult);
                    System.out.println(taskId);
                }
            }*/
            out.print("<script type='text/javascript'>alert('发布作业成功');");
            out.print("location.href='/servlet/teacherServlet/task/teacherAddResultServlet?courseId="+courseId+"&num="+num+"';");
            out.print("</script>");
            /*if (num==null){
                out.print("<script type='text/javascript'>alert('发布作业成功');");
                out.print("location.href='/servlet/teacherServlet/task/teacherAddResultServlet';");
                out.print("</script>");
            }else {
                out.print("<script type='text/javascript'>alert('发布作业成功');");
                out.print("location.href='/servlet/teacherServlet/task/teacherAddResultServlet?courseId="+courseId+"';");
                out.print("</script>");
            }*/
        }else{
            if (num==null){
                out.print("<script type='text/javascript'>alert('发布作业失败');");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }else{
                out.print("<script type='text/javascript'>alert('发布作业失败');");
                out.print("location.href='/jsp/teacherLogin/teacherCourseDetail.jsp?courseId="+courseId+"';");
                out.print("</script>");
            }
        }
        out.close();
    }
}
