package bean;

public class khachhangbean {
	private long makh;
	private String hoten;
	private String tendn;
	public khachhangbean(long makh, String hoten, String tendn) {
		super();
		this.makh = makh;
		this.hoten = hoten;
		this.tendn = tendn;
	}
	public khachhangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getTendn() {
		return tendn;
	}
	public void setTendn(String tendn) {
		this.tendn = tendn;
	}
	
	
	
	
}
