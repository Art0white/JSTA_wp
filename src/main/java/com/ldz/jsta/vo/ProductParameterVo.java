package com.ldz.jsta.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Map;

/**
 * @Description:
 * @Author:啵唧啵唧~~
 * @Date:2022/3/5
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductParameterVo {
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
