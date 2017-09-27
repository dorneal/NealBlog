<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<jsp:include page="./../header/header-res.jsp"/>
<body style="position: static">
<jsp:include page="./../header/header.jsp"/>

<jsp:include page="./../header/header-img.jsp"/>

<div class="disc container">
    <div class="row">
        <jsp:include page="./../header/nav/navpath.jsp"/>
        <div class="col-md-2"></div>
        <div class="col-md-6">
            <form action="" method="post">
                <div class=""><h3>留下你的脚印</h3>
                    <!--PC和WAP自适应版-->
                    <div id="SOHUCS"></div>
                    <script type="text/javascript">
                        (function () {
                            var appid = 'cyteoUJ8P';
                            var conf = '23c0e8026b1cba45ef9f51cfdd5bc48b';
                            var width = window.innerWidth || document.documentElement.clientWidth;
                            if (width < 960) {
                                window.document.write('<script id="changyan_mobile_js" charset="utf-8" type="text/javascript" src="http://changyan.sohu.com/upload/mobile/wap-js/changyan_mobile.js?client_id=' + appid + '&conf=' + conf + '"><\/script>');
                            } else {
                                var loadJs = function (d, a) {
                                    var c = document.getElementsByTagName("head")[0] || document.head || document.documentElement;
                                    var b = document.createElement("script");
                                    b.setAttribute("type", "text/javascript");
                                    b.setAttribute("charset", "UTF-8");
                                    b.setAttribute("src", d);
                                    if (typeof a === "function") {
                                        if (window.attachEvent) {
                                            b.onreadystatechange = function () {
                                                var e = b.readyState;
                                                if (e === "loaded" || e === "complete") {
                                                    b.onreadystatechange = null;
                                                    a()
                                                }
                                            }
                                        } else {
                                            b.onload = a
                                        }
                                    }
                                    c.appendChild(b)
                                };
                                loadJs("http://changyan.sohu.com/upload/changyan.js", function () {
                                    window.changyan.api.config({appid: appid, conf: conf})
                                });
                            }
                        })(); </script>
                </div>
            </form>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>
<jsp:include page="./../header/redirectTop.jsp"/>
<jsp:include page="./../footer/footer.jsp"/>
</body>
</html>
