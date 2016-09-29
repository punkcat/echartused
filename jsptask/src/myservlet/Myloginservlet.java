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
 * Servlet implementation class Myloginservlet
 */
@WebServlet("/login")
public class Myloginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Myloginservlet() {
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
		String username = null;
		MyJdbc jsql = new MyJdbc();
		if(jsql.selectUser(indate) == 0){
			error = " ‰»Î”–ŒÛ";
			request.setAttribute("error", error);
			System.out.println(error);
			request.getRequestDispatcher("login.jsp").forward(request,response);
		}
		else{
			username = request.getParameter("username");
			request.setAttribute("username", username);
			request.getRequestDispatcher("fpage.jsp").forward(request,response);
		}
	}

}
