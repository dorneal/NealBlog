<%@ page pageEncoding="UTF-8" %>
<jsp:include page="header/header-res.jsp"/>
<body style="position: static">
	<jsp:include page="header/header.jsp"/>
<div class="main" style="margin-top: 50px;margin-bottom: 100px;">
	<div id="myCarousel" class="carousel slide">
		<!-- 轮播（Carousel）指标 -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>   
		<!-- 轮播（Carousel）项目 -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="${pageContext.request.contextPath }/imgs/one.jpg" style="width: 100%;max-height: 366px" alt="First slide">
			</div>
			<div class="item">
				<img src="${pageContext.request.contextPath }/imgs/two.jpg" style="width: 100%;max-height: 366px" alt="Second slide">
			</div>
			<div class="item">
				<img src="${pageContext.request.contextPath }/imgs/three.jpg" style="width: 100%;max-height: 366px" alt="Third slide">
			</div>
		</div>
		<!-- 轮播（Carousel）导航 -->
		<a class="carousel-control left" href="#myCarousel" 
		   data-slide="prev"></a>
		<a class="carousel-control right" href="#myCarousel" 
		   data-slide="next"></a>
	</div>

	<div class="disc container">
		<div class="row">
			<div class="col-md-4 text-center"><h2>前端技术</h2><p>介绍jsp、html、css知识</p><p><a href="" class="btn btn-default" role="button">查看详情</a></p></div>
		 	<div class="col-md-4 text-center"><h2>后端技术</h2><p>介绍JAVA及Web开发的框架知识</p><p><a href="" class="btn btn-default" role="button">查看详情</a></p></div>
		 	<div class="col-md-4 text-center"><h2>其他相关</h2><p>介绍Web开发的相关内容</p><p><a href="" class="btn btn-default" role="button">查看详情</a></p></div>
		</div>
	 </div>
</div>
<jsp:include page="footer/footer.jsp"/>
</body>
</html>