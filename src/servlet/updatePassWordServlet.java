package servlet;

import dao.UserDao;
import dao.UserDaoImpl;
import dao.UserTeacherDao;
import dao.UserTeacherDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class updatePassWordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session=req.getSession();
        //String phone=req.getParameter("phone");
        String phone= (String) session.getAttribute("phone");
        String passWord=req.getParameter("passWord");
        UserDao userDao=new UserDaoImpl();
        UserTeacherDao userTeacherDao=new UserTeacherDaoImpl();
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        System.out.println("sessionPhone"+phone);
        if (userDao.queryOneUserPhone(phone)){//在学生表里查询用户是否存在
            if (userDao.updatePassWord(phone,passWord)){
                out.print("<script type='text/javascript'>alert('修改成功');");
                out.print("location.href='/jsp/login.jsp';");
                out.print("</script>");
            }else{
                out.print("<script type='text/javascript'>alert('修改失败');");
                out.print("location.href='/jsp/updatePassWord.jsp';");
                out.print("</script>");
            }
        }else if (userTeacherDao.queryOneUserPhone(phone)){//在老师表里查询用户是否存在
            if (userTeacherDao.updatePassWord(phone,passWord)){
                out.print("<script type='text/javascript'>alert('修改成功');");
                out.print("location.href='/jsp/login.jsp';");
                out.print("</script>");
            }else{
                out.print("<script type='text/javascript'>alert('修改失败');");
                out.print("location.href='/jsp/updatePassWord.jsp';");
                out.print("</script>");
            }
        }else{
            System.out.println("修改失败");
        }
        out.close();
    }
}
