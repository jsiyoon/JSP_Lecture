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
 * Servlet implementation class S01
 */
@WebServlet("/servlet05/s01")
public class S01RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S01RequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request분석, request parameter 처리/가공
		String param = request.getParameter("info");
		
		//business logic
		List<String> list = new ArrayList<>();
		String title = "";
		if(param.equals("travle")) {
			//여행 관련일
			list.add("Seoul");
			list.add("ny");
			list.add("paris");
			list.add("chicago");
			list.add("busan");
			
			title="여행가고 싶은 곳";
		}else if(param.equals("food")) {
			list.add("pizza");
			list.add("chicken");
			list.add("hamburger");
			list.add("chocolate");
			list.add("spaghetti");
			
			title="좋아하는 음식";
		}
		
		//set Attribute
		request.setAttribute("title", title);
		request.setAttribute("list", list);
		
		//forward
		String path="/WEB-INF/view/servlet05/s01.jsp";
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
