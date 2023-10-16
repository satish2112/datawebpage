package com.satish.dao;

import com.satish.model.VerificationKey;

public interface Operation {
	public int addData(VerificationKey verificationKey);
	public int deleteData(int id);	
}
