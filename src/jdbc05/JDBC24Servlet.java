package jdbc05;

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
 * Servlet implementation class JDBC24Servlet
 */
@WebServlet("/jdbc05/s24")
public class JDBC24Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC24Servlet() {
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
		List<String> list = null;

		// bussiness logic
		try (Connection con = ds.getConnection()) {
			list = dao.getCountryList(con);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// add attribute
		request.setAttribute("countryList", list);

		// forward
		String path = "/WEB-INF/view/jdbc05/v24.jsp";
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

		// request분석/가공
		String supplierName = request.getParameter("supplierName");
		String contactName = request.getParameter("contactName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String postalCode = request.getParameter("postalCode");
		String country = request.getParameter("country");
		String phone = request.getParameter("phone");
		
		Supplier supplier = new Supplier();
		supplier.setSupplierName(supplierName);
		supplier.setContactName(contactName);
		supplier.setAddress(address);
		supplier.setCity(city);
		supplier.setPostalCode(postalCode);
		supplier.setCountry(country);
		supplier.setPhone(phone);

		// business로직
		try (Connection con = ds.getConnection()) {
			ok = dao.insert(con, supplier);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// add attribute

		// forward/redirect
	}

}
