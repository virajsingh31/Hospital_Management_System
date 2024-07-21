<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Password For Users</title>
<%@include file="component/allcss.jsp" %>

<style type="text/css">
     body {
        background: url('img/pass.jpg') no-repeat center center fixed;
        background-size: cover;
        font-family: Arial, sans-serif;
    }
    .paint-card{
        box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
         border-radius: 10px;
        background: rgba(255, 255, 255, 0.3);
        padding: 20px;
        margin-top: 100px;
    }
</style>    
</head>
<body>
    <%@ include file="component/navbar.jsp" %>
    <c:if test="${empty userObj }">
    <c:redirect url="user_login.jsp"></c:redirect>
    </c:if>
    <div class="container p-4">
      <div class="row">
         <div class="col-md-4 offset-md-4">
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
              
              <form action="userChangePassword" method="post">
                <div class="mb-3">
                  <label>Enter Old Password</label>
                  <input type="text" name="oldPassword" class="form-control" required>
                </div>
                <div class="mb-3">
                  <label>Enter New Password</label>
                  <input type="text" name="newPassword" class="form-control" required>
                </div>  
                 
                 <input type="hidden" value="${userObj.id }" name="uid">
                  
                <button class="btn btn-success col-md-12">Change Password</button>
              </form>
            </div>
           </div>
         </div>
        </div>
       </div>         

</body>
</html>