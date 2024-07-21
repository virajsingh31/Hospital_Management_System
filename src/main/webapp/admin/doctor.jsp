<%@ page import= "java.util.List" %>
<%@ page import= "com.dao.SpecialistDao" %>
<%@ page import= "com.dao.DoctorDao" %>
<%@ page import= "java.sql.*" %>
<%@ page import= "com.db.DbConnect" %>
<%@ page import= "com.entity.Specialist" %>
<%@ page import= "com.entity.Doctor" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD DOCTOR</title>
<%@include file="../component/allcss.jsp"  %>
<style type="text/css">
    body {
        background: url('../img/doctorAP.jpg') no-repeat center center fixed;
        background-size: cover;
        font-family: Arial, sans-serif;
    }
    .paint-card{
        box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
        border-radius: 10px;
        background: rgba(255, 255, 255, 0.5);
        padding: 20px;
    }
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
   <div class="container-fluid p-3">
   <div class="row">
   
      <div class="col-md-5 offset-md-4">
        <div class="card paint-card">
           <div class="card-body">
              <p class="fs-3 text-center">Add Doctor</p>
              <c:if test="${not empty errorMsg }">
                  <p class="fs-3 text-center text-danger">${errorMsg}</p>
                  <c:remove var="errorMsg" scope="session" />
              </c:if>    
              <c:if test="${not empty sucMsg }">
                  <div class="fs-3 text-center text-success" role="alert">${sucMsg}</div>
                  <c:remove var="sucMsg" scope="session" />
              </c:if>    
              
              <form action="../addDoctor" method="post">
              <div class="mb-3">
                 <label class="form-Label">Full Name</label>
                 <input type="text" required name="fullname" class="form-control">
              </div>
               <div class="mb-3">
                 <label class="form-Label">DOB</label>
                 <input type="date" required name="dob" class="form-control">
              </div>
               <div class="mb-3">
                 <label class="form-Label">Qualification</label>
                 <input required name="qualification" type="text" class="form-control">
              </div>
               <div class="mb-3">
                 <label class="form-label">Specialist</label>
                 <select name="spec" required class="form-control">
                 <option>--select--</option>
                 
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
                 <input type="text" required name="email" class="form-control">
              </div>
              
              <div class="mb-3">
                <label class="form-Label">Mob No</label>
                <input type="text" required name="mobno" class="form-control">
              </div>
              
              <div class="mb-3">
                <label class="form-Label">Password</label>
                <input type="password" required name="password" class="form-control">
              </div>
              
              <button type="submit" class="btn btn-primary">Submit</button>
              </form>
            </div>
          </div>
        </div> 
        
        
         </div>
        </div>           
                 

</body>
</html>