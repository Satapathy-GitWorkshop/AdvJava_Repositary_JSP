package com.nt.service;

import com.nt.dto.Employe_dto;

public class ServiceReport {

	
	public void generateSalaryReport(Employe_dto edt) {
	//Getting the Basic Salary from 	dto class 
		float bsal=edt.getEsal();
	//Calculating gross and net salary
		float gsal=bsal*0.3f;
		float nsal=bsal+gsal;
	//Setting these two addtional value to dto class Object
		edt.setGsal(gsal);
		edt.setNsal(nsal);
	}

}
