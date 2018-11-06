package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class coso {
	public Connection cn ;
	public void ketnoi() throws Exception{
		// xac dinh he quan tri csdl
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.println("Da xac dinh HQTCSDL");
		cn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=QlSach;user=sa; password=123");
		System.out.println("Da ket noi csdl");
		// ket noi
	}
	public ResultSet getbang(String tb) throws Exception{
		String sql ="select * from " + tb;
		PreparedStatement cmd = cn.prepareStatement(sql);
		return cmd.executeQuery();
		// tao cau lenh sql 
		// tao doi tuowng preparedstatement:cmd
		// cho thi hanh cau lenh
		
	}
}
