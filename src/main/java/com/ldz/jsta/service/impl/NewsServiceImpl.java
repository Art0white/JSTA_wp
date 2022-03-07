package com.ldz.jsta.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ldz.jsta.entity.News;
import com.ldz.jsta.mapper.NewsMapper;
import com.ldz.jsta.service.INewsService;
import com.ldz.jsta.util.RespBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
@Service
public class NewsServiceImpl extends ServiceImpl<NewsMapper, News> implements INewsService {

    @Autowired
    private NewsMapper newsMapper;

    /**
     * 获取新闻内容
     * @return
     */
    @Override
    public RespBean getNews() {
        QueryWrapper<News> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("news_id","news_title","news_content","news_date","news_image");
        List<News> news = newsMapper.selectList(queryWrapper);
        return RespBean.success(news);
    }

    /**
     * 添加新闻内容
     * @param newsTitle
     * @param newsContent
     * @param newsDate
     * @param newsImage
     * @return
     */
    @Override
    public RespBean addNews(String newsTitle, String newsContent, Date newsDate,String newsImage) {
        News news = new News();
        news.setNewsDate(newsDate);
        news.setNewsContent(newsContent);
        news.setNewsImage(newsImage);
        news.setNewsTitle(newsTitle);
        newsMapper.insert(news);
        return RespBean.success();
    }
}
