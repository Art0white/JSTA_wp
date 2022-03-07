package com.ldz.jsta.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ldz.jsta.entity.Category;
import com.ldz.jsta.entity.CategoryParameterHelp;
import com.ldz.jsta.entity.Parameter;
import com.ldz.jsta.mapper.CategoryMapper;
import com.ldz.jsta.mapper.CategoryParameterHelpMapper;
import com.ldz.jsta.mapper.ParameterMapper;
import com.ldz.jsta.service.IParameterService;
import com.ldz.jsta.util.RespBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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
public class ParameterServiceImpl extends ServiceImpl<ParameterMapper, Parameter> implements IParameterService {

    @Autowired
    private ParameterMapper parameterMapper;
    @Autowired
    private CategoryParameterHelpMapper categoryParameterHelpMapper;
    @Autowired
    private CategoryMapper categoryMapper;
    /**
     * 添加产品参数
     * @param parameterName
     * @return
     */
    @Override
    public RespBean addParameter(String parameterName) {
        Parameter parameter = new Parameter();
        parameter.setParameterName(parameterName);
        parameterMapper.insert(parameter);
        return RespBean.success();
    }

    /**
     * 获取参数列表
     * @return
     */
    @Override
    public RespBean getParameters() {
        QueryWrapper<Parameter> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("parameter_id","parameter_name");
        List<Parameter> parameters = parameterMapper.selectList(queryWrapper);
        return RespBean.success(parameters);
    }

    /**
     * 根据产品名称获取对应的参数
     * @param categoryName
     * @return
     */
    @Override
    public RespBean getParameterByCategoryName(String categoryName) {
       //先根据分类名称查出分类编号
        QueryWrapper<Category> categoryQueryWrapper = new QueryWrapper<>();
        categoryQueryWrapper.eq("category_name",categoryName);
        int categoryId=categoryMapper.selectOne(categoryQueryWrapper).getCategoryId();
        //然后根据这个分类id查询对应的参数
        QueryWrapper<CategoryParameterHelp> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("category_parameter_help_category_id",categoryId);
        List<CategoryParameterHelp> categoryParameterHelpList = categoryParameterHelpMapper.selectList(queryWrapper);
        //遍历这个维护表中的参数编号，查询全部参数名
        List<String> parameters = new ArrayList<>();
        for (CategoryParameterHelp help : categoryParameterHelpList) {
            int parameterId = help.getCategoryParameterHelpParameterId();
            //根据这个id查询参数名
            String parameterName=parameterMapper.selectOne(new QueryWrapper<Parameter>().eq("parameter_id",parameterId)).getParameterName();
            parameters.add(parameterName);
        }
        return RespBean.success(parameters);
    }
}
