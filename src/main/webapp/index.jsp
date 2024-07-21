<%@page import="com.db.DbConnect"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="component/allcss.jsp"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>



<body>
	<%@ include file="component/navbar.jsp"%>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/453.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/full.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/bg-erauniversity.in_.jpg" class="d-block w-100"
					alt="..." height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>



	<div class="container p-3">
		<p class="text-center fs-2 ">Key Features Of Our Hospital</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Hospital safety include the safety of both the patients
									and the quality of a hospital. safety includes free of errors,
									injuries, accidents, infections and disease spread.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>A safe hospital environment is considered to be an
									environment in which the comfort and safety of both patients
									and medical staff of a health facility is provided.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctor</p>
								<p>Our Doctors Support patients and their loved ones when
									and where they are needed the most.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Our medical research includes animal experiments, cell
									studies, biochemical, genetic and physiological investigations,
									and studies on the properties of drugs and materials.</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<img alt="" src="img/doc1.jpg" height="400px">
			</div>

		</div>
	</div>

	<hr>

	<div class="container p-2">
		<p class="text-center fs-2 ">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/Doc3.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Priyadarshan Tiwari</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc2.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Shaalini Singh</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc4.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Rahil Khan</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc5.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Edward Shaaen</p>
						<p class="fs-7">(Chief Director)</p>
					</div>
				</div>
			</div>

		</div>
	</div>

	<%@include file="component/footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>