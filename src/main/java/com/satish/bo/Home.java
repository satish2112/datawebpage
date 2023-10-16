package com.satish.bo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.satish.daoimpl.OperationImpl;
import com.satish.model.VerificationKey;

@WebServlet("/Home")
public class Home extends HttpServlet {
	OperationImpl operationImpl=new OperationImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
		response.getWriter().append("Served at:").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();
	  
//		if(request.getParameter("add")=="adddata") {
			
//			double vkId =Integer.valueOf(request.getParameter("VKID"));
//			String vkType=request.getParameter("VKTYPE");
//			String vkSecretKey=request.getParameter("VKSECRETKEY");
//			String vkParameters=request.getParameter("VKPARAMETERS");
//			String vkExpiry=request.getParameter("VKEXPIRY");
//			double vkRecordCreator=Integer.valueOf(request.getParameter("VKRECORDCREATOR"));
//			String vkRecordCreateTime=request.getParameter("VKRECORDCREATETIME");
//			double vkRecordVersion=Integer.valueOf(request.getParameter("VKRECORDVERSION"));
		
	    if(request.getParameter("operation").equalsIgnoreCase("adddata")){
	    	
			VerificationKey var=new VerificationKey();
			var.setVkId(Integer.valueOf(request.getParameter("VKID")));
			var.setVkType(request.getParameter("VKTYPE"));
			var.setVkSecretKey(request.getParameter("VKSECRETKEY"));
			var.setVkParameters(request.getParameter("VKPARAMETERS"));
			var.setVkExpiry(request.getParameter("VKEXPIRY"));
			var.setVkRecordCreator(Integer.valueOf(request.getParameter("VKRECORDCREATOR")));
			var.setVkRecordCreateTime(request.getParameter("VKRECORDCREATETIME"));
			var.setVkRecordVersion(Integer.valueOf(request.getParameter("VKRECORDVERSION")));
			operationImpl.addData(var);
			RequestDispatcher rd=request.getRequestDispatcher("display.jsp");  
	        rd.forward(request, response);  

		}else if(request.getParameter("operation").equalsIgnoreCase("deletedata")) {
			int deleteValue=operationImpl.deleteData(Integer.valueOf(request.getParameter("VKID")));
			RequestDispatcher rd=request.getRequestDispatcher("display.jsp"); 
			request.setAttribute("deleteValue", deleteValue);
	        rd.forward(request, response);  
		}else if(request.getParameter("operation").equalsIgnoreCase("searchdata")) {
			request.setAttribute("searchDatavalue",  Integer.valueOf(request.getParameter("VKID")));
			RequestDispatcher rd=request.getRequestDispatcher("display.jsp");  
	        rd.forward(request, response); 
		}
	    
	}

}