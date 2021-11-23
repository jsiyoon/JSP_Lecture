package jdbc04.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Supplier;
import jdbc04.dao.SupplierDAO;

/**
 * Servlet implementation class JDBC20Servlet
 */
@WebServlet("/jdbc04/s20")
public class JDBC20Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC20Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		SupplierDAO dao = new SupplierDAO();
		List<String> countryList = new ArrayList<>();
		List<Supplier> supplierList = new ArrayList<>();

		try(Connection con = ds.getConnection()) {
			// 2.request분석가공
			String country = request.getParameter("country");
			
			// 3.business logic
			// 3-1. 공급자 국가 조회
			countryList = dao.getCountryList(con);
			
			// 3-2. 공급자들 조회
			supplierList = dao.getSupplierList(con, country);
			
		}catch (Exception e) {
			e.printStackTrace();
		}			
		// 4. request
		request.setAttribute("countryList", countryList);
		request.setAttribute("list", supplierList);

		// 5. forward/redirect
		String path = "/WEB-INF/view/jdbc03/v17.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
