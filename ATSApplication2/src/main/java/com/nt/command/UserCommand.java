package com.nt.command;

import java.util.Date;

/**
 * 
 * Usercommand class
 * */
public class UserCommand {
	private String firstName;
	private String lastName;
	private String email;
	private String gender;
	private String pazzword;
	private String role;
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	private String newPazzword;
	public String getNewPazzword() {
		return newPazzword;
	}
	public void setNewPazzword(String newPazzword) {
		this.newPazzword = newPazzword;
	}
	private String pazzword_confirm;
	public String getPazzword_confirm() {
		return pazzword_confirm;
	}
	public void setPazzword_confirm(String pazzword_confirm) {
		this.pazzword_confirm = pazzword_confirm;
	}
	public String getPazzword() {
		return pazzword;
	}
	public void setPazzword(String pazzword) {
		this.pazzword = pazzword;
	}
	private long phno;
	private Date dob;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public long getPhno() {
		return phno;
	}
	public void setPhno(long phno) {
		this.phno = phno;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	
	

}
