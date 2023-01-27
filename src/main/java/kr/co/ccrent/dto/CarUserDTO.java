//car_udriverid int PK 
//car_uid varchar(20) PK 
//car_upw int 
//car_uname varchar(20) 
//car_uaddr varchar(100) 
//car_uemail varchar(50) 
//car_uphone int 
//car_upoint int 
//car_pdate date 
//car_ptype varcha


 
package kr.co.ccrent.dto;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CarUserDTO{
	private int car_uno;
	private int car_udriverid;
	private String car_uid;
	private int car_upw;
	private String car_uname;
	private String car_uyear;
	private String car_uaddr;
	private String car_uemail;
	private int car_uphone;
	private int car_upoint;
	private Date car_pdate;
	private String car_ptype;
	

//	페이지처리 시작
	
	
//	페이지처리 끝
	
	
	public int getCar_uno() {
		return car_uno;
	}
	public void setCar_uno(int car_uno) {
		this.car_uno = car_uno;
	}
	public int getCar_udriverid() {
		return car_udriverid;
	}
	public void setCar_udriverid(int car_udriverid) {
		this.car_udriverid = car_udriverid;
	}
	public String getCar_uid() {
		return car_uid;
	}
	public void setCar_uid(String car_uid) {
		this.car_uid = car_uid;
	}
	public int getCar_upw() {
		return car_upw;
	}
	public void setCar_upw(int car_upw) {
		this.car_upw = car_upw;
	}
	public String getCar_uname() {
		return car_uname;
	}
	public void setCar_uname(String car_uname) {
		this.car_uname = car_uname;
	}
	public String getCar_uyear() {
		return car_uyear;
	}
	public void setCar_uyear(String car_uyear) {
		this.car_uyear = car_uyear;
	}
	public String getCar_uaddr() {
		return car_uaddr;
	}
	public void setCar_uaddr(String car_uaddr) {
		this.car_uaddr = car_uaddr;
	}
	public String getCar_uemail() {
		return car_uemail;
	}
	public void setCar_uemail(String car_uemail) {
		this.car_uemail = car_uemail;
	}
	public int getCar_uphone() {
		return car_uphone;
	}
	public void setCar_uphone(int car_uphone) {
		this.car_uphone = car_uphone;
	}
	public int getCar_upoint() {
		return car_upoint;
	}
	public void setCar_upoint(int car_upoint) {
		this.car_upoint = car_upoint;
	}
	public Date getCar_pdate() {
		return car_pdate;
	}
	public void setCar_pdate(Date car_pdate) {
		this.car_pdate = car_pdate;
	}
	public String getCar_ptype() {
		return car_ptype;
	}
	public void setCar_ptype(String car_ptype) {
		this.car_ptype = car_ptype;
	}
	
	
	
	
	
}
