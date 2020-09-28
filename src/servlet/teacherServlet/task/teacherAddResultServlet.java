package servlet.teacherServlet.task;

import dao.ResultDao;
import dao.ResultDaoImp;
import dao.studentDao.StudentCourseDao;
import dao.studentDao.studentCourseDaoImp;
import dao.teacherDao.TeacherCourse;
import dao.teacherDao.TeacherCourseImp;
import entity.SelectCourse;
import entity.StuResult;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class teacherAddResultServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String courseId=request.getParameter("courseId");
        String num=request.getParameter("num");
        TeacherCourse teacherCourse=new TeacherCourseImp();
        String taskId=teacherCourse.selectTaskId(courseId);//获取作业id
        ResultDao resultDao=new ResultDaoImp();
        StudentCourseDao studentCourseDao=new studentCourseDaoImp();
        List<User> userList=teacherCourse.selectStuAll(courseId);
        PrintWriter out = response.getWriter();
        if (userList.size()>0) {
            for (int i = 0; i < userList.size(); i++) {
                User user = userList.get(i);
                StuResult stuResult = new StuResult();
                stuResult.setCourseId(courseId);
                stuResult.setTaskId(Integer.parseInt(taskId));
                stuResult.setStudentId(studentCourseDao.selectStudentId(user.getPhone()));
                stuResult.setStudentResult("未批");
                stuResult.setStudentName(studentCourseDao.selectStudentName(user.getPhone()));
                resultDao.insertResult(stuResult);
            }

        }
        if (num.equals("null")){
            out.print("<script type='text/javascript'>");
            out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
            out.print("</script>");
        }else {
            out.print("<script type='text/javascript'>");
            out.print("location.href='/jsp/teacherLogin/teacherCourseDetail.jsp?courseId="+courseId+"';");
            out.print("</script>");
        }
        out.close();
    }
}
