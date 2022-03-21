package com.ldz.jsta.controller.fore;


import com.ldz.jsta.service.INewsService;
import com.ldz.jsta.util.RespBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
@RestController
@RequestMapping("/news")
public class NewsController {
    @Autowired
    private INewsService newsService;
    /**
     * 获取新闻内容
     * @return
     */
    @RequestMapping("/getNews")
    public RespBean getNews(){
        return newsService.getNews();
    }

    @RequestMapping("/getNewsDtl")
    public RespBean getNewsDtl(){
        return newsService.getNews();
    }
    /**
     * 添加新闻内容
     * @param newsTitle
     * @param newsContent
     * @param newsDate
     * @param newsImage
     * @return
     */
    @RequestMapping("/addNews")
    public RespBean addNews(String newsTitle, String newsContent, Date newsDate,String newsImage){
        return newsService.addNews(newsTitle,newsContent,newsDate,newsImage);
    }
}
