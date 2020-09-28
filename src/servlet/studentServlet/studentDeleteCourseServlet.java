package servlet.studentServlet;

import dao.*;
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

public class studentDeleteCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取jsp页面传过来的参数
        String phone = request.getParameter("phone");
        String passWord = request.getParameter("passWord");
        String selectCourseId = request.getParameter("courseId");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        //实例化对象
        UserDao userDao=new UserDaoImpl();
        ResultDao resultDao=new ResultDaoImp();
        StudentCourseDao studentCourseDao=new studentCourseDaoImp();
        String courseId=studentCourseDao.selectCourseId(selectCourseId);
        String stuId=studentCourseDao.selectStudentId(phone);
        PrintWriter out = response.getWriter();
        if (userDao.login(phone,passWord)){
            if (studentCourseDao.deleteAddCourse(selectCourseId)){
                resultDao.deleteResult(stuId,courseId);
                out.print("<script type='text/javascript'>");
            }else{
                out.print("<script type='text/javascript'>alert('删除失败');");
            }
        }else {
            out.print("<script type='text/javascript'>alert('密码错误');");
        }
        out.print("location.href='/jsp/studentLogin/studentLoginHone.jsp';");
        out.print("</script>");
    }
}
