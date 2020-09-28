package servlet.studentServlet;

import dao.ResultDao;
import dao.ResultDaoImp;
import dao.studentDao.StudentCourseDao;
import dao.studentDao.studentCourseDaoImp;
import dao.teacherDao.TeacherCourse;
import dao.teacherDao.TeacherCourseImp;
import dao.teacherDao.TeacherTaskDao;
import dao.teacherDao.TeacherTaskDaoImp;
import entity.SelectCourse;
import entity.StuResult;
import entity.Task;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class studentAddCourseServlet extends HttpServlet {
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
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        //实例化接口
        TeacherCourse teacherCourse=new TeacherCourseImp();
        String teacherPhone=teacherCourse.queryCourseTeacherPhone(addCourseId);
        StudentCourseDao studentCourseDao=new studentCourseDaoImp();
        String name=studentCourseDao.selectStudentName(userPhone);
        String userId=studentCourseDao.selectStudentId(userPhone);
        //实例化一个对象，组装属性
        SelectCourse selectCourse=new SelectCourse();
        selectCourse.setId(id);
        selectCourse.setCourseId(addCourseId);
        selectCourse.setTeacherPhone(teacherPhone);
        selectCourse.setUserPhone(userPhone);
        selectCourse.setFile("1");
        selectCourse.setSystemDate(df.format(new Date()));
        //根据课程ID在选课表中查询该课程有布置过多少作业
        TeacherTaskDao teacherTaskDao=new TeacherTaskDaoImp();
        List<Task> taskList=teacherTaskDao.getCourseTaskAll(addCourseId);
        ResultDao resultDao=new ResultDaoImp();
        if (teacherPhone==null){
            out.print("<script type='text/javascript'>alert('课程号不存在');");
            out.print("location.href='/jsp/studentLogin/studentLoginHone.jsp';");
            out.print("</script>");
        }else{
            if (studentCourseDao.studentCreateSelectCourse(selectCourse)){
                if (taskList.size()>0){
                    for (int i=0;i<taskList.size();i++){
                        Task task=taskList.get(i);
                        //插入作业记录
                        StuResult stuResult=new StuResult();
                        stuResult.setCourseId(addCourseId);
                        stuResult.setTaskId(task.getId());
                        stuResult.setStudentId(userId);
                        stuResult.setStudentResult("未批");
                        stuResult.setStudentName(name);
                        resultDao.insertResult(stuResult);
                    }
                }
                out.print("<script type='text/javascript'>");
            }else {
                out.print("<script type='text/javascript'>alert('加入课程失败');");
            }
            out.print("location.href='/jsp/studentLogin/studentLoginHone.jsp';");
            out.print("</script>");
        }
        out.close();
    }
}
