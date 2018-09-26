package com.ycxy.model;

/**
 * 商品发布状态类
 * 
 * @author ASUS
 *
 */

public class TranState {

	private String id;
	private String state;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "TranState [id=" + id + ", state=" + state + "]";
	}

}
