package com.service.dao;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class BRANCHES {

	@Id
	private int BRANCHID;
	private String BRANCHNAME;
	private String BRANCHCON;
	private String BRANCHSTATE;
	private String BRANCHCITY;
	private int BRANCHZIP;
	private long BRANCHNUM;

	public int getBRANCHID() {
		return BRANCHID;
	}

	public void setBRANCHID(int bRANCHID) {
		BRANCHID = bRANCHID;
	}

	public String getBRANCHNAME() {
		return BRANCHNAME;
	}

	public void setBRANCHNAME(String bRANCHNAME) {
		BRANCHNAME = bRANCHNAME;
	}

	public String getBRANCHCON() {
		return BRANCHCON;
	}

	public void setBRANCHCON(String bRANCHCON) {
		BRANCHCON = bRANCHCON;
	}

	public String getBRANCHSTATE() {
		return BRANCHSTATE;
	}

	public void setBRANCHSTATE(String bRANCHSTATE) {
		BRANCHSTATE = bRANCHSTATE;
	}

	public String getBRANCHCITY() {
		return BRANCHCITY;
	}

	public void setBRANCHCITY(String bRANCHCITY) {
		BRANCHCITY = bRANCHCITY;
	}

	public int getBRANCHZIP() {
		return BRANCHZIP;
	}

	public void setBRANCHZIP(int bRANCHZIP) {
		BRANCHZIP = bRANCHZIP;
	}

	public long getBRANCHNUM() {
		return BRANCHNUM;
	}

	public void setBRANCHNUM(long bRANCHNUM) {
		BRANCHNUM = bRANCHNUM;
	}

	@Override
	public String toString() {
		return "BRANCHES [BRANCHID=" + BRANCHID + ", BRANCHNAME=" + BRANCHNAME + ", BRANCHCON=" + BRANCHCON
				+ ", BRANCHSTATE=" + BRANCHSTATE + ", BRANCHCITY=" + BRANCHCITY + ", BRANCHZIP=" + BRANCHZIP
				+ ", BRANCHNUM=" + BRANCHNUM + "]";
	}

}
