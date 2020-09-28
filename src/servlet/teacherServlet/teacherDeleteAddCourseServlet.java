package servlet.teacherServlet;

import dao.UserTeacherDao;
import dao.UserTeacherDaoImpl;
import dao.teacherDao.TeacherCourse;
import dao.teacherDao.TeacherCourseImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class teacherDeleteAddCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取jsp页面传过来的参数
        String phone = request.getParameter("phone");
        String passWord = request.getParameter("passWord");
        String courseId = request.getParameter("courseId");
        String id=courseId+phone;
        System.out.println("选课id"+id);
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        //实例化对象
        UserTeacherDao userTeacherDao=new UserTeacherDaoImpl();
        TeacherCourse teacherCourse=new TeacherCourseImp();
        PrintWriter out = response.getWriter();
        if (userTeacherDao.login(phone,passWord)){
            if (teacherCourse.deleteAddCourse(id)){
                out.print("<script type='text/javascript'>");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }else{
                out.print("<script type='text/javascript'>alert('删除失败');");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }
        }else {
            out.print("<script type='text/javascript'>alert('密码错误');");
            out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
            out.print("</script>");
        }
    }
}
