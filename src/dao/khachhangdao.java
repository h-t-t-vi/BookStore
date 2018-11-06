package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;


import bean.khachhangbean;

public class khachhangdao {
	public khachhangbean ktrdn(String un, String pass) throws Exception {
		coso cs = new coso();
		cs.ketnoi();
		String sql = "select * from KhachHang where tendn = ? and pass= ?";
		PreparedStatement pst = cs.cn.prepareStatement(sql);
		pst.setString(1, un);
		pst.setString(2, pass);
		ResultSet rs = pst.executeQuery();
		khachhangbean kh = null;
		if(rs.next()) {
			kh = new khachhangbean(rs.getLong(1), rs.getString(2), rs.getString(6));
		}
		rs.close();
		cs.cn.close();
		return kh;
	}
}
