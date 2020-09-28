package servlet.teacherServlet;

import dao.teacherDao.TeacherCourse;
import dao.teacherDao.TeacherCourseImp;
import entity.Course;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class teacherCreateCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取jsp页面传过来的参数
        String courseName = request.getParameter("courseName");
        String teacherPhone = request.getParameter("teacherPhone");
        String grade = request.getParameter("grade");
        String schoolYear = request.getParameter("schoolYear");
        String semester = request.getParameter("semester");
        String courseId = request.getParameter("courseId");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String random = null;
        String[] doc = {"03", "27", "36", "37","38","02", "07", "12", "29","31"};
        int index = (int) (Math.random() * doc.length);
        random = doc[index];
        //实例化一个对象，组装属性
        Course course=new Course();
        course.setImg(random);
        course.setName(courseName);
        course.setTeacherPhone(teacherPhone);
        course.setGrade(grade);
        course.setSchoolYear(schoolYear);
        course.setSemester(semester);
        course.setId(courseId);
        course.setFile("1");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        //实例化接口
        TeacherCourse teacherCourse=new TeacherCourseImp();
        if (teacherCourse.addCourse(course)){
            out.print("<script type='text/javascript'>");
            out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
            out.print("</script>");
        }else{
            out.print("<script type='text/javascript'>alert('添加课程失败');");
            out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
            out.print("</script>");
        }
        out.close();
    }
}
