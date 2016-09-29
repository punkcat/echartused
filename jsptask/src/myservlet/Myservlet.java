package myservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybean.Indate;
import mydb.MyJdbc;

/**
 * Servlet implementation class Myservlet
 */
@WebServlet("/process")
public class Myservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Myservlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		Indate indate = new Indate();
		indate.setUsername(request.getParameter("username"));
		indate.setPwd(request.getParameter("password"));
		String error = null;
		if(indate.getUsername()!=""&&indate.getPwd()!=""){
			MyJdbc jsql = new MyJdbc();
			jsql.insertUser(indate);
			request.getRequestDispatcher("login.jsp").forward(request,response);
		}
		else{
			error = "’À∫≈√‹¬Î≤ªƒ‹Œ™ø’£°";
			request.setAttribute("error", error);
			request.getRequestDispatcher("register.jsp").forward(request,response);
		}
			
	}

}
