package com.Lomesh.model;


import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

public class Product {

	private String id;
	private String name;
	private String description;
	private String medium;
	


	private float sizel;
	private float sizew;
	
	private int price;
	private String sold;
	
	private String corshow;
	private String topshow;
	
	private String cat_Id;
	
	
	
	
	
	@Transient
	private MultipartFile image;



	

	public String getCat_Id() {
		return cat_Id;
	}

	public void setCat_Id(String cat_Id) {
		this.cat_Id = cat_Id;
	}
	
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}



	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}



	public String getSold() {
		return sold;
	}

	public void setSold(String sold) {
		this.sold = sold;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public float getSizel() {
		return sizel;
	}

	public void setSizel(float sizel) {
		this.sizel = sizel;
	}

	public float getSizew() {
		return sizew;
	}

	public void setSizew(float sizew) {
		this.sizew = sizew;
	}

	public String getMedium() {
		return medium;
	}

	public void setMedium(String medium) {
		this.medium = medium;
	}

	public String getCorshow() {
		return corshow;
	}

	public void setCorshow(String corshow) {
		this.corshow = corshow;
	}

	public String getTopshow() {
		return topshow;
	}

	public void setTopshow(String topshow) {
		this.topshow = topshow;
	}

}
