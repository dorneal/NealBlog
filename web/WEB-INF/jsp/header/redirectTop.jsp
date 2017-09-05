<%--
  Created by IntelliJ IDEA.
  User: Neal
  Date: 2017.09.05.0005
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<script>
    window.onload = function(){
        var oTop = document.getElementById("to_top");
        var screenw = document.documentElement.clientWidth || document.body.clientWidth;
        var screenh = document.documentElement.clientHeight || document.body.clientHeight;
        oTop.style.left = screenw - oTop.offsetWidth +"px";
        oTop.style.top = screenh - oTop.offsetHeight + "px";
        window.onscroll = function(){
            var scrolltop = document.documentElement.scrollTop || document.body.scrollTop;
            oTop.style.top = screenh - oTop.offsetHeight + scrolltop +"px";
        }
        oTop.onclick = function(){
            document.documentElement.scrollTop = document.body.scrollTop =0;
        }
    }
</script>
<div id="to_top" style="right: 0;text-align: right;"><a>返回顶部</a></div>
