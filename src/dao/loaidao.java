package dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> getloai() throws Exception{

		// tao ra 1 loai arraylist
		ArrayList<loaibean> ds = new ArrayList<loaibean>();
		// ket noi vao csdl
		coso cs = new coso();
		cs.ketnoi();
		// lay ve bang loai luu vao resultset
		ResultSet rs =cs.getbang("loai");
		
		// duyet du lieu lay ve 
		while(rs.next()) {
			//String maloai = rs.getString("maloai");
			// tenloai = rs.getString(2);
			//loaibean loai = new loaibean(maloai, tenloai);
			//ds.add(loai);
			ds.add(new loaibean(rs.getString(1), rs.getString(2)));
		}
		rs.close();
		cs.cn.close();
		return ds;
			// lay ve maloai, tenloai trong csdl
			// tao ra 1 loai bean
			// luu loai vao arraylist
		// dong ket noi
	}
}
