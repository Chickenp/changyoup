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

	public void setRouteService(RouteService routeService){
		this.routeService = routeService;
	}
	
	public void setRouteInfoService(RouteInfoService routeinfoService){
		this.routeinfoService = routeinfoService;
	}
	
	
	public String previous() throws Exception{
		routedate = (int)session().getAttribute("day");
		routedate = routedate - 1;
		session().setAttribute("day", routedate);
		return SUCCESS;
	}
	
	public String next() throws Exception{
		routedate = (int)session().getAttribute("day");
		routedate = routedate + 1;
		session().setAttribute("day", routedate);
		return SUCCESS;
	}
	
	public String release() throws Exception{
		routedate = (int)session().getAttribute("day");
		session().removeAttribute("day");
		
		routeid = (int)session().getAttribute("rid");
		Routeinfo routeinfo = routeinfoService.getRouteInfoById(routeid);
		routeMongoid = routeService.addRoute(routeinfo, content);
		
		location1 = "";
		location2 = "";
		Route route = new Route(routeMongoid, routeid, routedate, location1, location2);
		routeService.save(route);
		
		return SUCCESS;
	}
}