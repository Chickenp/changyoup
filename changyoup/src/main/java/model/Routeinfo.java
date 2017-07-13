package model;
// Generated 2017-7-13 9:53:14 by Hibernate Tools 3.6.0.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Routeinfo generated by hbm2java
 */
public class Routeinfo implements java.io.Serializable {

	private Integer routeid;
	private int routedays;
	private int routepublisher;
	private String routetitle;
	private Date routepublishdate;
	private String routeintro;
	private Set routes = new HashSet(0);

	public Routeinfo() {
	}

	public Routeinfo(int routedays, int routepublisher, String routetitle, Date routepublishdate, String routeintro) {
		this.routedays = routedays;
		this.routepublisher = routepublisher;
		this.routetitle = routetitle;
		this.routepublishdate = routepublishdate;
		this.routeintro = routeintro;
	}

	public Routeinfo(int routedays, int routepublisher, String routetitle, Date routepublishdate, String routeintro,
			Set routes) {
		this.routedays = routedays;
		this.routepublisher = routepublisher;
		this.routetitle = routetitle;
		this.routepublishdate = routepublishdate;
		this.routeintro = routeintro;
		this.routes = routes;
	}

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

}
