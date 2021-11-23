package jdbc02.servlet;

import java.io.IOException;
import java.sql.Connection;
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

import jdbc02.bean.Employee;

/**
 * Servlet implementation class JDBC11Servlet
 */
@WebServlet("/jdbc02/s11")
public class JDBC11Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC11Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		List<Employee> list = new ArrayList<>();
		
		String sql = "SELECT " + 
				"    EmployeeID, LastName, FirstName, BirthDate, Photo, Notes " + 
				" FROM " + 
				"    Employees";
		
		try(
				Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				) {
			while(rs.next()) {
				Employee bean = new Employee();
				int i = 1;
				
				bean.setEmployeeID(rs.getInt(i++));
				bean.setLastName(rs.getString(i++));
				bean.setFirstName(rs.getString(i++));
				bean.setBirthDate(rs.getDate(i++));
				bean.setPhoto(rs.getString(i++));
				bean.setNotes(rs.getString(i++));
				
				list.add(bean);
			}
			System.out.println("jdbc 11 실행!!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("list", list);
		
		String path = "/WEB-INF/view/jdbc02/v11.jsp";
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
