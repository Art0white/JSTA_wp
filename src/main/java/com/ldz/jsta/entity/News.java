package com.ldz.jsta.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class News implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 新闻id
     */
    @TableId(value = "news_id", type = IdType.AUTO)
    private Integer newsId;

    /**
     * 新闻标题
     */
    private String newsTitle;

    private String newsContent;

    /**
     * 新闻发布日期
     */
    private Date newsDate;

    /**
     * 新闻对应图片
     */
    private String newsImage;


}
