package com.java.dto;

public class TestDTO {

	private String zip;
	private String z_city;
	private String z_gu;
	private String z_dong;
	private String detailed_address;
	
	public TestDTO() {
		
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		System.out.println("setter 확인 zip"+zip);
		this.zip = zip;
	}

	public String getZ_city() {
		return z_city;
	}

	public void setZ_city(String z_city) {
		System.out.println("setter 확인 zip2"+z_city);
		this.z_city = z_city;
	}

	public String getZ_gu() {
		return z_gu;
	}

	public void setZ_gu(String z_gu) {
		this.z_gu = z_gu;
	}

	public String getZ_dong() {
		return z_dong;
	}

	public void setZ_dong(String z_dong) {
		this.z_dong = z_dong;
	}

	public String getDetailed_address() {
		return detailed_address;
	}

	public void setDetailed_address(String detailed_address) {
		this.detailed_address = detailed_address;
	}
	
}
