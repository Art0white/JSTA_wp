package com.ldz.jsta.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ldz.jsta.entity.Category;
import com.ldz.jsta.util.RespBean;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
public interface ICategoryService extends IService<Category> {


    /**
     * 添加产品分类
     * @param categoryName
     * @param parameter
     * @return
     */
    RespBean addCategory(String categoryName,List<String> parameter);

    /**
     * 查询所有的产品分类
     * @return
     */
    RespBean getCategorys();
}
