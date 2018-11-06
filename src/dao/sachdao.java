package dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> getsach() throws Exception{
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		coso cs = new coso();
		cs.ketnoi();
		ResultSet rs = cs.getbang("sach");
		while(rs.next()) {
			ds.add(new sachbean(rs.getString(1), rs.getString(2), rs.getLong(3), rs.getLong(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getString(9)));
		}
		rs.close();
		cs.cn.close();
		return ds;
	}
}
