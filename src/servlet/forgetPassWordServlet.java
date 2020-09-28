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

public class forgetPassWordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String phone=req.getParameter("phone");
        String name=req.getParameter("name");
        String school=req.getParameter("school");
        String radio=req.getParameter("radio");
        UserDao userDao=new UserDaoImpl();
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        HttpSession session=req.getSession();
        System.out.println("用户身份"+phone);
        if (radio.equals("1")){
            //学生忘记密码
            System.out.println("学生忘记密码");
            //查询手机号是否存在
            if (userDao.queryOneUserPhone(phone)){//手机号存在
                if (userDao.queryNameSchool(phone,name,school)){//查询姓名和学校是否与手机号对应
                    //姓名学校匹配
                    session.setAttribute("phone",phone);
                    req.getRequestDispatcher("/jsp/updatePassWord.jsp").forward(req, resp);
                }else {
                    //姓名学校不匹配
                    session.setAttribute("pwdMessage","信息不匹配");
                    session.setAttribute("phone",phone);
                    req.getRequestDispatcher("/jsp/forgetPassWord.jsp").forward(req, resp);
                }
            }else {
                //手机号不存在
                session.setAttribute("message","手机号不存在");
                System.out.println("手机号不存在");
                req.getRequestDispatcher("/jsp/forgetPassWord.jsp").forward(req, resp);
            }
        }else{
            //教师登录
            System.out.println("教师登录");
            UserTeacherDao userTeacherDao=new UserTeacherDaoImpl();
            if (userTeacherDao.queryOneUserPhone(phone)){
                if (userTeacherDao.queryNameSchool(phone,name,school)){
                    //姓名学校匹配
                    session.setAttribute("phone",phone);
                    req.getRequestDispatcher("/jsp/updatePassWord.jsp").forward(req, resp);
                }else {
                    //姓名学校不匹配
                    session.setAttribute("pwdMessage","信息不匹配");
                    session.setAttribute("phone",phone);
                    req.getRequestDispatcher("/jsp/forgetPassWord.jsp").forward(req, resp);
                }
            }else {
                //手机号不存在
                session.setAttribute("message","手机号不存在");
                req.getRequestDispatcher("/jsp/forgetPassWord.jsp?").forward(req, resp);
            }

        }
    }
}
