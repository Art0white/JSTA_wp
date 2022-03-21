package com.ldz.jsta.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ldz.jsta.entity.Product;
import com.ldz.jsta.util.RespBean;
import com.ldz.jsta.vo.ProductParameterVo;
import com.ldz.jsta.vo.ProductVo;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
public interface IProductService extends IService<Product> {

    /**
     * 获取所有产品
     * @return
     */
    RespBean getProducts();
    /**
     * 添加产品
     * @param productParameterVo
     * @return
     */
    RespBean addProduct(ProductParameterVo productParameterVo);
    /**
     * 通过产品分类id查询其对应的的产品
     * @param categoryId
     * @return
     */
    RespBean getProductByCategoryId(Integer categoryId);
    /**
     * 通过产品id查询其对应的的产品
     * @param productId
     * @return
     */
    RespBean getProductByProductId(Integer productId);
}
