$(function (){
    var cateArr;
    $.ajax({
        type: "GET",
        url: "/jsta/category/getCategorys",
        data: {},
        dataType: "json",
        success: function (data) {
            if (data.code === 200) {
                cateArr = data.object;
                var UI2 = document.getElementById("catelist");
                for(let i = 0; i < cateArr.length; i++) {
                    var li2 = document.createElement("li");
                    li2.innerHTML = `<a href="/jsta/proAll?category_id=${cateArr[i].categoryId}&n=${i}">\n<span>${cateArr[i].categoryName}</span>\n</a>\n`;
                    li2.id = "catelist" + cateArr[i].categoryId;
                    UI2.appendChild(li2);
                }
            } else {
                window.alert("系统出错");
            }
        }
    });
    //获取url参数
    function GetQueryValue(queryName) {
        var query = decodeURI(window.location.search.substring(1));
        var vars = query.split("&");
        for (var i = 0; i < vars.length; i++) {
            var pair = vars[i].split("=");
            if (pair[0] == queryName) {
                return pair[1];
            }
        }
        return null;
    }

    var categoryId = GetQueryValue("category_id");
    var numb = GetQueryValue("n");
    if (categoryId === null ) {
        categoryId = 1;
    }

    $.ajax({
        type: "GET",
        url: "/jsta/product/getProductByCategoryId",
        data: {"categoryId": categoryId},
        dataType: "json",
        success: function (data) {
            if (data.code === 200) {
                var div1 = document.getElementById("r_title");
                div1.innerText = cateArr[numb].categoryName;
                var span1 = document.createElement("span");
                span1.innerHTML = `/<em>2</em>`;
                div1.appendChild(span1);

                var shopingArr = data.object;
                console.log(shopingArr);
                var UI = document.getElementById("shoplist");
                for(let i = 0; i < shopingArr.length; i++) {
                    var li = document.createElement("li");
                    li.id = "li" + i;
                    li.innerHTML = `<img src="123" alt=""/>\n<div class="des">\n<p></p>\n<a href="">+ 查看详情</a>\n</div>\n`;
                    UI.appendChild(li);
                }
            } else {
                window.alert("系统出错");
            }
        }
    });

})
