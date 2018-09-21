package com.ycxy.model;

/**
 * 用户列表
 * 验证登录或新用户注册
 * @author ASUS
 *
 */
public class ProUser {

	//用户id
	private String id;
	//用户真实姓名
	private String trueName;
	//用户手机号码
	private String phone;
	//用户性别
	private String sex;
	//用户所在学院
	private String faculty;
	//用户登录密码
	private String password;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTrueName() {
		return trueName;
	}

	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getFaculty() {
		return faculty;
	}

	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "ProUser [id=" + id + ", trueName=" + trueName + ", phone=" + phone + ", sex=" + sex + ", faculty="
				+ faculty + ", password=" + password + "]";
	}

}
