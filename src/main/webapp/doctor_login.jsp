<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Login Page</title>
<%@include file="component/allcss.jsp" %> 

<style type="text/css">
    body {
        background: url('img/doctorP.jpg') no-repeat center center fixed;
        background-size: cover;
        font-family: Arial, sans-serif;
    }
    .paint-card{
        box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
        border-radius: 10px;
        background-color: rgba(255, 255, 255, 0.3);
        padding: 20px;
        margin-top: 100px;
    }
</style>    

</head>
<body>
<%@ include file="component/navbar.jsp" %>
    
    <div class="container p-5">
       <div class="row">
         <div class="col-md-4 offset-md-4">
           <div class="card paint-card">
             <div class="card-body">
               <p class="fs-4 text-center">Doctor Login</p>
               
                <c:if test="${not empty sucMsg }">
                   <p class="text-center text-success fs-5">${sucMsg}</p>
                   <c:remove var="sucMsg" scope="session"/>
               </c:if>
               
               <c:if test="${not empty errorMsg }">
                   <p class="text-center text-danger fs-3">${errorMsg}</p>
                   <c:remove var="errorMsg" scope="session"/>
               </c:if>
               
               <form action="doctorLogin" method="post">
                 <div class="mb-3">
                    <label class="form-label">Email Address</label>
                    <input required name="email" type="email" class="form-control">
                 </div>
                 <div class="mb-3">
                    <label class="form-label">Password</label>
                    <input required name="password" type="password" class="form-control">
                 </div>
                 
                 <button type="submit" class="btn bg-success text-white col-md-12">Login</button>
                </form>
               </div>
              </div>
             </div>
            </div>
           </div>  

</body>
</html>