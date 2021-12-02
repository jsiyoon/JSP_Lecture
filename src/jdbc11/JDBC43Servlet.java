package jdbc11;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc11.bean.Bank;
import jdbc11.dao.BankDao;

/**
 * Servlet implementation class JDBC43Servlet
 */
@WebServlet("/jdbc11/s43")
public class JDBC43Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC43Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/view/jdbc11/v43.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		BankDao dao = new BankDao();
		
		//request분석/가공
		String moneyStr = request.getParameter("money");
		int money = Integer.parseInt(moneyStr);
		
		Connection con = null;
		try {
			con = ds.getConnection();
			//3-0. auto commit disabled
			con.setAutoCommit(false);
			
			//3-1. 2번 출금
			Bank bank2 = dao.getBankById(con, 2); //2번 계좌 조회
			bank2.setMoney(bank2.getMoney() - money);
			
			dao.update(con, bank2); //2번 계좌 출금
			
			//문제발생!!
			String a = "a";
			Integer.parseInt(a);
			
			//3-2. 1번 입금
			Bank bank1 = dao.getBankById(con, 1); //1번 계좌 조회
			bank1.setMoney(bank1.getMoney() + money);
			
			dao.update(con, bank1); //1번 계좌 입금
			//3-3. commit
			con.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			
			if(con != null) {
				try {//에러처리방법
					con.rollback();
				} catch (Exception e1) {
					e1.printStackTrace();
				}
			}
		}finally {
			if(con != null) {
				try {//에러처리방법
					con.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
		}
	}

}
