package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bean.loaibean;
import bean.sachbean;
import bo.giohangbo;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class loaiservlet
 */
@WebServlet("/loaiservlet")
public class loaiservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loaiservlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    loaibo lb = new loaibo();
    sachbo sbo = new sachbo();
    giohangbo g = new giohangbo();
    ArrayList<sachbean> dssach;
    ArrayList<loaibean> dsloai;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		if(session.getAttribute("gh")!=null) {
			g = (giohangbo)session.getAttribute("gh");
			request.setAttribute("sl", g.tongslhang());
		}
		else {
			request.setAttribute("sl", g.tongslhang());
		}
		if(session.getAttribute("khbean")!=null) {
			khachhangbean khbean = (khachhangbean)session.getAttribute("khbean");
			request.setAttribute("khbean",khbean);
		}
		try {
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			
			
			String maloai = request.getParameter("maloai");
			String key = request.getParameter("txttk");
			ArrayList<sachbean> lstsach;//=sbo.getsachtheoloai(maloai);
			lstsach=sbo.getsach();
			if(maloai !=null) {
				
				lstsach=sbo.getsachtheoloai(lstsach,maloai);	
			}
			if(key !=null) {
				lstsach = sbo.TimChung(lstsach, key);
			}
			
			request.setAttribute("dsloai", lb.getloai());
			request.setAttribute("dssach", lstsach);
			RequestDispatcher rd = request.getRequestDispatcher("database.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
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
