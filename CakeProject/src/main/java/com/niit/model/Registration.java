package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="registration")
public class Registration 
{
	@Id
	private int Reg_Id;
	private String firstName;
	private String lastName;
	private String Contact_no;
	private String email_Id;
	private String password;
	private String confirm_password;
	public int getReg_Id() {
		return Reg_Id;
	}
	public void setReg_Id(int reg_Id) {
		Reg_Id = reg_Id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getContact_no() {
		return Contact_no;
	}
	public void setContact_no(String contact_no) {
		Contact_no = contact_no;
	}
	public String getEmail_Id() {
		return email_Id;
	}
	public void setEmail_Id(String email_Id) {
		this.email_Id = email_Id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirm_password() {
		return confirm_password;
	}
	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}
	public Registration(int reg_Id, String firstName, String lastName, String contact_no, String email_Id,
			String password, String confirm_password) {
		super();
		Reg_Id = reg_Id;
		this.firstName = firstName;
		this.lastName = lastName;
		Contact_no = contact_no;
		this.email_Id = email_Id;
		this.password = password;
		this.confirm_password = confirm_password;
	}
	public Registration() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
