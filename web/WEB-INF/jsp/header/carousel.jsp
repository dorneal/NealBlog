<%@ page contentType="text/html;charset=UTF-8" %>
<div class="main" style="margin-top: 50px;margin-bottom: 100px;">
    <div id="myCarousel" class="carousel slide">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="${pageContext.request.contextPath }/imgs/seven.jpg" style="width: 100%;max-height: 366px"
                     alt="First slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath }/imgs/eight.jpg" style="width: 100%;max-height: 366px"
                     alt="Second slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath }/imgs/four.jpg" style="width: 100%;max-height: 366px"
                     alt="Third slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath }/imgs/five.jpg" style="width: 100%;max-height: 366px"
                     alt="Third slide">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath }/imgs/six.jpg" style="width: 100%;max-height: 366px"
                     alt="Third slide">
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="carousel-control left" href="#myCarousel"
           data-slide="prev"></a>
        <a class="carousel-control right" href="#myCarousel"
           data-slide="next"></a>
    </div>
</div>