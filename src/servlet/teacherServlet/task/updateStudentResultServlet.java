package servlet.teacherServlet.task;

import dao.ResultDao;
import dao.ResultDaoImp;
import dao.teacherDao.TeacherCourse;
import dao.teacherDao.TeacherCourseImp;
import javafx.application.Application;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class updateStudentResultServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String resultId=req.getParameter("resultId");
        String studentGrades=req.getParameter("studentGrades");
        String taskId=req.getParameter("taskId");
        ResultDao resultDao=new ResultDaoImp();
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        if (resultDao.updateStudentResult(resultId,studentGrades)){
            /*out.print("<script type='text/javascript'>");
            out.print("location.href='/jsp/teacherLogin/teacherCheckTask.jsp';");
            out.print("</script>");*/
            //ServletContext application=this.getServletContext();
            //RequestDispatcher rd=application.getNamedDispatcher("/jsp/teacherLogin/teacherCheckTask.jsp");
            //resp.sendRedirect("/jsp/teacherLogin/teacherCheckTask.jsp");
            //req.getRequestDispatcher("/jsp/teacherLogin/teacherCheckTask.jsp").forward(req,resp);
            resp.sendRedirect("/jsp/teacherLogin/teacherCheckTask.jsp?selectCourseId="+taskId);
        }else{
            out.print("<script type='text/javascript'>alert('修改失败');");
            out.print("location.href='/jsp/teacherLogin/teacherCheckTask.jsp';");
            out.print("</script>");
        }
        out.close();
    }
}
