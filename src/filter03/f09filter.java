package filter03;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class f09filter
 */
//@WebFilter("/f09filter")
public class f09filter implements Filter {

    /**
     * Default constructor. 
     */
    public f09filter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		System.out.println("9번필터 실행");
		
		String user = request.getParameter("user");
		// pass the request along the filter chain
		
		if(user != null && user.equals("notok")) { 
			//param user가 notok이면 서블릿 실행하지 않음
			String path= "/WEB-INF/view/filter03/09notok.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}else {
			chain.doFilter(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
