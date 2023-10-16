package com.satish.model;

public class VerificationKey {
	@Override
	public String toString() {
		return "VerificationKey [vkId=" + vkId + ", vkType=" + vkType + ", vkSecretKey=" + vkSecretKey
				+ ", vkParameters=" + vkParameters + ", vkExpiry=" + vkExpiry + ", vkRecordCreator=" + vkRecordCreator
				+ ", vkRecordCreateTime=" + vkRecordCreateTime + ", vkRecordVersion=" + vkRecordVersion + "]";
	}

	public double getVkId() {
		return vkId;
	}

	public void setVkId(double vkId) {
		this.vkId = vkId;
	}

	public String getVkType() {
		return vkType;
	}

	public void setVkType(String vkType) {
		this.vkType = vkType;
	}

	public String getVkSecretKey() {
		return vkSecretKey;
	}

	public void setVkSecretKey(String vkSecretKey) {
		this.vkSecretKey = vkSecretKey;
	}

	public String getVkParameters() {
		return vkParameters;
	}

	public void setVkParameters(String vkParameters) {
		this.vkParameters = vkParameters;
	}

	public String getVkExpiry() {
		return vkExpiry;
	}

	public void setVkExpiry(String vkExpiry) {
		this.vkExpiry = vkExpiry;
	}

	public double getVkRecordCreator() {
		return vkRecordCreator;
	}

	public void setVkRecordCreator(double vkRecordCreator) {
		this.vkRecordCreator = vkRecordCreator;
	}

	public String getVkRecordCreateTime() {
		return vkRecordCreateTime;
	}

	public void setVkRecordCreateTime(String vkRecordCreateTime) {
		this.vkRecordCreateTime = vkRecordCreateTime;
	}

	public double getVkRecordVersion() {
		return vkRecordVersion;
	}

	public void setVkRecordVersion(double vkRecordVersion) {
		this.vkRecordVersion = vkRecordVersion;
	}

	private double vkId;
	private String vkType;
	private String vkSecretKey;
	private String vkParameters;
	private String vkExpiry;
	private double vkRecordCreator;
	private String vkRecordCreateTime;
	private double vkRecordVersion;

}
