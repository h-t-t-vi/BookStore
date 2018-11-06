package bo;

import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {

	khachhangdao dao = new khachhangdao();
	
	public khachhangbean ktrdn(String un, String pass) throws Exception {
		return dao.ktrdn(un, pass);
	}
}
