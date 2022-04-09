$(function (){
    var cateArr;
    $.ajax({
        type: "GET",
        url: "/jsta/news/getNewsByNewsId",
        data: {},
        dataType: "json",
        async: false,
        success: function (data) {
            if (data.code === 200) {
                newsDtlArr = data.object;

            } else {
                window.alert("系统出错");
            }
        }
    });
})
