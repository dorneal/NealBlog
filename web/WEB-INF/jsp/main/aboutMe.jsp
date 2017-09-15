<%@ page pageEncoding="UTF-8" %>
<jsp:include page="./../header/header-res.jsp"/>
<body style="position: static">
<jsp:include page="./../header/header.jsp"/>

<jsp:include page="./../header/header-img.jsp"/>

<div class="disc container">
    <div class="row">
        <jsp:include page="./../header/nav/navpath.jsp"/>
        <div class="col-md-1"></div>
        <div class="col-md-11">
            <h1 style="font-family: 宋体;border-bottom: 1px solid #cccccc;padding-bottom: 5px;">关于我</h1>
            <div class="col-md-12" style="font-size: 1.2em;font-family: Calibri;margin-bottom: 10px;">
                <p>姓名黄鹏，1996年出生于湖南永州一个小县城祁阳，沉迷于互联网魅力无法自拔的吃瓜小伙.</p>
                <p>爱好：唱歌吧,不好听，篮球吧,打不好，代码吧,码的没水准，看书吧,贪多嚼不动，听歌、玩网游反而成了我的日常（可别向我学习）.</p>
                <p>现就读湖南软件职业学院，软件信息工程系.</p>
                <p>主修课程：数据库原理与应用、数据结构、JSP、Java、JavaEE(ssh)、软件工程UML、操作系统、网页设计、JavaScript、计算机网络原理.</p>
            </div>
            <h2 style="font-family: 宋体;border-bottom: 1px solid #cccccc;padding-bottom: 5px;">照骗</h2>
            <div class="col-md-12" style="margin-bottom: 10px;">
                <p><img src="${pageContext.request.contextPath}/imgs/me1.jpg" alt="本人太帅无法显示" style="height: 220px;width: 200px;">&nbsp;&nbsp;
                    <img src="${pageContext.request.contextPath}/imgs/me2.jpg" alt="本人太帅无法显示" style="height: 220px;width: 200px;"></p>
            </div>
            <h2 style="font-family: serif;border-bottom: 1px solid #cccccc;padding-bottom: 5px;">Books</h2>
            <div class="col-md-12" style="font-family: 宋体;">
                <ul style="list-style-type: square;font-size: 1.4em;">
                    <li><a href="https://book.douban.com/subject/19952400/" target="_blank">算法第四版(人民邮电出版社)</a></li>
                    <li><a href="https://book.douban.com/subject/2130190/" target="_blank">JAVA编程思想(机械工业出版社)</a></li>
                    <li><a href="https://book.douban.com/subject/10546125/" target="_blank">JavaScript高级程序设计(人民邮电出版社)</a></li>
                    <li><a href="https://book.douban.com/subject/4866934/" target="_blank">Python基础教程(人民邮电出版社)</a></li>
                    <li><a href="https://book.douban.com/subject/24841239/" target="_blank">SQL基础教程(人民邮电出版社)</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</div>
<jsp:include page="./../footer/footer.jsp"/>
</body>
</html>