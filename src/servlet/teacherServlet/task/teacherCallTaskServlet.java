package servlet.teacherServlet.task;

import dao.ResultDao;
import dao.ResultDaoImp;
import dao.studentDao.StudentCourseDao;
import dao.studentDao.studentCourseDaoImp;
import dao.teacherDao.Message.MessageDao;
import dao.teacherDao.Message.MessageDaoImp;
import entity.Message;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class teacherCallTaskServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String callTaskId=req.getParameter("callTaskId");
        String callResultId=req.getParameter("callResultId");
        String callStudentId=req.getParameter("callStudentId");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        ResultDao resultDao=new ResultDaoImp();
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        if (resultDao.updateExNum(callResultId)){
            MessageDao messageDao=new MessageDaoImp();
            Message message=new Message();
            message.setTaskId(callTaskId);
            message.setStudentId(callStudentId);
            message.setResultId(callResultId);
            message.setSystemDate(df.format(new Date()));
            messageDao.insertMessage(message);
            resp.sendRedirect("/jsp/teacherLogin/teacherCheckTask.jsp?selectCourseId="+callTaskId);
        }else{
            out.print("<script type='text/javascript'>");
            out.print("location.href='/jsp/teacherLogin/teacherCheckTask.jsp';");
            out.print("</script>");
        }

        out.close();
    }
}
