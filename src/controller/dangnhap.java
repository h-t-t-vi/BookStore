package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bo.khachhangbo;

/**
 * Servlet implementation class dangnhap
 */
@WebServlet("/dangnhap")
public class dangnhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhap() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		khachhangbo kh = new khachhangbo();
		try {
			if(request.getParameter("tendn") !=null && request.getParameter("pass")!= null) {
				String tendn = request.getParameter("tendn");
				String pass = request.getParameter("pass");
				HttpSession session = request.getSession();
				khachhangbean khbean = (kh.ktrdn(tendn, pass));
				if(khbean!=null) {
					session.setAttribute("khbean", khbean );
					response.sendRedirect("loaiservlet");
				}
				else {
					request.setAttribute("message", "Acount is invalid!");
		            request.getRequestDispatcher("dangnhap.jsp").forward(request, response);
				}
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("dangnhap.jsp");
				rd.forward(request, response);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			response.getWriter().println(e.getMessage());
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
