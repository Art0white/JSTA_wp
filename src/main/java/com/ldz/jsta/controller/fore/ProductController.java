package com.ldz.jsta.controller.fore;

import com.ldz.jsta.service.IProductService;
import com.ldz.jsta.util.RespBean;
import com.ldz.jsta.vo.ProductParameterVo;
import com.ldz.jsta.vo.ProductVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
@RestController
@RequestMapping("/product")
public class ProductController {
    @Autowired
    private IProductService productService;

    /**
     *获取所有产品
     * @return
     */
    @RequestMapping(value = "/getProducts", method = RequestMethod.GET)
    public RespBean getProducts(){
        return productService.getProducts();
    }

    /**
     * 添加产品信息
     * @paramProductParameterVo
     * @return
     */
    @RequestMapping("/addProduct")
    public RespBean addProduct(ProductParameterVo productParameterVo){
        return productService.addProduct(productParameterVo);
    }

    /**
     * 通过产品分类id查询其对应的的产品
     * @param categoryId
     * @return
     */
    @RequestMapping(value = "/getProductByCategoryId", method = RequestMethod.GET)
    public RespBean getProductByCategoryId(@RequestParam(value = "categoryId", required = false)Integer categoryId){
        System.out.println(categoryId);
        return productService.getProductByCategoryId(categoryId);
    }
}
