package com.ldz.jsta.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ldz.jsta.entity.Product;
import com.ldz.jsta.vo.ProductVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
@Mapper
public interface ProductMapper extends BaseMapper<Product> {

    public List<ProductVo> getProducts();
}
