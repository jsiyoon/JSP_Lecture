package jdbc02.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
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

import jdbc02.bean.Customer;

/**
 * Servlet implementation class JDBC08Servlet
 */
@WebServlet("/jdbc02/s08")
public class JDBC08Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC08Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//사전작업
				ServletContext application = request.getServletContext();
				DataSource pool = (DataSource) application.getAttribute("dbpool");
				Connection con = null;
				Statement stmt = null;
				ResultSet rs = null;
				
				List<Customer> list = new ArrayList<>();
								
				//request분석/가공
				
				//business logic
				String sql = "SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country FROM Customers";
				
				try {
					//connection얻기
					con = pool.getConnection();
					//statement얻기
					stmt = con.createStatement();
					//resultset얻기
					rs = stmt.executeQuery(sql);

					while (rs.next()) {
						Customer bean = new Customer();
						int i = 1;
						
						bean.setCustomerID(rs.getInt(i++));
						bean.setCustomerName(rs.getString(i++));
						bean.setContactName(rs.getString(i++));
						bean.setAddress(rs.getString(i++));
						bean.setCity(rs.getString(i++));
						bean.setPostalCode(rs.getString(i++));
						bean.setCountry(rs.getString(i++));
						
						list.add(bean);
					}
					System.out.println("JDBC08 실행!");
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
					if(rs != null) {
						try {
							rs.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					if(stmt != null) {
						try {
							stmt.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					if(con != null) {
						try {
							con.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
				
				//add attribute
				request.setAttribute("customers", list);
				
				//forward/redirect
				String path = "/WEB-INF/view/jdbc02/v08.jsp";
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
