package action;

import service.RouteInfoService;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import model.Routeinfo;

public class RouteInfoAction extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer routeid;
	private int routedays;
	private int routepublisher;
	private String routetitle;
	private Date routepublishdate;
	private String routeintro;
	private Set routes = new HashSet(0);
	
	private RouteInfoService routeinfoService;

	public Integer getRouteid() {
		return this.routeid;
	}

	public void setRouteid(Integer routeid) {
		this.routeid = routeid;
	}

	public int getRoutedays() {
		return this.routedays;
	}

	public void setRoutedays(int routedays) {
		this.routedays = routedays;
	}

	public int getRoutepublisher() {
		return this.routepublisher;
	}

	public void setRoutepublisher(int routepublisher) {
		this.routepublisher = routepublisher;
	}

	public String getRoutetitle() {
		return this.routetitle;
	}

	public void setRoutetitle(String routetitle) {
		this.routetitle = routetitle;
	}

	public Date getRoutepublishdate() {
		return this.routepublishdate;
	}

	public void setRoutepublishdate(Date routepublishdate) {
		this.routepublishdate = routepublishdate;
	}

	public String getRouteintro() {
		return this.routeintro;
	}

	public void setRouteintro(String routeintro) {
		this.routeintro = routeintro;
	}

	public Set getRoutes() {
		return this.routes;
	}

	public void setRoutes(Set routes) {
		this.routes = routes;
	}
	
	public void setRouteinfoService(RouteInfoService routeinfoService){
		this.routeinfoService = routeinfoService;
	}
	
	
	public String addRouteInfo() throws Exception{
		//routepublisher = (int)session().getAttribute("uid");
		routepublisher = 1;
		routepublishdate = new Date();
		Routeinfo routeinfo = new Routeinfo(routedays, routepublisher, routetitle, routepublishdate, routeintro);
		routeinfoService.addRouteInfo(routeinfo);
		
		routeid = routeinfo.getRouteid();
		session().setAttribute("rid", routeid);
		return SUCCESS;
	}
	
}