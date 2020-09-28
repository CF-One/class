package servlet;

import dao.UserDao;
import dao.UserDaoImpl;
import dao.UserTeacherDao;
import dao.UserTeacherDaoImpl;
import dao.teacherDao.TeacherCourse;
import dao.teacherDao.TeacherCourseImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

public class studentLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String phone=req.getParameter("phone");
        String pwd=req.getParameter("passWord");
        String radio=req.getParameter("radio");
        UserDao userDao=new UserDaoImpl();
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        HttpSession session=req.getSession();
        if (radio.equals("1")){
            //学生登录
            if (userDao.queryOneUserPhone(phone)){
                if (userDao.login(phone,pwd)){
                    //登录成功
                    String name=userDao.queryName(phone);
                    session.setAttribute("name",name);
                    session.setAttribute("phone",phone);
                    req.getRequestDispatcher("/jsp/studentLogin/studentLoginHone.jsp").forward(req, resp);
                }else {
                    //密码错误
                    session.setAttribute("pwdMessage","密码错误");
                    req.getRequestDispatcher("/jsp/login.jsp?phone"+phone).forward(req, resp);
                }
            }else {
                //手机号不存在
                session.setAttribute("message","手机号不存在");
                req.getRequestDispatcher("/jsp/login.jsp?").forward(req, resp);
            }
        }else{
            //教师登录
            UserTeacherDao userTeacherDao=new UserTeacherDaoImpl();
            if (userTeacherDao.queryOneUserPhone(phone)){
                if (userTeacherDao.login(phone,pwd)){
                    //登录成功
                    String name=userTeacherDao.queryName(phone);
                    session.setAttribute("name",name);
                    session.setAttribute("phone",phone);
                    req.getRequestDispatcher("/jsp/teacherLogin/teacherLoginOne.jsp").forward(req, resp);
                }else {
                    //密码错误
                    session.setAttribute("pwdMessage","密码错误");
                    req.getRequestDispatcher("/jsp/login.jsp?phone"+phone).forward(req, resp);
                }
            }else {
                //手机号不存在
                session.setAttribute("message","手机号不存在");
                req.getRequestDispatcher("/jsp/login.jsp?").forward(req, resp);
            }

        }
    }

}
