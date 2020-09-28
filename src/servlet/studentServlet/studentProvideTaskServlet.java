package servlet.studentServlet;

import dao.ResultDao;
import dao.ResultDaoImp;
import dao.studentDao.StudentCourseDao;
import dao.studentDao.studentCourseDaoImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class studentProvideTaskServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String studentId=req.getParameter("studentId");
        String taskId=req.getParameter("taskId");
        String taskContent=req.getParameter("taskContent");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        ResultDao resultDao=new ResultDaoImp();
        if (resultDao.updateStudentResultContent(taskId,studentId,taskContent,df.format(new Date()))){
            out.print("<script type='text/javascript'>alert('提交成功');");
            out.print("location.href='/jsp/studentLogin/studentProvideTask.jsp?studentId="+studentId+"&taskId="+taskId+"';");
            out.print("</script>");
        }else{
            out.print("<script type='text/javascript'alert('提交失败');>");
            out.print("location.href='/jsp/studentLogin/studentProvideTask.jsp?studentId="+studentId+"&taskId="+taskId+"';");
            out.print("</script>");
        }

        out.close();
    }
}
