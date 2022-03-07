package com.ldz.jsta.vo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Map;

/**
 * @Description:
 * @Author:啵唧啵唧~~
 * @Date:2022/3/4
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductVo {
    private static final long serialVersionUID = 1L;

    /**
     * 产品id
     */
    @TableId(value = "product_id", type = IdType.AUTO)
    private Integer productId;

    /**
     * 产品名
     */
    private String productName;


    /**
     * 产品分类名称
     */
    private String productCategoryName;

    /**
     * 产品描述
     */
    private String productDescribe;



    /**
     * 参数K-V
     */
    private Map<String,String> parameterMap;


    /**
     * 存放图片地址
     */
    private List<String> images;
}
