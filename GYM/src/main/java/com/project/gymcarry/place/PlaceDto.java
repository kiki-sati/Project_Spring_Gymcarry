package com.project.gymcarry.place;

public class PlaceDto {

	private int placenum;
	private int placeidx;
	private String placename;
	private String placeaddress;
<<<<<<< HEAD
	private float latitude;
	private float longitude;
=======
	private double latitude;
	private double longitude;
>>>>>>> a05_test
	private String placephone;
	private String placeinfo;
	private String placeintro;
	private String openhour;
	private String placeimg;
	
<<<<<<< HEAD
	// 기본 생성자
	public PlaceDto() {}

	public PlaceDto(int placenum, int placeidx, String placename, String placeaddress, float latitude, float longitude,
			String placephone, String placeinfo, String placeintro, String openhour, String placeimg) {
		super();
=======
	
	public PlaceDto () {}
	
	public PlaceDto(int placenum, int placeidx, String placename, String placeaddress, double latitude,
			double longitude, String placephone, String placeinfo, String placeintro, String openhour,
			String placeimg) {
		
>>>>>>> a05_test
		this.placenum = placenum;
		this.placeidx = placeidx;
		this.placename = placename;
		this.placeaddress = placeaddress;
		this.latitude = latitude;
		this.longitude = longitude;
		this.placephone = placephone;
		this.placeinfo = placeinfo;
		this.placeintro = placeintro;
		this.openhour = openhour;
		this.placeimg = placeimg;
<<<<<<< HEAD
	}

	public int getPlacenum() {
		return placenum;
	}

	public void setPlacenum(int placenum) {
		this.placenum = placenum;
	}

=======
	}
	public int getPlacenum() {
		return placenum;
	}
	public void setPlacenum(int placenum) {
		this.placenum = placenum;
	}
>>>>>>> a05_test
	public int getPlaceidx() {
		return placeidx;
	}

	public void setPlaceidx(int placeidx) {
		this.placeidx = placeidx;
	}

	public String getPlacename() {
		return placename;
	}

	public void setPlacename(String placename) {
		this.placename = placename;
	}
<<<<<<< HEAD

=======
>>>>>>> a05_test
	public String getPlaceaddress() {
		return placeaddress;
	}

	public void setPlaceaddress(String placeaddress) {
		this.placeaddress = placeaddress;
	}
<<<<<<< HEAD

	public float getLatitude() {
		return latitude;
	}

	public void setLatitude(float latitude) {
		this.latitude = latitude;
	}

	public float getLongitude() {
		return longitude;
	}

	public void setLongitude(float longitude) {
		this.longitude = longitude;
	}

=======
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
>>>>>>> a05_test
	public String getPlacephone() {
		return placephone;
	}

	public void setPlacephone(String placephone) {
		this.placephone = placephone;
	}
<<<<<<< HEAD

	public String getPlaceinfo() {
		return placeinfo;
	}

	public void setPlaceinfo(String placeinfo) {
		this.placeinfo = placeinfo;
	}

	public String getPlaceintro() {
		return placeintro;
	}

	public void setPlaceintro(String placeintro) {
		this.placeintro = placeintro;
	}

	public String getOpenhour() {
		return openhour;
	}

	public void setOpenhour(String openhour) {
		this.openhour = openhour;
	}

	public String getPlaceimg() {
		return placeimg;
	}

=======
	public String getPlaceinfo() {
		return placeinfo;
	}
	public void setPlaceinfo(String placeinfo) {
		this.placeinfo = placeinfo;
	}
	public String getPlaceintro() {
		return placeintro;
	}
	public void setPlaceintro(String placeintro) {
		this.placeintro = placeintro;
	}
	public String getOpenhour() {
		return openhour;
	}
	public void setOpenhour(String openhour) {
		this.openhour = openhour;
	}
	public String getPlaceimg() {
		return placeimg;
	}
>>>>>>> a05_test
	public void setPlaceimg(String placeimg) {
		this.placeimg = placeimg;
	}

	@Override
	public String toString() {
		return "PlaceDto [placenum=" + placenum + ", placeidx=" + placeidx + ", placename=" + placename
				+ ", placeaddress=" + placeaddress + ", latitude=" + latitude + ", longitude=" + longitude
				+ ", placephone=" + placephone + ", placeinfo=" + placeinfo + ", placeintro=" + placeintro
				+ ", openhour=" + openhour + ", placeimg=" + placeimg + "]";
	}
	
	
	
	
	

}



