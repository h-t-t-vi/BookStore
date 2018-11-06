package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.giohangbo;

/**
 * Servlet implementation class xoa
 */
@WebServlet("/xoa")
public class xoa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xoa() {
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
		if(request.getParameter("masach") !=null) {
			String masach = request.getParameter("masach");
			if(session.getAttribute("gh")!=null) {
				giohangbo gh = (giohangbo)session.getAttribute("gh");
				gh.xoa(masach);
				session.setAttribute("gh", gh);
				DecimalFormat formatter = new DecimalFormat("###,###,###");
				PrintWriter out = response.getWriter();
				out.print(formatter.format(gh.thanhtien()));
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
