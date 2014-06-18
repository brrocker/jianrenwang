package com.jianrenwang.data.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

/**
 * ClassName: Job
 
 * Description: 
 *
 * @author Martin Xiao
 * @version 1.0.0
 * @created Jun 18, 2014
 */
@Entity
public class Job {
	private String id;
	
	private String publisherID;
	private String name;
	private String workplace;
	private String company;
	private String department;
	private String mailAddr;
	private Double salaryLow;
	private Double salaryHigh;
	private String detail;
	
	private String createtime;
	private String updatetime;
	private int state; //initial 0 已发布,1 下架  
	
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
	public String getPublisherID() {
		return publisherID;
	}
	public void setPublisherID(String publisherID) {
		this.publisherID = publisherID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWorkplace() {
		return workplace;
	}
	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getMailAddr() {
		return mailAddr;
	}
	public void setMailAddr(String mailAddr) {
		this.mailAddr = mailAddr;
	}
	public Double getSalaryLow() {
		return salaryLow;
	}
	public void setSalaryLow(Double salaryLow) {
		this.salaryLow = salaryLow;
	}
	public Double getSalaryHigh() {
		return salaryHigh;
	}
	public void setSalaryHigh(Double salaryHigh) {
		this.salaryHigh = salaryHigh;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public String getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
}
