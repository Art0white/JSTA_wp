package com.ldz.jsta.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @Description:
 * @Author:啵唧啵唧~~
 * @Date:2022/3/4
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class Images {
    private static final long serialVersionUID = 1L;
    /**
     * 图片id
     */
    @TableId(value = "images_id", type = IdType.AUTO)
    private Integer imagesId;

    /**
     * 图片地址
     */
    private String imagesAddress;

    /**
     * 图片对应的产品id
     */
    private Integer imagesProductId;

}
