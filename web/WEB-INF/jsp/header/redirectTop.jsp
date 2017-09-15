<%@ page pageEncoding="UTF-8" %>

<div id="elevator_item" style="display: none;">
    <a id="elevator" onclick="return false;" title="回到顶部"></a>
</div>

<script>
    $(function () {
        $(window).scroll(function () {
            var scrolltop = $(this).scrollTop();
            if (scrolltop >= 10) {
                $("#elevator_item").show();
            } else {
                $("#elevator_item").hide();
            }
        });
        $("#elevator").click(function () {
            $("html,body").animate({scrollTop: 0}, 300);
        });
    });
</script>
