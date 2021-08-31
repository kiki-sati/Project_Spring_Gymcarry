package com.project.gymcarry.place;

import lombok.*;

@Getter
@Setter
@ToString
@NoArgsConstructor 	//기본 생성자
@AllArgsConstructor // 모든생성자
public class PlaceDtoMap {

	private int placeidx;
	private String placename;
	private String placeaddress;
	private double latitude;
	private double longitude;
	private String placephone;
	private String placeinfo;
	private String placeintro;
	private String opnehour;
	private String placeimg;

}