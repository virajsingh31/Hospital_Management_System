<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@ page import= "java.util.List" %>
<%@ page import= "com.dao.SpecialistDao" %>
<%@ page import= "com.dao.DoctorDao" %>
<%@ page import= "java.sql.*" %>
<%@ page import= "com.db.DbConnect" %>
<%@ page import= "com.entity.Specialist" %>
<%@ page import= "com.entity.Doctor" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile for Doctors</title>
<%@include file="../component/allcss.jsp" %> 
<style type="text/css">
    body {
        background: url('../img/editP1.jpg') no-repeat center center fixed;
        background-size: cover;
        font-family: Arial, sans-serif;
    }
    .paint-card{
        box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
        border-radius: 10px;
        background: rgba(255, 255, 255, 0.3);
        
    }
</style>  

</head>
<body>
 <c:if test="${empty doctObj }">
   <c:redirect url="../doctor_login.jsp"></c:redirect>
   </c:if>

   <%@include file="navbar.jsp" %>
   
   <div class="container p-4">
      <div class="row">
         <div class="col-md-4">
            <div class="card paint-card">
              <p class="text-center fs-3">Change Password</p>
              
              <c:if test="${not empty sucMsg }">
                   <p class="text-center text-success fs-5">${sucMsg}</p>
                   <c:remove var="sucMsg" scope="session"/>
               </c:if>
               
               <c:if test="${not empty errorMsg }">
                   <p class="text-center text-danger fs-3">${errorMsg}</p>
                   <c:remove var="errorMsg" scope="session"/>
               </c:if>
               
              <div class="card-body">
              
              <form action="../doctChangePassword" method="post">
                <div class="mb-3">
                  <label>Enter Old Password</label>
                  <input type="text" name="oldPassword" class="form-control" required>
                </div>
                <div class="mb-3">
                  <label>Enter New Password</label>
                  <input type="text" name="newPassword" class="form-control" required>
                </div>  
                 
                 <input type="hidden" value="${doctObj.id }" name="uid">
                  
                <button class="btn btn-success col-md-12">Change Password</button>
              </form>
            </div>
           </div>
         </div>
         
         <div class="col-md-8">
           <div class="card paint-card">
              <div class="card-body">
              <p class="text-center fs-3">Edit Profile</p>
                <c:if test="${not empty sucMsgd }">
                   <p class="text-center text-success fs-5">${sucMsgd}</p>
                   <c:remove var="sucMsgd" scope="session"/>
               </c:if>
               
               <c:if test="${not empty errorMsgd }">
                   <p class="text-center text-danger fs-3">${errorMsgd}</p>
                   <c:remove var="errorMsgd" scope="session"/>
               </c:if>
              
                 <form action="../doctorUpdateProfile" method="post">
              <div class="mb-3">
                 <label class="form-Label">Full Name</label>
                 <input type="text" required name="fullname" class="form-control" 
                        value="${doctObj.fullName }">
              </div>
               <div class="mb-3">
                 <label class="form-Label">DOB</label>
                 <input type="date" required name="dob" class="form-control" 
                        value="${doctObj.dob }">
              </div>
               <div class="mb-3">
                 <label class="form-Label">Qualification</label>
                 <input required name="qualification" type="text" class="form-control" 
                        value="${doctObj.qualification }">
              </div>
               <div class="mb-3">
                 <label class="form-label">Specialist</label>
                 <select name="spec" required class="form-control">
                 <option>${doctObj.specialist}</option>
                 
                 <%
                 SpecialistDao dao=new SpecialistDao(DbConnect.getConn());
                 List<Specialist> list=dao.getAllSpecialist();
                 for(Specialist s : list){
                 %>
                 <option><%=s.getSpecialistName() %></option>
                 <%
                 }
                 %>
                 </select>
              </div>
              
              <div class="mb-3">
                 <label class="form_Label">Email</label>
                 <input type="text" readonly required name="email" class="form-control" 
                        value="${doctObj.email }">
              </div>
              
              <div class="mb-3">
                <label class="form-Label">Mob No</label>
                <input type="text" required name="mobno" class="form-control" 
                       value="${doctObj.mobNo }">
              </div>
              
              <input type="hidden" name="id" value="${doctObj.id }">
              
              <button type="submit" class="btn btn-primary">Update</button>
              </form>
              
              </div>
           </div>
         </div>
         
        </div>
       </div>         

</body>
</html>