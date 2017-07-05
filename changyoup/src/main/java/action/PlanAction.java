package action;

import java.util.List;


public class PlanAction extends BaseAction{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String context;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContext(){
		return context;
	}
	
	public void setContext(String context){
		this.context=context;
	}
	
	public String execute() throws Exception{
		
		return SUCCESS;
	}
	
	
	public String update() throws Exception {

		return SUCCESS;
	}	
	
	public String getPlanbyId()throws Exception{
		return SUCCESS;
	}
}