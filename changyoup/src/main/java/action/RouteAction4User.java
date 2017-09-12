package action;

import service.RouteService;

import java.io.Console;

import model.Route;
import model.Routeinfo;
import service.RouteInfoService;

public class RouteAction4User extends BaseAction{
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
	
/*	private void save(){
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
			//route.setRouteMongoid(routeMongoid);
			//route.setRouteid(routeid);
			//route.setRoutedate(routedate);
			//route.setLocation1("");
			//route.setLocation2("");
			routeService.save(route);
			//System.out.println("QAQ");
		}
		else{
			//System.out.println("TUT");
			route.setLocation1(location2);
			route.setLocation2(location1);
			routeService.update(route);
			//System.out.println("TUT");
		}
	}*/
	
	public String view() throws Exception{
		int rid=routeid;
		int orouteid=0;
	    if (session().getAttribute("rid")!=null){
	    	orouteid=(int)session().getAttribute("rid");
	    }
	    if (routeid!=orouteid){
	    	session().setAttribute("rid", routeid);
	    	session().setAttribute("day", 1);
	    	Routeinfo routeinfo=new Routeinfo();
	    	int routedays=0;
			routeinfo=routeinfoService.getRouteInfoById(rid);
			routedays=routeinfo.getRoutedays();
			session().setAttribute("maxday", routedays);

	    }

		routedate = (Integer)session().getAttribute("day");
		System.out.println("routedate=");
		System.out.println(routedate);
		String id = Integer.toString(routeid) + Integer.toString(routedate);
		String scontent = routeService.getRouteContentbyId(id);
		Route sroute = routeService.getSingleRoute(id);
		request().setAttribute("scontent", scontent);
		request().setAttribute("sroute", sroute);
		
		return SUCCESS;
	}
	
	public String previous() throws Exception{
		int maxday = (Integer) session().getAttribute("maxday");
		if (session().getAttribute("day")!=null){
			routedate=(Integer)session().getAttribute("day");
		}
		if(routedate <= 1){
			request().setAttribute("scontent", content);
			return null;
		}
			
		//routedate = routedate - 1;
		session().setAttribute("day", routedate - 1);
		
		return null;
	}
	
	public String next() throws Exception{
		int maxday = (Integer) session().getAttribute("maxday");
		if (session().getAttribute("day")!=null){
			routedate=(Integer)session().getAttribute("day");
		}
		if(routedate >= maxday){
			request().setAttribute("scontent", content);
			return null;
		}
		System.out.println("nextday");
		System.out.println(routedate);
		//routedate = routedate + 1;
		session().setAttribute("day", routedate + 1);
		
		return null;
	}
	
	
	public String jump() throws Exception{
		System.out.println("jumpto");
		System.out.println(targetday);
		session().setAttribute("day", targetday);		
		return null;
	}
}