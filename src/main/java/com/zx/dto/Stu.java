package com.zx.dto;

public class Stu {
 private int id;
 private int xid;
 private String name;
 private String sex;
 private String date;
 private int count;
 private String dname;
public Stu() {
	super();
	// TODO Auto-generated constructor stub
}
public Stu(int id, int xid, String name, String sex, String date, int count, String dname) {
	super();
	this.id = id;
	this.xid = xid;
	this.name = name;
	this.sex = sex;
	this.date = date;
	this.count = count;
	this.dname = dname;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getXid() {
	return xid;
}
public void setXid(int xid) {
	this.xid = xid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}
public String getDname() {
	return dname;
}
public void setDname(String dname) {
	this.dname = dname;
}
@Override
public String toString() {
	return "Stu [id=" + id + ", xid=" + xid + ", name=" + name + ", sex=" + sex + ", date=" + date + ", count=" + count
			+ ", dname=" + dname + "]";
}
 
}
