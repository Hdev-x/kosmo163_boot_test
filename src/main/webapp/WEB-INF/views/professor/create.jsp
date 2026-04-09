<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/head_css.jsp"></c:import>
</head>
<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<c:import url="/WEB-INF/views/temp/sidebar.jsp"></c:import>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<c:import url="/WEB-INF/views/temp/topbar.jsp"></c:import>
				<!-- Begin Page Content -->
				<div class="container-fluid">
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800 font-weight-bold">
							<i class="fas fa-plus-circle mr-2"></i>교수 등록
						</h1>
					</div>

					<div class="row justify-content-center">
						<div class="col-lg-7">
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">신규 학과 정보 입력</h6>
								</div>
								<div class="card-body">
									<form method="post">
										<div class="form-group">
											<label for="professorNo" class="font-weight-bold"> 번호</label>
											<input type="text" class="form-control" id="professorNo"
												name="professorNo" placeholder="예: P001">
										</div>
										<div class="form-group">
											<label for="professorName" class="font-weight-bold">교수명
											</label> <input type="text" class="form-control" id="professorName"
												name="professorName" placeholder="예: 홍길동">
										</div>
										<div class="form-group">
											<label for="professorSsn" class="font-weight-bold">주민등록번호</label>
											<input type="text" class="form-control" id="professorSsn"
												name="professorSsn" placeholder="예: 123456-1234567">
										</div>
										<div class="form-group">
											<label for="professorAddress" class="font-weight-bold">주소</label>
											<input type="text" class="form-control" id="professorAddress"
												name="professorAddress" placeholder="예: 손석구 사케동">
										</div>
										<div class="form-group">
											<label for="departmentNo" class="font-weight-bold">학과
												번호</label> <input type="number" class="form-control"
												id="departmentNo" name="departmentNo"
												placeholder="숫자만 입력 가능 예: 012">
										</div>

										<hr>

										<div class="text-right">
											<a href="./list" class="btn btn-secondary mr-2">취소</a>
											<button type="submit" class="btn btn-primary px-4">등록하기</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->
			<c:import url="/WEB-INF/views/temp/footer.jsp"></c:import>
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->
	<c:import url="/WEB-INF/views/temp/footer_script.jsp"></c:import>
</body>
</html>