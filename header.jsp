<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coding House</title>
<style>
	body {
		padding: 0;
		margin: 0;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	li {
		list-style: none; 
	}
	.hidden {
		display: none;
	}
/* 	헤더 스타일 */
	header {
		width: 100%;
		position: fixed;
	}
	.header_wrap {
		display: flex;
		width: 1400px;
		margin: 0 auto;
	}
	/* 	헤더 좌측 */
	.header_left {
		padding: 15px;
		padding-top: 22px;
		font-size: 20pt;
		margin-top: 20px;
		font-weight: bold;
	}
	/* 	헤더 가운데 */
	.header_center {
		margin-top: 20px;
		position: relative;
	}
	.header_ul {
		display: flex;
		padding: 0;
	}
	.header_ul > li {
		margin: 10px;
	}
	.a {
		font-size: 18pt;
		color: red;
		font-weight: bold;
	}
	.b {
		font-size: 13pt;
		font-weight: bold;
		padding-top: 7px;
	}
	.c {
		font-size: 13pt;
		padding-top: 7px;
	}
	/* 	헤더 우측 */
	.header_right {
		margin-top: 20px;
		margin-left: 15px;
		font-size: 10pt;
	}
	.header_right > ul {
		padding-top: 13px;
	}
/* 	카테고리 오버레이 (소분류 카테고리에서 마우스 벗어나면 소분류 숨기려고 만듬)*/
	.upperOverlay {
		position: absolute;
		top: -7px;
		left: 0;
		width: 1300px;
		height: 30px;
		border: 1px solid black;	/* 테두리 지워야함! */
	}
	.downOverlay {
		position: absolute;
		top: 80px;
		left: 0;
		width: 1300px;
		height: 1000px;
		border: 1px solid black;	/* 테두리 지워야함! */
	}
/* 	소분류 */
	.innercategory {
		position: absolute;
		width: 100px;
		font-size: 10pt;
		border: 1px solid black; /* 테두리 지워야함! */
	}
	.innercategory > ul {
		padding-left: 10px;
	}
	.innerBasict {
		left: 200px;
		top: 65px;
		z-index: 5;
	}
	.innerOuter {
		left: 275px;
		top: 65px;
		z-index: 5;
	}
	.innerTop {
		left: 335px;
		top: 65px;
		z-index: 5;
	}
	.innerBottom {
		left: 380px;
		top: 65px;
		z-index: 5;
	}
	.innerShoes {
		left: 560px;
		top: 65px;
		z-index: 5;
	}
	.innerAcc {
		left: 675px;
		top: 65px;
		z-index: 5;
	}
	.innerBoard {
		left: 820px;
		top: 65px;
		z-index: 5;
	}
/* 	검색 오버레이 */
	.search_overlay {
		position: absolute;
		width: 100%;
		height: 100%;
		left: 0;
		top: 0;
		background-color: rgba(0, 0, 0, 0.8);
	}
	.search_modal {
		position: absolute;
		left: 25%;
		top: 10%;
		width: 50%;
		height: 800px;
		background-color: inherit;
		z-index: 5;
	}
	.close_modal {
		float: right;
		font-size: 20pt;
		font-weight: bold;
		color: white;
	}
	.search_div {
		margin-top: 200px;
		text-align: center;
		font-size: 30pt;
		font-weight: bold;
		color: white;
	}
	.search_div > form > input {
		border: 2px solid white;
		width: 550px;
		height: 50px;
		background-color: inherit;
		color: white;
		font-size: 20pt;
	}
	.small_font {
		font-size: 10pt;
	}
</style>
</head>
<body>

<header>	<!-- 헤더 -->
	<div class="header_wrap">
	<div class="header_left">	<!-- 로고 -->
		<a href="${cpath }/">THE VERLIN</a>
	</div>
	<div class="header_center">	<!-- 카테고리 -->
		<ul class="header_ul">
			<li class="a"><a class="category" href="">MADE</a></li>
			<li class="b"><a class="category" href="">New</a></li>
			<li class="b"><a class="category" href="">Sale</a></li>
			<li class="c"><a class="category basic_t" href="">Basic-T</a></li>
			<li class="c"><a class="category outer" href="">outer</a></li>
			<li class="c"><a class="category top" href="">top</a></li>
			<li class="c"><a class="category bottom" href="">bottom</a></li>
			<li class="c"><a class="category" href="">dress</a></li>
			<li class="c"><a class="category" href="">set</a></li>
			<li class="c"><a class="category shoes" href="">shoes</a></li>
			<li class="c"><a class="category" href="">bag</a></li>
			<li class="c"><a class="category acc" href="">acc</a></li>
			<li class="c"><a class="category" href="">innerwear</a></li>
			<li class="category c board">board</li>
		</ul>
		<!-- 	소분류 카테고리	-->
		<div class="innercategory innerBasict hidden">
			<ul>
				<li><a href="">tee</a></li>
			</ul>
		</div>
		<div class="innercategory innerOuter hidden">
			<ul>
				<li><a href="">coat</a></li>
				<li><a href="">jacket</a></li>
				<li><a href="">jumper</a></li>
				<li><a href="">cardigan</a></li>
			</ul>
		</div>
		<div class="innercategory innerTop hidden">
			<ul>
				<li><a href="">1/2 tee</a></li>
				<li><a href="">tee</a></li>
				<li><a href="">shirt / blouse</a></li>
				<li><a href="">knit</a></li>
				<li><a href="">sleeveless</a></li>
			</ul>
		</div>
		<div class="innercategory innerBottom hidden">
			<ul>
				<li><a href="">denim</a></li>
				<li><a href="">pants</a></li>
				<li><a href="">skirt</a></li>
			</ul>
		</div>
		<div class="innercategory innerShoes hidden">
			<ul>
				<li><a href="">mule</a></li>
				<li><a href="">loafers</a></li>
				<li><a href="">boots</a></li>
				<li><a href="">heels</a></li>
				<li><a href="">sandal</a></li>
				<li><a href="">slipper</a></li>
			</ul>
		</div>
		<div class="innercategory innerAcc hidden">
			<ul>
				<li><a href="">earring</a></li>
				<li><a href="">ring</a></li>
				<li><a href="">scarf / muffler</a></li>
				<li><a href="">belt</a></li>
				<li><a href="">hair</a></li>
				<li><a href="">cap</a></li>
				<li><a href="">necklace</a></li>
				<li><a href="">bracelet</a></li>
				<li><a href="">etc</a></li>
			</ul>
		</div>
		<div class="innercategory innerBoard hidden">
			<ul>
				<li><a href="">notice</a></li>
				<li><a href="">q & a</a></li>
				<li><a href="">review</a></li>
			</ul>
		</div>
		<!--	소분류 카테고리 사라지게하려고		-->
		<div class="innercategory_overlay downOverlay hidden"></div>
		<div class="innercategory_overlay upperOverlay hidden"></div>
	</div>
	<div class="header_right">	<!-- 기능메뉴(로그인 ~ 검색) -->
		<ul class="header_ul">
			<li><a href="">LOGIN</a></li>
			<li><a href="">JOIN</a></li>
			<li><a href="">MYPAGE</a></li>
			<li><a href="">CART</a></li>	<!-- CART 뒤에 담긴상품 갯수 출력해야함 (미완)-->
			<li><img class="searchIcon" src="resources/image/search_btn.png"></li>
		</ul>
	</div>
	</div>
</header>

<!-- 검색 모달 -->
<div class="search_modal hidden">
	<div class="close_modal"><a href="">X</a></div>
	<div class="search_div">
		<p><a href="${cpath }/">the verlin</a></p>
		<!-- get , post 어떤방식이 더 좋을지 의견 나누기 (미완)--> 
		<form method="GET" action="/search">
			<input type="search" name="search">
		</form>
		<p class="small_font">HOT</p>
	</div>
</div>
<!-- 검색 오버레이 -->
<div class="search_overlay hidden"></div>


<!-- 카테고리 관련 스크립트 -->
<script>
	const category = document.querySelectorAll('.category')
	const innerCategory = document.querySelectorAll('.innercategory')
	const innerCategoryOverlay = document.querySelectorAll('.innercategory_overlay')

// 	각 li마다 onmouseover
	category.forEach(e => {
		console.log(e)
		e.onmouseover = function(event) {
			if(event.target.classList.contains('basic_t')) {
				baiscTHandler()
			} else if (event.target.classList.contains('outer')) {
				outerHandler()
			} else if (event.target.classList.contains('top')) {
				topHandler()
			} else if (event.target.classList.contains('bottom')) {
				bottomHandler()
			} else if (event.target.classList.contains('shoes')) {
				shoesHandler()
			} else if (event.target.classList.contains('acc')) {
				accHandler()
			} else if (event.target.classList.contains('board')) {
				boardHandler()
			} else {
				hiddenHandler()
			}
		}
	})
// 	베이직t 소분류 카테고리 보이게하기
	function baiscTHandler() {
		innerCategory.forEach(e => {
			if(e.classList.contains('innerBasict')) {
				e.classList.remove('hidden')
				innerCategoryOverlay.forEach(element => {
					element.classList.remove('hidden')
				})
			} else {
				e.classList.add('hidden')
			}
		})
	}
// 	아우터 소분류 카테고리 보이게 하기
	function outerHandler() {
		innerCategory.forEach(e => {
			if(e.classList.contains('innerOuter')) {
				e.classList.remove('hidden')
				innerCategoryOverlay.forEach(e => {
					e.classList.remove('hidden')
				})
			} else {
				e.classList.add('hidden')
			}
		})
	}
// 	탑 소분류 카테고리 보이게 하기
	function topHandler() {
		innerCategory.forEach(e => {
			if(e.classList.contains('innerTop')) {
				e.classList.remove('hidden')
				innerCategoryOverlay.forEach(e => {
					e.classList.remove('hidden')
				})
			} else {
				e.classList.add('hidden')
			}
		})
	}
// 	바텀 소분류 카테고리 보이게 하기
	function bottomHandler() {
		innerCategory.forEach(e => {
			if(e.classList.contains('innerBottom')) {
				e.classList.remove('hidden')
				innerCategoryOverlay.forEach(e => {
					e.classList.remove('hidden')
				})
			} else {
				e.classList.add('hidden')
			}
		})
	}
// 	슈즈 소분류 카테고리 보이게 하기
	function shoesHandler() {
		innerCategory.forEach(e => {
			if(e.classList.contains('innerShoes')) {
				e.classList.remove('hidden')
				innerCategoryOverlay.forEach(e => {
					e.classList.remove('hidden')
				})
			} else {
				e.classList.add('hidden')
			}
		})
	}
// 	악세 소분류 카테고리 보이게 하기
	function accHandler() {
		innerCategory.forEach(e => {
			if(e.classList.contains('innerAcc')) {
				e.classList.remove('hidden')
				innerCategoryOverlay.forEach(e => {
					e.classList.remove('hidden')
				})
			} else {
				e.classList.add('hidden')
			}
		})
	}
// 	보드 소분류 카테고리 보이게 하기
	function boardHandler() {
		innerCategory.forEach(e => {
			if(e.classList.contains('innerBoard')) {
				e.classList.remove('hidden')
				innerCategoryOverlay.forEach(e => {
					e.classList.remove('hidden')
				})
			} else {
				e.classList.add('hidden')
			}
		})
	}
// 	소분류 카테고리 숨기기
	function hiddenHandler() {
		innerCategory.forEach(e => {
			if(!e.classList.contains('hidden')) {
				e.classList.add('hidden')
				innerCategoryOverlay.forEach(element => {
					element.classList.add('hidden')
				})
			}
		})
	}
	innerCategoryOverlay.forEach(e => {
		e.onmouseover = hiddenHandler
	})
</script>

<!-- 검색 관련 스크립트 -->
<script>
	const searchIcon = document.querySelector('.searchIcon')
	searchIcon.onmouseover = searchIcon.style.cursor = 'pointer'
	const searchOverlay = document.querySelector('.search_overlay')
	const searchModal = document.querySelector('.search_modal')
	
	searchIcon.onclick = function() {
		searchOverlay.classList.remove('hidden')
		searchModal.classList.remove('hidden')
	} 
</script>
