package jdbc06;

import java.io.IOException;
import java.sql.Connection;
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
 * Servlet implementation class JDBC28Servlet
 */
@WebServlet("/jdbc06/s28")
public class JDBC28Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC28Servlet() {
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
		Supplier supplier = null;
		List<String> countryList = null;

		// request parameter분석/가공
		String idStr = request.getParameter("id");
		int supplierID = Integer.parseInt(idStr);

		// business logic
		try (Connection con = ds.getConnection()) {
			supplier = dao.selectById(con, supplierID);
			countryList = dao.getCountryList(con);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// add attribute
		request.setAttribute("supplier", supplier);
		request.setAttribute("countryList", countryList);

		// forward
		String path = "/WEB-INF/view/jdbc06/v28.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		SupplierDAO dao = new SupplierDAO();
		boolean ok = false;
		
		String supplierName = request.getParameter("supplierName");
		String contactName = request.getParameter("contactName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String postalCode = request.getParameter("postalCode");
		String country = request.getParameter("country");
		String phone = request.getParameter("phone");
		int supplierID = Integer.parseInt(request.getParameter("supplierID"));
		
		Supplier supplier = new Supplier();
		supplier.setSupplierName(supplierName);
		supplier.setContactName(contactName);
		supplier.setAddress(address);
		supplier.setCity(city);
		supplier.setPostalCode(postalCode);
		supplier.setCountry(country);
		supplier.setPhone(phone);
		supplier.setSupplierID(supplierID);

		try (Connection con = ds.getConnection()) {
			ok = dao.update(con, supplier);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
