<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<%@ page import= "com.db.DbConnect" %> 
<%@ page import= "com.dao.DoctorDao" %> 
<%@ page import= "com.entity.Doctor" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Dashboard</title>
<%@include file="../component/allcss.jsp" %>
<style type="text/css">
    body {
        background: url('../img/dd1.jpg') no-repeat center center fixed;
        background-size: cover;
        font-family: Arial, sans-serif;
    }
    .paint-card{
        box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
        border-radius: 10px;
        background: rgba(255, 255, 255, 0.3);
        padding: 20px;
        margin-top: 80px;
    }
</style> 
</head>
<body>

   <c:if test="${empty doctObj }">
   <c:redirect url="../doctor_login.jsp"></c:redirect>
   </c:if>

   <%@include file="navbar.jsp" %>
   <p class="text-center fs-3" style="margin-top: 50px;">Doctor Dashboard</p>
   
   <%
      Doctor d=(Doctor) session.getAttribute("doctObj");
      DoctorDao dao=new DoctorDao(DbConnect.getConn());
   %>
   
   <div class="container p-5">
     <div class="row">
       <div class="col-md-4 offset-md-2">
         <div class="card paint-card">
         <div class="card-body text-center text-success">
           <i class="fas fa-user-md fa-3x"></i><br>
             <p class="fs-4 text-center">
                Doctor<br><%=dao.countDoctor() %>
             </p>
         </div>
       </div>
     </div>
     <div class="col-md-4">
        <div class="card paint-card">
          <div class="card-body text-center text-success">
             <i class="far fa-calendar-check fa-3x"></i><br>
             <p class="fs-4 text-center">
                Total Appointment<br><%=dao.countAppointmentByDoctorId(d.getId()) %>
             </p>
          </div>
        </div>
       </div>
      </div>
     </div>  
</body>
</html>