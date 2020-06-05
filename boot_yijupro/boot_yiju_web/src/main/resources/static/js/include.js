$(function () {
    $.get("jsp/header.jsp",function (data) {
        $("#header").html(data);
    });
    $.get("jsp/footer.jsp",function (data) {
        $("#footer").html(data);
    });
});