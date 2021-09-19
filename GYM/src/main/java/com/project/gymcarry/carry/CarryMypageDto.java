package com.project.gymcarry.carry;

import java.sql.Date;

import lombok.NoArgsConstructor;

public class CarryMypageDto {

	private String title;
	private boolean allday;
	private String start;
	private String end;
	
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
	public boolean getAllday() {
		return allday;
	}
	public void setAllday(boolean allday) {
		this.allday = allday;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}

	@Override
	public String toString() {
		return "CarryMypageDto [title=" + title + ", allday=" + allday + ", start=" + start
				+ ", end=" + end + "]";
	}
	
	public CarryMypageDto(String title, boolean allday, String start, String end) {
		this.title = title;
		this.allday = allday;
		this.start = start;
		this.end = end;
	}
	
	
	
	
	
}
