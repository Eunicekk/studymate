<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>관심 장소</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/interestPlace.css" />
</head>
<body>
	<div class="main">
		<!-- 헤더 영역 -->
		<div class="header"></div>
		<div class="container">
			<!-- 사이드바 영역 -->
			<div class="sidebar">
				<ul>
					<li class="active"><a href="#">내 정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageModifyingProfile.my">정보
							수정</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPagePortfolioOk.my">내
							포트폴리오</a></li>
					<li class="active"><a href="#">카페 예약 정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageInterestPlaceOk.my">관심
							장소</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageReserveOk.my">예약
							정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageUsaDetailsOk.my">이용
							내역</a></li>
					<!-- <li class="side"><a href="cancel.jsp">취소/환불</a></li> -->
					<li class="active"><a href="#">그룹 참여 정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageLeaderGroupOk.my">내
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageInterestGroupOk.my">관심
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageParticipatingGroupOk.my">참여
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageEndGroupOk.my">종료
							그룹</a></li>
				</ul>
			</div>
			<!-- 메인 컨텐츠 영역 -->
			<div class="main-container">
				<!-- 메인 컨텐츠 헤더 영역 -->
				<div class="main-container-title">
					<h1>관심 장소</h1>
				</div>
				<!-- 관심 장소 정보 영역 -->
				<ul class="spaceList">
					<c:choose>
						<c:when test="${not empty likeCafe}">
							<c:forEach var="likeCafe" items="${likeCafe}">
								<li class="first-section"><a href="">
										<div class="SpaceItemstyle">
											<img
												src="https://img.shareit.kr:13443/prod/img/2022-07-01/9e6e7e13-220e-4ea0-8e40-1ffb76422ed5.jpg"
												alt="" class="space-img" /> <input type="button"
												class="favorite" />
										</div>
								</a>
									<div class="SpaceItemstyle-box">
										<div class="Space-container">
											<div class="Space-host-name">
											</div>
											<div class="Space-host-box">
												<span class="Space-itemstyle"> <span
													style="box-sizing: border-box; display: inline-block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: relative; max-width: 100%;">
														<img
														src="https://shareit.kr/_next/static/media/icn-chat-filled-lightgray.d59bfd98.svg"
														alt="qna-count" />
												</span> ${likeCafe.getCafeCommentCount()}
												</span> <span class="Space-itemstyle"> <span
													style="box-sizing: border-box; display: inline-block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: relative; max-width: 100%;">
														<img
														src="https://shareit.kr/_next/static/media/icn-heart-filled-lightgray.c71bc69d.svg"
														alt="favorite-cnt" />
												</span> ${likeCafe.getCafeLikeCount()}
												</span>
											</div>
										</div>
										<div class="Space-name">
											<div class="Space-name-box">
												<span class="name">${likeCafe.getStudyCafeName()}</span>
											</div>
										</div>
										<p class="Space-address">${likeCafe.getStudyCafeAddress()}</p>
										<div class="Space-price">
											<div class="Space-price-box">
												<div class="Space-price-discount">
													${likeCafe.getStudyCafePrice()}
													<p class="Price-discount">원~ / 패키지</p>
													<span class="min-time">1시간</span>
												</div>
											</div>
										</div>
										<div class="Info-content">
											<div class="Info-content-star">
												<img src="https://shareit.kr/img/review/Star_1.svg" alt="별점" />
											</div>
											4.1
											<div class="Info-content-review">(후기 19)</div>
										</div>
									</div></li>
							</c:forEach>
						</c:when>
					</c:choose>
				</ul>

				<!-- 페이지 리스트 -->
				<ul class="pagenation-list">
					<!-- 페이지 앞으로가기, 뒤로가기, 페이지 번호 버튼 -->
					<li class="prev">
						<button type="button">
							<span class="prev-button"> <img
								src="https://shareit.kr/_next/static/media/arrow-left-677294.ae6b1d0b.svg"
								alt="" class="prev-button-img" />
							</span>
						</button>
					</li>
					<li class="page-number">
						<button type="button" class="page-number-button">1</button>
					</li>
					<li class="next">
						<button type="button">
							<span class="next-button"> <img
								src="https://shareit.kr/_next/static/media/arrow-right-677294.662f8854.svg"
								alt="" class="next-button-img" />
							</span>
						</button>
					</li>
				</ul>
			</div>
		</div>

		<div class="footer"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/interestPlace.js"></script>
</body>
</html>
