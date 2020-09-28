package servlet.studentServlet;

import dao.studentDao.StudentCourseDao;
import dao.studentDao.studentCourseDaoImp;
import dao.teacherDao.TeacherCourse;
import dao.teacherDao.TeacherCourseImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class recoverFileCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String courseId=req.getParameter("courseId");
        StudentCourseDao studentCourseDao=new studentCourseDaoImp();
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        if (studentCourseDao.recoveryRecoverFile(courseId)){
            out.print("<script type='text/javascript'>");
            out.print("location.href='/jsp/studentLogin/studentLoginHone.jsp';");
            out.print("</script>");
        }else{
            out.print("<script type='text/javascript'>alert('恢复归档课程失败');");
            out.print("location.href='/jsp/studentLogin/studentLoginHone.jsp';");
            out.print("</script>");
        }
    }
}
