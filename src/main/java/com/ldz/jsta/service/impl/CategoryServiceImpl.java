package com.ldz.jsta.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ldz.jsta.entity.Category;
import com.ldz.jsta.entity.CategoryParameterHelp;
import com.ldz.jsta.entity.Parameter;
import com.ldz.jsta.mapper.CategoryMapper;
import com.ldz.jsta.mapper.CategoryParameterHelpMapper;
import com.ldz.jsta.mapper.ParameterMapper;
import com.ldz.jsta.service.ICategoryService;
import com.ldz.jsta.util.RespBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
public class CategoryServiceImpl extends ServiceImpl<CategoryMapper, Category> implements ICategoryService {


    @Autowired
    private CategoryMapper categoryMapper;
    @Autowired
    private CategoryParameterHelpMapper categoryParameterHelpMapper;
    @Autowired
    private ParameterMapper parameterMapper;

    /**
     * 添加产品分类
     * 添加这个产品分类的同时，需要同时添加，两张表
     * 1、添加产品分类
     * 2、将这个分类和它对应的参数维护起来
     * @param categoryName
     * @param parameter
     * @return
     */
    @Override
    public RespBean addCategory(String categoryName, List<String> parameter) {
        //1、先将传入进来的分类名添加到分类表当中
        Category category = new Category();
        category.setCategoryName(categoryName);
        categoryMapper.insert(category);
        //2、将传入进来的参数列表进行遍历，然后对应产品分类，添加到分类及参数维护表当中
        //维护表当中放的是分类id和对应的参数id,所以我们要拿到刚刚添加到分类表当中的id,并且拿到参数集合当中的每一个参数的id
        QueryWrapper<Category> categoryQueryWrapper = new QueryWrapper<>();
        categoryQueryWrapper.eq("category_name",categoryName);
        int categoryId = categoryMapper.selectOne(categoryQueryWrapper).getCategoryId();
        for (String s : parameter) {
            QueryWrapper<Parameter> parameterQueryWrapper = new QueryWrapper<>();
            parameterQueryWrapper.eq("parameter_name",s);
            int parameterId=parameterMapper.selectOne(parameterQueryWrapper).getParameterId();
            CategoryParameterHelp categoryParameterHelp = new CategoryParameterHelp();
            categoryParameterHelp.setCategoryParameterHelpParameterId(parameterId);
            categoryParameterHelp.setCategoryParameterHelpCategoryId(categoryId);
            categoryParameterHelpMapper.insert(categoryParameterHelp);
        }
        return RespBean.success();
    }

    /**
     * 查询所有的产品分类
     * @return
     */
    @Override
    public RespBean getCategorys() {
        QueryWrapper<Category> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("category_id, category_name");
        List<Category> categories = categoryMapper.selectList(queryWrapper);
        return RespBean.success(categories);
    }
}
