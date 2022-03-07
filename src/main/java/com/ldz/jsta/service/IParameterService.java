package com.ldz.jsta.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ldz.jsta.entity.Parameter;
import com.ldz.jsta.util.RespBean;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
public interface IParameterService extends IService<Parameter> {

    /**
     * 添加产品参数
     * @param parameterName
     * @return
     */
    RespBean addParameter(String parameterName);

    /**
     * 获取参数列表
     * @return
     */
    RespBean getParameters();

    /**
     * 根据产品名称查询对应的参数
     * @param categoryName
     * @return
     */
    RespBean getParameterByCategoryName(String categoryName);
}
