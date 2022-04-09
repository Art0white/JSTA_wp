package com.ldz.jsta.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ldz.jsta.entity.News;
import com.ldz.jsta.entity.Product;
import com.ldz.jsta.util.RespBean;

import java.util.Date;
import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
public interface INewsService extends IService<News> {

    /**
     * 获取新闻内容
     * @return
     */
    RespBean getNews();

    /**
     * 添加新闻内容
     * @param newsTitle
     * @param newsContent
     * @param newsDate
     * @param newsImage
     * @return
     */
    RespBean addNews(String newsTitle, String newsContent, Date newsDate, String newsImage);

    /**
     * 通过新闻id查询其对应的的新闻
     * @param newsId
     * @return
     */
    List<News> getNewsByNewsId(Integer newsId);
}
