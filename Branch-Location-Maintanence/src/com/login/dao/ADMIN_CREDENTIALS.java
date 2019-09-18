package com.login.dao;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ADMIN_CREDENTIALS {

	@Id
	private String USERNAME;
	private String PASSWORD;

	public String getUSERNAME() {
		return USERNAME;
	}

	@Override
	public String toString() {
		return "ADMIN_CREDENTIALS [USERNAME=" + USERNAME + ", PASSWORD=" + PASSWORD + "]";
	}

	public void setUSERNAME(String uSERNAME) {
		USERNAME = uSERNAME;
	}

	public String getPASSWORD() {
		return PASSWORD;
	}

	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}

}
