package myservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybean.Usercard;
import mydb.MyJdbc;
import service.Usercardservice;

/**
 * Servlet implementation class Mycardservlet
 */
@WebServlet("/Mycardservlet")
public class Mycardservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mycardservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		Usercard usercard = new Usercard();
		MyJdbc jdbc = new MyJdbc();
		String rechange = null;
		String pay = null;
		rechange = request.getParameter("rechange");
		pay = request.getParameter("pay");;
		String username = (String) request.getParameter("username");
		Usercardservice books = new Usercardservice();
		books.rebooks(username, rechange, pay);
		request.getRequestDispatcher("./books.jsp").forward(request,response);
	}
}
