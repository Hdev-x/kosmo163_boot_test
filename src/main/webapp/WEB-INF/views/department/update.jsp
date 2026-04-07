<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/head_css.jsp"></c:import>
</head>
<body id="page-top">
	<div id="wrapper">
		<c:import url="/WEB-INF/views/temp/sidebar.jsp"></c:import>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<c:import url="/WEB-INF/views/temp/topbar.jsp"></c:import>
				<!-- Page Content  -->
				<div class="container-fluid">
					<h1 class="h3 mb-4 text-gray-800">create Page</h1>
					<button class="btn btn-primary" onclick="location.href='./list'">뒤로가기</button>
					<div class="row justify-content-center">
						<div class="col-4">
							<form action="./update" method="post">
								<div class="form-group">
									<label for="departmentNo">학과 번호</label>
									<input type="text" class="form-control" id="departmentNo" name="departmentNo" value="${update.departmentNo}" readonly>
								</div>
								<div class="form-group">
									<label for="departmentName">학과 이름</label>
									<input type="text" class="form-control" id="departmentName" name="departmentName" value="${update.departmentName}">
								</div>
								<div class="form-group">
									<label for="category">학과 계열</label>
									<input type="text" class="form-control" id="category" name="category" value="${update.category}">
								</div>
								<div class="form-group">
									<label for="capacity">정원</label>
									<input type="text" class="form-control" id="capacity" name="capacity" value="${update.capacity}">
								</div>
								<div class="form-group">
									<label for="open">OPEN</label>
									<input type="radio" class="form-control" id="open" name="openYn" value="Y" ${update.openYn eq 'Y'? 'checked':''}>
									<label for="close">CLOSE</label>
									<input type="radio" class="form-control" id="close" name="openYn" value="N" ${update.openYn eq 'N'? 'checked':''}>
								</div>
								<button type="submit" class="btn btn-primary">Submit</button>
							</form>
						</div>
					</div>
					<!-- End Page Content container-fluid-->
				</div>
				<!-- End Content-->
			</div>
			<c:import url="/WEB-INF/views/temp/footer.jsp"></c:import>
			<!-- End content-wrapper -->
		</div>
		<!-- End wrapper -->
	</div>
	<c:import url="/WEB-INF/views/temp/footer_script.jsp"></c:import>
</body>
</html>