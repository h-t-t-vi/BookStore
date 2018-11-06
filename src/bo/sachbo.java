package bo;

import java.util.ArrayList;

import bean.sachbean;
import dao.sachdao;

public class sachbo {

	public ArrayList<sachbean> dssach;
	sachdao sdao = new sachdao();
	public ArrayList<sachbean> getsach() throws Exception{
		
		return sdao.getsach();
	}
	public ArrayList<sachbean> getsachtheoloai(ArrayList<sachbean> dssach,String maloai){
		ArrayList<sachbean> lst = new ArrayList<sachbean>();
		
		for(sachbean ss : dssach) {
			if(ss.getMaloai().equals(maloai)) {
				lst.add(ss);
			}
		}
		return lst;
	}
	public ArrayList<sachbean> TimMa(ArrayList<sachbean> ds, String maloai) throws Exception{
		ArrayList<sachbean> tam = new ArrayList<sachbean>();
		for(sachbean ss : ds) {
			if(ss.getMaloai().equals(maloai)) {
				tam.add(ss);
			}
		}
		return tam;
	}
	public ArrayList<sachbean> TimChung(ArrayList<sachbean> ds, String key) throws Exception{
		ArrayList<sachbean> tam = new ArrayList<sachbean>();
		for(sachbean ss : ds) {
			if(ss.getTensach().trim().toLowerCase().contains(key.trim().toLowerCase())) {
				tam.add(ss);
			}
		}
		return tam;
	}
	
	
}
