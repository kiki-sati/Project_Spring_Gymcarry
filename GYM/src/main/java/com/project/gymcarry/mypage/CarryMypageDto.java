package com.project.gymcarry.mypage;

import java.sql.Date;

public class CarryMypageDto {

	private int crscheidx;
	private String title;
	private String allday;
	private Date start;
	private Date end;
	private int cridx;
	
	
	public int getCrscheidx() {
		return crscheidx;
	}
	public void setCrscheidx(int crscheidx) {
		this.crscheidx = crscheidx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAllday() {
		return allday;
	}
	public void setAllday(String allday) {
		this.allday = allday;
	}
	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	public Date getEnd() {
		return end;
	}
	public void setEnd(Date end) {
		this.end = end;
	}
	public int getCridx() {
		return cridx;
	}
	public void setCridx(int cridx) {
		this.cridx = cridx;
	}
	
	@Override
	public String toString() {
		return "CarryMypageDto [crscheidx=" + crscheidx + ", title=" + title + ", allday=" + allday + ", start=" + start
				+ ", end=" + end + ", cridx=" + cridx + "]";
	}
	
	public CarryMypageDto(int crscheidx, String title, String allday, Date start, Date end, int cridx) {
		super();
		this.crscheidx = crscheidx;
		this.title = title;
		this.allday = allday;
		this.start = start;
		this.end = end;
		this.cridx = cridx;
	}
	
	
	
	
	
}
