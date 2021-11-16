package servlet04;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S01LogicServlet
 */
@WebServlet("/servlet04/s01")
public class S01LogicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S01LogicServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//비즈니스 로직 실행(CRUD- 데이터 추가, 읽기, 수정, 삭제), (로그인, 로그아웃, 파일 추가/삭제)
		List<String> list = new ArrayList<>();
		list.add("pizza");
		list.add("chicken");
		list.add("icecream");
		
		//set Attribute
		request.setAttribute("foods", list);
		
		//forward
		String path="/WEB-INF/view/servlet04/s01.jsp";
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
