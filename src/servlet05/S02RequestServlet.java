package servlet05;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S02RequestServlet
 */
@WebServlet("/servlet05/s02")
public class S02RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S02RequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청분석
		String country = request.getParameter("country");
		country = country == null ? "" : country;
		
		//business logic실행
		List<String> list = new ArrayList<>();
		if(country.equals("korea")) {
			list.add("seoul");
			list.add("busan");
			list.add("daejeon");
			list.add("gwangju");
		}else if(country.equals("US")) {
			list.add("NY");
			list.add("LA");
			list.add("Chicago");
			list.add("Washington");
			list.add("Sanfransisco");
		}
		
		//결과테이블 request or session attribute로 담기
		request.setAttribute("country", country );
		request.setAttribute("cities", list);
		
		//forward or redirect
		String path="/WEB-INF/view/servlet05/s02.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
