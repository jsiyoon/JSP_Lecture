package jdbc08;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.time.LocalDateTime;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class JDBC34Servlet
 */
@WebServlet("/jdbc08/s34")
public class JDBC34Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC34Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		String sql = "INSERT INTO mytable10 (col1, col2, col3, col4, col5, col6, col7) VALUES (?, ?, ?, ?, ?, ?, ?)";
		
		try(Connection con = ds.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.setInt(1, 99999999); //INT
			stmt.setDouble(2, 3.14); //DOUBLE
			stmt.setDouble(3, 1234567.1234); //DEC(10 , 3)
			stmt.setString(4, "ABC"); //CHAR(3)
			stmt.setString(5, "Hello world"); //VARCHAR(255)
			
			java.time.LocalDate date = LocalDate.parse("2021-11-26");
			java.time.LocalDateTime dateTime = LocalDateTime.parse("2021-11-26T10:15:12");
			
			stmt.setDate(6, java.sql.Date.valueOf(date));//DATE
			stmt.setTimestamp(7, java.sql.Timestamp.valueOf(dateTime)); //DATETIME
			
			stmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
