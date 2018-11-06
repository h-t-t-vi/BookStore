package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.giohangbo;

/**
 * Servlet implementation class add
 */
@WebServlet("/add")
public class add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		if(request.getParameter("masach") !=null && request.getParameter("tensach") != null && request.getParameter("gia") !=null && request.getParameter("soluongmua") !=null && request.getParameter("anh") !=null ) {
			giohangbo gh = new giohangbo();
			String masach = request.getParameter("masach");
			String tensach = request.getParameter("tensach");
			String soluongmua = request.getParameter("soluongmua");
			String anh = request.getParameter("anh");
			String gia = request.getParameter("gia");
			if(session.getAttribute("gh") !=null) {
				gh = (giohangbo)session.getAttribute("gh");
				gh.them(masach, tensach, gia, soluongmua, anh);
				session.setAttribute("gh", gh);
			}
			else {
				gh.them(masach, tensach, gia, soluongmua, anh);
				session.setAttribute("gh", gh);
			}
		}
		response.sendRedirect("cart");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
