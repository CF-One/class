package servlet;

import dao.UserDao;
import dao.UserDaoImpl;
import dao.UserTeacherDao;
import dao.UserTeacherDaoImpl;
import entity.User;

import javax.naming.Name;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;

public class studentRegisterServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取jsp页面传过来的参数
        String phone = request.getParameter("phone");//手机号
        String password = request.getParameter("passWord");//密码
        String username = request.getParameter("registerName");//姓名
        String id = request.getParameter("registerId");//学号
        String school = request.getParameter("registerSchool");//学校
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String random = null;
        String[] doc = {"head1", "head2", "head3", "head4","head5","head6", "head7", "head8", "head9","head10"};
        int index = (int) (Math.random() * doc.length);
        random = doc[index];
        //实例化一个对象，组装属性
        User user = new User();
        user.setImg(random);
        user.setPhone(phone);
        user.setPassWord(password);
        user.setName(username);
        user.setId(id);
        user.setSchool(school);
        HttpSession session=request.getSession();
        //实例化接口
        UserDao userDao = new UserDaoImpl();
        UserTeacherDao userTeacherDao=new UserTeacherDaoImpl();
        //调用userDao中的注册用户方法
        //判断用户手机号是否注册
        if (userDao.queryOneUserPhone(phone)||userTeacherDao.queryOneUserPhone(phone)){
            //手机号存在
            session.setAttribute("name",username);
            session.setAttribute("school",school);
            session.setAttribute("phone",phone);
            session.setAttribute("id",id);
            session.setAttribute("message","该手机号已注册");
            request.getRequestDispatcher("/jsp/registerStudent.jsp").forward(request, response);
        }else{
            //手机号不存在
            //判断用户学号是否已注册
            if (userDao.queryOneUserId(id)){
                session.setAttribute("name",username);
                session.setAttribute("school",school);
                session.setAttribute("phone",phone);
                session.setAttribute("id",id);
                session.setAttribute("idMessage","该学号已注册");
                System.out.println("该学号已注册");
                response.sendRedirect(request.getContextPath()+"/jsp/registerStudent.jsp");
            }else{
                //该学号未注册
                if(userDao.register(user)){
                    PrintWriter out = response.getWriter();
                    out.print("<script type='text/javascript'>alert('注册成功');");
                    out.print("location.href='/jsp/login.jsp';");
                    out.print("</script>");
                    System.out.println("注册成功");
                }else{
                    response.sendRedirect(request.getContextPath()+"/jsp/registerStudent.jsp");
                    System.out.println("注册失败");
                }
            }
        }
    }

}
