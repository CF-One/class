package servlet.teacherServlet.file;

import dao.teacherDao.TeacherCourse;
import dao.teacherDao.TeacherCourseImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class fileOwnCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String courseId=req.getParameter("courseId");
        String fileDifference=req.getParameter("fileDifference");
        TeacherCourse teacherCourse=new TeacherCourseImp();
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        if (fileDifference.equals("3")){//归档自己
            if (teacherCourse.updateCreateCourseFile(courseId)){
                out.print("<script type='text/javascript'>");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }else{
                out.print("<script type='text/javascript'>");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }
        }else if (fileDifference.equals("4")){//归档全部
            if (teacherCourse.updateCreateCourseFileAll(courseId)){
                out.print("<script type='text/javascript'>");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }else{
                out.print("<script type='text/javascript'>");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }
        }else if (fileDifference.equals("5")){//归档加入的课程
            if (teacherCourse.updateAddCourseFile(courseId)){
                out.print("<script type='text/javascript'>");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }else{
                out.print("<script type='text/javascript'>");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }

        }else{
            System.out.println("归档失败");
        }

        out.close();
    }
}
