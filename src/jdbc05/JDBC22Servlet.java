package jdbc05;

import java.io.IOException;
import java.sql.Connection;

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
 * Servlet implementation class JDBC22Servlet
 */
@WebServlet("/jdbc05/s22")
public class JDBC22Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC22Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		SupplierDAO dao = new SupplierDAO();
		boolean ok = false;
		
		//request분석/가공
		Supplier supplier = new Supplier();
		supplier.setSupplierName("bts");
		supplier.setContactName("siger");
		supplier.setAddress("yeoksam");
		supplier.setCity("seoul");
		supplier.setPostalCode("123456");
		supplier.setCountry("korea");
		supplier.setPhone("02-1234-5678");
		
		//business로직
		try(Connection con = ds.getConnection()){
			ok = dao.insert(con, supplier);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		//add attribute
		
		//forward/redirect
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
