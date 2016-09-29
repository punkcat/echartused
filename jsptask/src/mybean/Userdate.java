package mybean;

import java.io.Serializable;

public class Userdate implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1048409660053813830L;
	private String name;	
	private String sex;
	private String college;
	private String prof;
	private String enrollyear;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getProf() {
		return prof;
	}
	public void setProf(String prof) {
		this.prof = prof;
	}
	public String getEnrollyear() {
		return enrollyear;
	}
	public void setEnrollyear(String enrollyear) {
		this.enrollyear = enrollyear;
	}
}
