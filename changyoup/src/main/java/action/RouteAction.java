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
	
	public String previous() throws Exception{
		routedate = (Integer)session().getAttribute("day");
		routeid = (Integer)session().getAttribute("rid");
		String id = Integer.toString(routeid) + Integer.toString(routedate);
		
		routeMongoid = routeService.addRouteContent(id, content);
		System.out.print(routeMongoid);
		System.out.print(content);
		
		Route route = routeService.getSingleRoute(id);
		
		if(route == null){
			location1 = "1";
			location2 = "2";
			route = new Route(routeMongoid, routeid, routedate, location1, location2);
			routeService.save(route);
		}
		else{
			route.setLocation1("1");
			route.setLocation2("2");
			routeService.update(route);
		}
		
		if(routedate <= 1){
			request().setAttribute("scontent", content);
			return SUCCESS;
		}
			
		routedate = routedate - 1;
		session().setAttribute("day", routedate);
		
		id = Integer.toString(routeid) + Integer.toString(routedate);
		String scontent = routeService.getRouteContentbyId(id);
		request().setAttribute("scontent", scontent);
		
		return SUCCESS;
	}
	
	public String next() throws Exception{
		routedate = (Integer)session().getAttribute("day");
		routeid = (Integer)session().getAttribute("rid");
		String id = Integer.toString(routeid) + Integer.toString(routedate);
		
		routeMongoid = routeService.addRouteContent(id, content);
		System.out.print(routeMongoid);
		System.out.print(content);
		
		Route route = routeService.getSingleRoute(id);
		
		if(route == null){
			location1 = "1";
			location2 = "2";
			route = new Route(routeMongoid, routeid, routedate, location1, location2);
			routeService.save(route);
		}
		else{
			route.setLocation1("1");
			route.setLocation2("2");
			routeService.update(route);
		}
		
		int maxday = (int) session().getAttribute("maxday");
		if(routedate >= maxday){
			request().setAttribute("scontent", content);
			return SUCCESS;
		}
			
		routedate = routedate + 1;
		session().setAttribute("day", routedate);
		
		id = Integer.toString(routeid) + Integer.toString(routedate);
		String scontent = routeService.getRouteContentbyId(id);
		request().setAttribute("scontent", scontent);
		
		return SUCCESS;
	}
	
	public String release() throws Exception{
		routedate = (Integer)session().getAttribute("day");
		routeid = (Integer)session().getAttribute("rid");
		
		session().removeAttribute("day");
		session().removeAttribute("maxday");
		//session().removeAttribute("rid");
		
		String id = Integer.toString(routeid) + Integer.toString(routedate);
		
		routeMongoid = routeService.addRouteContent(id, content);
		System.out.print(routeMongoid);
		System.out.print(content);
		
		Route route = routeService.getSingleRoute(id);
		
		if(route == null){
			//location1 = "1";
			//location2 = "2";
			route = new Route(routeMongoid, routeid, routedate, location1, location2);
			routeService.save(route);
		}
		else{
			route.setLocation1("1");
			route.setLocation2("2");
			routeService.update(route);
		}
		
		return SUCCESS;
	}
}