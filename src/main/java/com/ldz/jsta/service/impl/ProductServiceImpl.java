package com.ldz.jsta.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ldz.jsta.entity.*;
import com.ldz.jsta.mapper.*;
import com.ldz.jsta.util.RespBean;
import com.ldz.jsta.vo.ProductParameterVo;
import com.ldz.jsta.vo.ProductVo;
import com.ldz.jsta.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
@Service
public class ProductServiceImpl extends ServiceImpl<ProductMapper, Product> implements IProductService {

    @Autowired
    private ProductMapper productMapper;
    @Autowired
    private CategoryMapper categoryMapper;
    @Autowired
    private ImagesMapper imagesMapper;
    @Autowired
    private ValueMapper valueMapper;
    @Autowired
    private ParameterMapper parameterMapper;

    /**
     * 获取所有产品
     * @return
     */
    @Override
    public RespBean getProducts() {
        //获取所有的product
        QueryWrapper<Product> productWrapper = new QueryWrapper<>();
        productWrapper.select("product_id","product_name","product_category_id","product_describe");
        List<Product> productList = productMapper.selectList(productWrapper);
        //获取所有的种类
        QueryWrapper<Category> categoryWrapper = new QueryWrapper<>();
        categoryWrapper.select("category_id", "category_name");
        List<Category> categoryList = categoryMapper.selectList(categoryWrapper);
        //获取所有的图片
        QueryWrapper<Images> imagesWrapper = new QueryWrapper<>();
        imagesWrapper.select("images_id","images_address","images_product_id");
        List<Images> imagesList = imagesMapper.selectList(imagesWrapper);
        //获取所有的参数值信息
        QueryWrapper<Value> valueWrapper = new QueryWrapper<>();
        valueWrapper.select("value_id","value_product_id","value_parameter_name","value_parameter_id","value_parameter_value");
        List<Value> valueList = valueMapper.selectList(valueWrapper);


        //将product、category、value和images统一放入productVo中
        ArrayList<ProductVo> productVoList = new ArrayList<>();
        for (Product product:productList){
            ProductVo productVo = new ProductVo();
            //先给productVo放入product的属性
            //产品id
            productVo.setProductId(product.getProductId());
            //产品名称
            productVo.setProductName(product.getProductName());
            //产品描述
            productVo.setProductDescribe(product.getProductDescribe());
            //下面加入产品分类
            for(Category category:categoryList){
                if(category.getCategoryId().equals(product.getProductCategoryId())){
                    productVo.setProductCategoryName(category.getCategoryName());
                    break;
                }
            }
            //下面加入产品参数
            HashMap<String, String> parameterMap = new HashMap<String, String>();
            for(Value value:valueList){
                if(value.getValueProductId().equals(product.getProductId())){
                    parameterMap.put(value.getValueParameterName(),value.getValueParameterValue());
                }
            }
            productVo.setParameterMap(parameterMap);
            //下面加入产品图片
            List<String> images=new ArrayList<>();
            for(Images image:imagesList){
                if(image.getImagesProductId().equals(product.getProductId())){
                    images.add(image.getImagesAddress());
                }
            }
            productVo.setImages(images);
            productVoList.add(productVo);
        }
        return RespBean.success(productVoList);
    }

    /**
     * 添加产品
     * 1、想要添加餐品，传入的参数当中包含了产品的一些基础信息，和当前产品自己特有的参数
     * 2、将基础信息添加到产品表当中，特有的参数存放到value表当中
     * @paramproductParameterVo
     * @return
     */
    @Override
    public RespBean addProduct(ProductParameterVo productParameterVo) {
        //1、先存放基础信息
        Product product = new Product();
        product.setProductName(productParameterVo.getProductName());
        product.setProductDescribe(productParameterVo.getProductDescribe());
        //Vo当中只包含产品的分类名称，所以需要通过这个名称查询处这个分类的编号
        Category category = categoryMapper.selectOne(new QueryWrapper<Category>().eq("category_name", productParameterVo.getProductCategoryName()));
        int categoryId = category.getCategoryId();
        product.setProductCategoryId(categoryId);
        productMapper.insert(product);
        //2、基础信息添加完毕，将剩下的参数信息，添加到Value表当中,参数是一个map集合，我们遍历添加
        Map<String, String> parameterMap = productParameterVo.getParameterMap();
        for (Map.Entry<String,String> entry:parameterMap.entrySet()){
            Value value = new Value();
            value.setValueParameterName(entry.getKey());
            value.setValueParameterValue(entry.getValue());
            //这时候我们的产品id也是没有的，因为在上一步才刚刚插入进去，所以我们通过产品的名称来查找产品的id
            Integer productId = productMapper.selectOne(new QueryWrapper<Product>().eq("product_name", productParameterVo.getProductName())).getProductId();
            value.setValueProductId(productId);
            //我们的参数id也是没有的需要通过参数名查询参数id
            Integer parameterId = parameterMapper.selectOne(new QueryWrapper<Parameter>().eq("parameter_name", entry.getKey())).getParameterId();
            value.setValueParameterId(parameterId);
            valueMapper.insert(value);
        }
        return RespBean.success();
    }
    /**
     * 通过产品分类id查询其对应的的产品
     * @param categoryId
     * @return
     */
    @Override
    public RespBean getProductByCategoryId(Integer categoryId) {
        QueryWrapper<Product> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("product_category_id",categoryId);
        List<Product> products = productMapper.selectList(queryWrapper);
        return RespBean.success(products);
    }
    /**
     * 通过产品id查询其对应的的产品
     * @param productId
     * @return
     */
    @Override
    public List<Product> getProductByProductId(Integer productId) {
        QueryWrapper<Product> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("product_id", productId);
        List<Product> products = productMapper.selectList(queryWrapper);
        return products;
    }
}
