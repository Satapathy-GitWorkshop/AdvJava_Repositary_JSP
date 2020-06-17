package com.nt.service;

import java.util.Random;

public class addRotator {
	//String images and Link in array object
	   private String images[]=new String[]
			                          {"images/vimal.jpg","images/siyaram.jpg","images/raymond.jpg","images/blackberry.jpg"};
	   private String link[]=new String[] {
			                                                                "https://onlyvimal.co.in/",
			                                                                "https://www.siyaram.com/",
			                                                                "https://www.raymond.in/",
			                                                                "https://blackberrys.com/"
	                                                                       };
	 //Generating random sudoCode 
	   private int counter=0 ;
	public void nextAddvertisement() {
	counter=new Random().nextInt(4);
	}
	
//Generating getter  method for above property
	public String getLink() {
		return link[counter];
	}
public String getImages() {
	return images[counter];
}

}//class
