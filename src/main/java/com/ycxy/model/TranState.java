package com.ycxy.model;

/**
 * ��Ʒ����״̬��
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
