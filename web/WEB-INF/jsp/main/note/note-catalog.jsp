<%@ page pageEncoding="UTF-8" %>
<jsp:include page="../../header/header-res.jsp"/>
<body style="position: static">
<jsp:include page="../../header/header.jsp"/>

<jsp:include page="../../header/header-img.jsp"/>

<div class="disc container">
		<div class="row">
			<div class="col-md-3" style="background-color: rgb(211, 211, 211);padding-top: 20px;padding-bottom: 20px;">
				<div class="">
					<label><input type="search" name="search"></label>
					<label><input type="button" class="btn-default" name="" onclick="" value="搜索"></label>
                    <div class="container">
                        <div class="container navbar-inverse" style="margin-top: 10px;border-radius: 6px;">
                            <button type="button" class="navbar-toggle" data-toggle="collapse"
                                    data-target="#example-navbar-collapse1" style="float: left;">
                                <span class="sr-only">切换导航</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                    </div>

				</div>
                <div class="collapse navbar-collapse" id="example-navbar-collapse1">
                        <jsp:include page="dataStructure.jsp"/>
                        <jsp:include page="languages.jsp"/>
                        <jsp:include page="difficult.jsp"/>
                </div>
			</div>
			<jsp:include page="../news/newsAndOther.jsp"/>
        </div>
</div>
<jsp:include page="./../../header/redirectTop.jsp"/>
<jsp:include page="../../footer/footer.jsp"/>
</body>
</html>