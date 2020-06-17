package com.nt.beans;

import java.io.Serializable;

public class Person_beans  implements Serializable{
	private String  pname;
	private  int pno;
	private  String padds;
	private float sal;
	
	//All Property Getter Method & Setter method
	public String getPname() {
		System.out.println("Person_beans.getPname()");
		return pname;
	}
	
	public void setPname(String pname) {
		System.out.println("Person_beans.setPname()");
		this.pname = pname;
	}
	public int getPno() {
		System.out.println("Person_beans.getPno()");
		return pno;
	}
	public void setPno(int pno) {
		System.out.println("Person_beans.setPno()");
		this.pno = pno;
	}
	public String getPadds() {
		System.out.println("Person_beans.getPadds()");
		return padds;
	}
	public void setPadds(String padds) {
		System.out.println("Person_beans.setPadds()");
		this.padds = padds;
	}
	public float getSal() {
		System.out.println("Person_beans.getSal()");
		return sal;
	}
	public void setSal(float sal) {
		System.out.println("Person_beans.setSal()");
		this.sal = sal;
	}

}
