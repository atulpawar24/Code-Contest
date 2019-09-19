package com.service.dao;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class LATLONG {
	@Id
	public int BRANCHZIP;
	public String LAT;
	public String LON;

	@Override
	public String toString() {
		return "LATLONG [BRANCHZIP=" + BRANCHZIP + ", LAT=" + LAT + ", LON=" + LON + "]";
	}

	public int getBRANCHZIP() {
		return BRANCHZIP;
	}

	public void setBRANCHZIP(int bRANCHZIP) {
		BRANCHZIP = bRANCHZIP;
	}

	public String getLAT() {
		return LAT;
	}

	public void setLAT(String lAT) {
		LAT = lAT;
	}

	public String getLON() {
		return LON;
	}

	public void setLON(String lON) {
		LON = lON;
	}

}
