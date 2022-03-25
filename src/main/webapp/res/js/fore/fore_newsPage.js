$(function (){
    var cateArr;
    $.ajax({
        type: "GET",
        url: "/jsta/news/getNews",
        data: {},
        dataType: "json",
        async: false,
        success: function (data) {
            if (data.code === 200) {
                newsArr = data.object;
                var DIV1 = document.getElementById("news");
                for(let i = 0; i < newsArr.length; i++) {
                    var dl = document.createElement("dl");
                    //                                      ${newsArr[i].newsImage}
                    dl.innerHTML = `<dt><a href=""><img src="/jsta/res/images/fore/WebsiteImage/ourGlory/g2.png" alt=""/></a></dt><dd><div class="title"><p><a href="">${newsArr[i].newsTitle}</a></p><em>${newsArr[i].newsDate}</em></div><div class="des">${newsArr[i].newsContent}</div><a href="" class="more">+ 查看详情</a></dd>`;
                    dl.id = "newslist" + newsArr[i].newsId;
                    dl.className = "clearfix";
                    DIV1.appendChild(dl);
                }
            } else {
                window.alert("系统出错");
            }
        }
    });
})
