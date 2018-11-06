package bo;

import java.util.ArrayList;

import bean.loaibean;
import dao.loaidao;

public class loaibo {
	public ArrayList<loaibean> getloai() throws Exception{
		loaidao ldao = new loaidao();
		return ldao.getloai();
	}
	// tao ra 1 servelet: loaiservlet de: 
		// laay all loai ve
		// chuyen qua trang tc.jsp
	// tao trang tc.jsp de hien thi loai
}
