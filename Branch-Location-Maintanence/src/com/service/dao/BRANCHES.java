package com.service.dao;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class BRANCHES {
	@Id
	private int BRANCHID;
	private String BRANCHNAME;
	private String BRANCHADDR;
	private int BRANCHNUM;

	public int getBRANCHID() {
		return BRANCHID;
	}

	public void setBRANCHID(int bRANCHID) {
		BRANCHID = bRANCHID;
	}

	@Override
	public String toString() {
		return "BRANCHES [BRANCHID=" + BRANCHID + ", BRANCHNAME=" + BRANCHNAME + ", BRANCHADDR=" + BRANCHADDR
				+ ", BRANCHNUM=" + BRANCHNUM + "]";
	}

	public String getBRANCHNAME() {
		return BRANCHNAME;
	}

	public void setBRANCHNAME(String bRANCHNAME) {
		BRANCHNAME = bRANCHNAME;
	}

	public String getBRANCHADDR() {
		return BRANCHADDR;
	}

	public void setBRANCHADDR(String bRANCHADDR) {
		BRANCHADDR = bRANCHADDR;
	}

	public int getBRANCHNUM() {
		return BRANCHNUM;
	}

	public void setBRANCHNUM(int bRANCHNUM) {
		BRANCHNUM = bRANCHNUM;
	}
}
