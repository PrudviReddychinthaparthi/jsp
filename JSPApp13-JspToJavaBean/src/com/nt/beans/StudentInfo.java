package com.nt.beans;

import java.io.Serializable;

public class StudentInfo implements Serializable {

	private static final long serialVersionUID = -7959995532874384250L;

	private int sno;
	private String sname;
	private String sadd;
	private float avg;

	public StudentInfo() {
		System.out.println("Students_Info.Students_Info()");
	}

	public int getSno() {
		System.out.println("Students_Info.getSno()");
		return sno;
	}

	public void setSno(int sno) {
		System.out.println("Students_Info.setSno()");
		this.sno = sno;
	}

	public String getSname() {
		System.out.println("Students_Info.getSname()");
		return sname;
	}

	public void setSname(String sname) {
		System.out.println("Students_Info.setSname()");
		this.sname = sname;
	}

	public String getSadd() {
		System.out.println("Students_Info.getSadd()");
		return sadd;
	}

	public void setSadd(String sadd) {
		System.out.println("Students_Info.setSadd()");
		this.sadd = sadd;
	}

	public float getAvg() {
		System.out.println("Students_Info.getAvg()");
		return avg;
	}

	public void setAvg(float avg) {
		System.out.println("Students_Info.setAvg()");
		this.avg = avg;
	}

}
