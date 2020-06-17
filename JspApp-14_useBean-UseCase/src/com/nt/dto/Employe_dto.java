package com.nt.dto;

import java.io.Serializable;

public class Employe_dto implements Serializable {
	private String ename;
	private int eno;
	private String eadd;
	private float esal;
	private float gsal;
	private float nsal;
	
	
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public int getEno() {
		return eno;
	}
	public void setEno(int eno) {
		this.eno = eno;
	}
	public String getEadd() {
		return eadd;
	}
	public void setEadd(String eadd) {
		this.eadd = eadd;
	}
	public float getEsal() {
		return esal;
	}
	public void setEsal(float esal) {
		this.esal = esal;
	}
		public float getGsal() {
		return gsal;
	}
	public void setGsal(float gsal) {
		this.gsal = gsal;
	}
	public float getNsal() {
		return nsal;
	}
	public void setNsal(float nsal) {
		this.nsal = nsal;
	}

}//class
