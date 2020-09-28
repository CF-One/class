package servlet.teacherServlet;

import dao.UserDao;
import dao.UserDaoImpl;
import dao.UserTeacherDao;
import dao.UserTeacherDaoImpl;
import dao.teacherDao.TeacherCourse;
import dao.teacherDao.TeacherCourseImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class updateCreateCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String courseName=req.getParameter("courseName");
        String grade=req.getParameter("grade");
        String schoolYear=req.getParameter("schoolYear");
        String semester=req.getParameter("semester");
        String courseId=req.getParameter("courseId");
        TeacherCourse teacherCourse=new TeacherCourseImp();
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        if (teacherCourse.updateCreateCourse(courseId,courseName,grade,schoolYear,semester)){
            out.print("<script type='text/javascript'>");
            out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
            out.print("</script>");
        }else{
            out.print("<script type='text/javascript'>alert('修改失败');");
            out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
            out.print("</script>");
        }
        out.close();
    }
}
