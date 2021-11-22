package jdbc01;

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

/**
 * Servlet implementation class JDBC03Servlet
 */
@WebServlet("/jdbc01/s03")
public class JDBC03Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC03Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0.사전작업
		ServletContext application = request.getServletContext();
		DataSource pool = (DataSource) application.getAttribute("dbpool");
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		List<String> names = new ArrayList<>();
		
		//1.request 정보 분석/가공
		
		//2.비즈니스 로직(주로 db작업)
		String sql = "SELECT CustomerName FROM Customers";
		
		try {
			//2-1. 커넥션 얻기
			con = pool.getConnection();
			//2-2. statement 얻기
			stmt = con.createStatement();
			//2-3. query실행(resultSet 얻기)
			rs = stmt.executeQuery(sql);
			//2-4. resultSet처리
			while(rs.next()) {
//				System.out.println(rs.getString(1));//1칸씩 이동
				names.add(rs.getString(1));
			}
			System.out.println("ResultSet 처리종료!!");
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			//2-5. 자원 닫기 / exception처리
			if(rs != null) {
				try {
					rs.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			if(stmt != null) {
				try {
					stmt.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			if(con != null) {
				try {
					con.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
		}
		//3. add attribute에 추가
		request.setAttribute("names", names);
		
		//4. forward / redirect
		String path = "/WEB-INF/view/jdbc01/v03.jsp";
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
