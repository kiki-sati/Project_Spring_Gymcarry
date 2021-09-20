package com.project.gymcarry.carry;

import java.sql.Date;

import lombok.NoArgsConstructor;

public class CarryMypageDto {

	private String title;
	private String allday;
	private Date start;
	private Date end;
	private int cridx;
	
	public CarryMypageDto() {}
	
	// jsondata : [{"title":"jj",
	//"allday":true,
	//"start":"2021-09-15T00:00:00.000Z",
	//"end":"2021-09-17T00:00:00.000Z"},{"title":";';'","allday":false,"start":"2021-09-24T12:00:00.000Z","end":"2021-09-24T13:00:00.000Z/"}]
	
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
		return "CarryMypageDto [title=" + title + ", allday=" + allday + ", start=" + start
				+ ", end=" + end +  ", cridx=" + cridx + "]";
	}
	
	public CarryMypageDto(String title, String allday, Date start, Date end, int cridx) {
		this.title = title;
		this.allday = allday;
		this.start = start;
		this.end = end;
		this.cridx = cridx;
	}
	
	
	
	
	
}
