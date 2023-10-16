package com.satish.daoimpl;

import java.sql.*;

import com.satish.dao.Operation;
import com.satish.dbconnection.Dbconnection;
import com.satish.model.VerificationKey;

public class OperationImpl implements Operation {
	Connection con = Dbconnection.getConnection();
	PreparedStatement stmt=null;
	@Override
	public int addData(VerificationKey verificationKey) {
		try {
			stmt=con.prepareStatement("INSERT INTO VERIFICATIONKEYS(VKID,VKTYPE,VKSECRETKEY,VKPARAMETERS, VKEXPIRY,VKRECORDCREATOR,VKRECORDCREATETIME,VKRECORDVERSION)values(?,?,?,?,?,?,?,?)");
			stmt.setDouble(1,verificationKey.getVkId());
			stmt.setString(2,verificationKey.getVkType());  
			stmt.setString(3,verificationKey.getVkSecretKey());  
			stmt.setString(4,verificationKey.getVkParameters());  
			stmt.setDate(5,Date.valueOf(verificationKey.getVkExpiry()));  
			stmt.setDouble(6,verificationKey.getVkRecordCreator	());
			stmt.setDate(7,Date.valueOf(verificationKey.getVkRecordCreateTime()));  
			stmt.setDouble(8,verificationKey.getVkRecordVersion());
			int i=stmt.executeUpdate(); 
			if(i>0) {
				return i;
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}  
		return 0;
	}

	@Override
	public int deleteData(int id) {
		try {
			stmt=con.prepareStatement("delete from VERIFICATIONKEYS where VKID=?");
			stmt.setInt(1,id);
			int i=stmt.executeUpdate(); 
			if(i>0) {
				return i;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return 0;
	}
//	public static void main(String[] args) {
//		VerificationKey var=new VerificationKey();
//		var.setVkId(20000);
//		var.setVkType("PASSWORD");
//		var.setVkSecretKey("12334");
//		var.setVkParameters("12334");
//		var.setVkExpiry("2038-10-07");
//		var.setVkRecordCreator(17);
//		var.setVkRecordCreateTime("2038-03-15");
//		var.setVkRecordVersion(20);
//		
//		OperationImpl test=new OperationImpl();
//		System.out.println(test.addData(var));
//		System.out.println(test.deleteData(20000));
//		
//	}
}
