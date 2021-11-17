
package servlet07;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample03javabean.Bean06;

/**
 * Servlet implementation class S05
 */
@WebServlet("/servlet07/modify")
public class S05BookModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S05BookModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//사전작업
		HttpSession session = request.getSession();
		List<Bean06> list = (List<Bean06>) session.getAttribute("books");
		
		//request분석/가공
		String idStr = request.getParameter("id");
		int index = Integer.parseInt(idStr);
		
		//비즈니스 로직
		Bean06 book = list.get(index);
		
		//attribute추가
		request.setAttribute("index", index);
		request.setAttribute("book", book);
		
		//forward/redirect
		String path="/WEB-INF/view/servlet07/s04modify.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글인코딩
		request.setCharacterEncoding("utf-8");
		
		//사전작업
		HttpSession session = request.getSession();
		List<Bean06> list = (List<Bean06>) session.getAttribute("books");
		
		//request분석/가공
		String indexStr = request.getParameter("index");
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String priceStr = request.getParameter("price");
		String publisher = request.getParameter("publisher");
		String stockStr = request.getParameter("stock");
		
		int index = Integer.parseInt(indexStr);
		int price = Integer.parseInt(priceStr);
		int stock = Integer.parseInt(indexStr);
		
		//비즈니스 로직
		Bean06 book = list.get(index);
		book.setTitle(title);
		book.setWriter(writer);
		book.setPrice(price);
		book.setPublisher(publisher);
		book.setStock(stock);
		
		//attribute
		
		//forward/redirect
		String location = request.getContextPath() + "/servlet07/list";
		response.sendRedirect(location);
	}

}
