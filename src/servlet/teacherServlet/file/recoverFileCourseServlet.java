package servlet.teacherServlet.file;

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
        String recovery=req.getParameter("recovery");
        TeacherCourse teacherCourse=new TeacherCourseImp();
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        if (recovery.equals("5")){
            if (teacherCourse.updateCreateCourseRecoverFile(courseId)){
                out.print("<script type='text/javascript'>");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }else{
                out.print("<script type='text/javascript'>");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }
        }else if (recovery.equals("6")){
            if (teacherCourse.updateAddCourseRecoverFile(courseId)){
                out.print("<script type='text/javascript'>");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }else{
                out.print("<script type='text/javascript'>");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }
        }else{
            System.out.println("恢复失败");
        }
        out.close();
    }
}
