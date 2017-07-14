package model;

public class Planinfo {
	private int planid;
	private int publisher;
	private String title;
	private int pass;
	private int display;
	
	public  Planinfo(){
	};
	
	public Planinfo(int publisher,String title){
		this.publisher=publisher;
		this.title=title;
		this.pass=0;
		this.display=0;
	}
	
	
	
	public int getPlanid() {
		return planid;
	}
	public void setPlanid(int planid) {
		this.planid = planid;
	}
	public int getPublisher() {
		return publisher;
	}
	public void setPublisher(int publisher) {
		this.publisher = publisher;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPass() {
		return pass;
	}
	public void setPass(int pass) {
		this.pass = pass;
	}
	public int getDisplay() {
		return display;
	}
	public void setDisplay(int display) {
		this.display = display;
	}
}
