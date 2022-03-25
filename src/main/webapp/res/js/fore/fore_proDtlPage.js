$(function (){
    var cateArr;
    $.ajax({
        type: "GET",
        url: "/jsta/product/getProductByProductId",
        data: {},
        dataType: "json",
        async: false,
        success: function (data) {
            if (data.code === 200) {
                proDtlArr = data.object;

            } else {
                window.alert("系统出错");
            }
        }
    });
})
