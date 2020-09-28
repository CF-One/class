package servlet.teacherServlet;

import dao.teacherDao.TeacherCourse;
import dao.teacherDao.TeacherCourseImp;
import entity.Course;
import entity.SelectCourse;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class teacherAddCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取jsp页面传过来的参数
        String addCourseId = request.getParameter("addCourseId");
        String userPhone = request.getParameter("userPhone");
        String id=addCourseId+userPhone;
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        //实例化接口
        TeacherCourse teacherCourse=new TeacherCourseImp();
        String teacherPhone=teacherCourse.queryCourseTeacherPhone(addCourseId);
        //实例化一个对象，组装属性
        SelectCourse selectCourse=new SelectCourse();
        selectCourse.setId(id);
        selectCourse.setCourseId(addCourseId);
        selectCourse.setTeacherPhone(teacherPhone);
        selectCourse.setUserPhone(userPhone);
        selectCourse.setFile("1");
        if (teacherPhone==null){
            out.print("<script type='text/javascript'>alert('课程号不存在');");
            out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
            out.print("</script>");
        }else if (teacherPhone.equals(userPhone)){
            out.print("<script type='text/javascript'>alert('暂不支持加入自己的课程');");
            out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
            out.print("</script>");
        }else{
            if (teacherCourse.createSelectCourse(selectCourse)){
                out.print("<script type='text/javascript'>");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }else {
                out.print("<script type='text/javascript'>alert('加入课程失败');");
                out.print("location.href='/jsp/teacherLogin/teacherLoginOne.jsp';");
                out.print("</script>");
            }
        }
        out.close();
    }
}
