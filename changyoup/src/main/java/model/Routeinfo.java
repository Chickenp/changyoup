package model;
// Generated 2017-7-10 15:39:42 by Hibernate Tools 3.6.0.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Routeinfo generated by hbm2java
 */
public class Routeinfo implements java.io.Serializable {

	private Integer routeid;
	private int routedays;
	private int routepublisher;
	private Set routes = new HashSet(0);

	public Routeinfo() {
	}

	public Routeinfo(int routedays, int routepublisher) {
		this.routedays = routedays;
		this.routepublisher = routepublisher;
	}

	public Routeinfo(int routedays, int routepublisher, Set routes) {
		this.routedays = routedays;
		this.routepublisher = routepublisher;
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

	public Set getRoutes() {
		return this.routes;
	}

	public void setRoutes(Set routes) {
		this.routes = routes;
	}

}
