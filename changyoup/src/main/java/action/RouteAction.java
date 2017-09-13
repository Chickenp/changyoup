package action;

import service.RouteService;
import model.Route;
import model.Routeinfo;
import service.RouteInfoService;

public class RouteAction extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String routeMongoid;
	private int routeid;
	private int routedate;
	private String location1;
	private String location2;
	private String content;
	private int targetday;
	
	private RouteService routeService;
	private RouteInfoService routeinfoService;
	
	public String getRouteMongoid() {
		return this.routeMongoid;
	}

	public void setRouteMongoid(String routeMongoid) {
		this.routeMongoid = routeMongoid;
	}

	public int getRouteid() {
		return this.routeid;
	}

	public void setRouteid(int routeid) {
		this.routeid = routeid;
	}

	public int getRoutedate() {
		return this.routedate;
	}

	public void setRoutedate(int routedate) {
		this.routedate = routedate;
	}

	public String getLocation1() {
		return this.location1;
	}

	public void setLocation1(String location1) {
		this.location1 = location1;
	}

	public String getLocation2() {
		return this.location2;
	}

	public void setLocation2(String location2) {
		this.location2 = location2;
	}
	
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getTargetday() {
		return targetday;
	}

	public void setTargetday(int targetday) {
		this.targetday = targetday;
	}

	public void setRouteService(RouteService routeService){
		this.routeService = routeService;
	}
	
	public void setRouteinfoService(RouteInfoService routeinfoService) {
		this.routeinfoService = routeinfoService;
	}
	
	private void save(){
		routedate = (Integer)session().getAttribute("day");
		routeid = (Integer)session().getAttribute("rid");
		String id = Integer.toString(routeid) + Integer.toString(routedate);
		
		try {
			routeMongoid = routeService.addRouteContent(id, content);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.print(routeMongoid);
		//System.out.print(content);
		
		Route route = routeService.getSingleRoute(id);
		
		if(route == null){
			route = new Route(routeMongoid, routeid, routedate, location1, location2);
			/*route.setRouteMongoid(routeMongoid);
			route.setRouteid(routeid);
			route.setRoutedate(routedate);
			route.setLocation1("");
			route.setLocation2("");*/
			routeService.save(route);
			//System.out.println("QAQ");
		}
		else{
			//System.out.println("TUT");
			route.setLocation1(location1);
			route.setLocation2(location2);
			routeService.update(route);
			//System.out.println("TUT");
		}
	}
	
	public String view() throws Exception{
		routedate = (Integer)session().getAttribute("day");
		routeid = (Integer)session().getAttribute("rid");
		String title="";
		title=routeinfoService.getRouteInfoById(routeid).getRoutetitle();
		String id = Integer.toString(routeid) + Integer.toString(routedate);
		String scontent = routeService.getRouteContentbyId(id);
		Route sroute = routeService.getSingleRoute(id);
		request().setAttribute("scontent", scontent);
		request().setAttribute("sroute", sroute);
		request().setAttribute("title", title);
		return SUCCESS;
	}
	
	public String previous() throws Exception{
		this.save();
		
		if(routedate <= 1){
			request().setAttribute("scontent", content);
			return null;
		}
			
		//routedate = routedate - 1;
		session().setAttribute("day", routedate - 1);
		
		return null;
	}
	
	public String next() throws Exception{
		this.save();
		
		int maxday = (Integer) session().getAttribute("maxday");
		if(routedate >= maxday){
			request().setAttribute("scontent", content);
			return null;
		}
			
		//routedate = routedate + 1;
		session().setAttribute("day", routedate + 1);
		
		return null;
	}
	
	public String release() throws Exception{
		this.save();
		
		//session().removeAttribute("day");
		//session().removeAttribute("maxday");
		//session().removeAttribute("rid");
		
		//routedate = 1;
		session().setAttribute("day", 1);
		
		return null;
	}
	
	public String jump() throws Exception{
		save();
		//System.out.println(targetday);
		session().setAttribute("day", targetday);		
		return null;
	}
}