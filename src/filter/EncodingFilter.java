package filter;


import javax.servlet.*;
import java.io.IOException;
import java.util.logging.Filter;
import java.util.logging.LogRecord;

public class EncodingFilter implements Filter {

    @Override
    public boolean isLoggable(LogRecord record) {
        return false;
    }

    public EncodingFilter(){
        System.out.println("过滤器构造方法");
    }

    public void destroy() {
        System.out.println("过滤器销毁");
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8"); //将编码改为utf-8
        response.setContentType("text/html;charset=utf-8");
        chain.doFilter(request, response);
    }

    public void init(FilterConfig arg0) throws ServletException {

        System.out.println("过滤器初始化");

    }

}
