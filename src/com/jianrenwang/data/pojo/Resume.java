package com.jianrenwang.data.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Resume {
	private String id;
	private String realName;
	private String mobile;
	private String email;
	private int birthyear;
	private String currentcompany;
	private String currentjob;
	private int workage;
	private String city;
	private String experience;
	private String education;
	private String interestcitys;
	private String interestjobs;
	private String privatestatus;
	private String portfolio;
	private String gam;
	private int salary;
	private String accountID = "";
	
	@Id
	@Column(length = 32)
	@GeneratedValue(generator = "system-uuid")
	@GenericGenerator(name = "system-uuid", strategy = "uuid")
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getBirthyear() {
		return birthyear;
	}
	public void setBirthyear(int birthyear) {
		this.birthyear = birthyear;
	}
	public String getCurrentcompany() {
		return currentcompany;
	}
	public void setCurrentcompany(String currentcompany) {
		this.currentcompany = currentcompany;
	}
	public String getCurrentjob() {
		return currentjob;
	}
	public void setCurrentjob(String currentjob) {
		this.currentjob = currentjob;
	}
	public int getWorkage() {
		return workage;
	}
	public void setWorkage(int workage) {
		this.workage = workage;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getInterestcitys() {
		return interestcitys;
	}
	public void setInterestcitys(String interestcitys) {
		this.interestcitys = interestcitys;
	}
	public String getInterestjobs() {
		return interestjobs;
	}
	public void setInterestjobs(String interestjobs) {
		this.interestjobs = interestjobs;
	}
	public String getPrivatestatus() {
		return privatestatus;
	}
	public void setPrivatestatus(String privatestatus) {
		this.privatestatus = privatestatus;
	}
	public String getPortfolio() {
		return portfolio;
	}
	public void setPortfolio(String portfolio) {
		this.portfolio = portfolio;
	}
	public String getGam() {
		return gam;
	}
	public void setGam(String gam) {
		this.gam = gam;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getAccountID() {
		return accountID;
	}
	public void setAccountID(String accountID) {
		this.accountID = accountID;
	}
	
}
