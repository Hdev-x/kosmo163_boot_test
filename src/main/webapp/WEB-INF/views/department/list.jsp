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
					<h1 class="h3 mb-4 text-gray-800">
						학과 목록 Page
						<div class="row justify-content-center">
							<div class="col-6">
								<table class="table" style="text-align: center;">
									<thead class="thead-dark">
										<tr>
											<th>학과명</th>
											<th>학과 계열</th>
											<th>개설 여부</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list}" var="l">
											<tr>
												<td>
													<h5>
														<a href="./detail?num=${l.departmentNo}">${l.departmentName}
													</h5>
												</td>
												<td>
													<h5>${l.category}</h5>
												</td>
												<c:choose>
													<c:when test="${l.openYn eq 'Y'}">
														<td>
															<h5>OPEN</h5>
														</td>
													</c:when>
													<c:otherwise>
														<td>
															<h5>CLOSE</h5>
														</td>
													</c:otherwise>
												</c:choose>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<button class="btn btn-primary" onclick="location.href='./create'">학과 등록</button>
							</div>
						</div>
					</h1>
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