package model;
// Generated 2017-9-11 20:13:15 by Hibernate Tools 3.6.0.Final

/**
 * Routelike generated by hbm2java
 */
public class Routelike implements java.io.Serializable {

	private RoutelikeId id;
	private int point;

	public Routelike() {
	}

	public Routelike(RoutelikeId id, int point) {
		this.id = id;
		this.point = point;
	}

	public RoutelikeId getId() {
		return this.id;
	}

	public void setId(RoutelikeId id) {
		this.id = id;
	}

	public int getPoint() {
		return this.point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

}