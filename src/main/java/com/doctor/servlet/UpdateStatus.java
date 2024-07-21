package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.db.DbConnect;

@WebServlet("/updateStatus")
public class UpdateStatus extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			int did=Integer.parseInt(req.getParameter("did"));
			String comm=req.getParameter("comm");
			
			AppointmentDao dao=new AppointmentDao(DbConnect.getConn());
			HttpSession session=req.getSession();
			
			if(dao.updateCommentStatus(id, did, comm)) {
				session.setAttribute("sucMsg", "Comment Updated Successfully");
				resp.sendRedirect("doctor/patient.jsp");
			}
			else {
				session.setAttribute("errorMsg", "Something Went wrong on server");
				resp.sendRedirect("doctor/patient.jsp");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
    
	
}
