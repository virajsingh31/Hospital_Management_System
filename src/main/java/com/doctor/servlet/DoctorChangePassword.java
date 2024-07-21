package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.dao.UserDao;
import com.db.DbConnect;

@WebServlet("/doctChangePassword")
public class DoctorChangePassword extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	int uid=Integer.parseInt(req.getParameter("uid"));
	String oldPassword=req.getParameter("oldPassword");
	String newPassword=req.getParameter("newPassword");
	
	DoctorDao dao=new DoctorDao(DbConnect.getConn());
	HttpSession session=req.getSession();
	
	if(dao.checkOldPassword(uid, oldPassword)) {
		if(dao.changePassword(uid, newPassword)) {
			session.setAttribute("sucMsg", "Password Changed Successfully!");
			resp.sendRedirect("doctor/edit_profile.jsp");
		}
		else {
			session.setAttribute("errorMsg", "Something Wrong On Server");
			resp.sendRedirect("doctor/edit_profile.jsp");
		}
		
	}
	else {
		session.setAttribute("errorMsg", "Old Password Inccorect");
		resp.sendRedirect("change_password.jsp");
	}
	
	}
}
