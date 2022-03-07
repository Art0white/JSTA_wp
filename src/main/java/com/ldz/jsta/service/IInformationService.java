package com.ldz.jsta.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ldz.jsta.entity.Information;
import com.ldz.jsta.util.RespBean;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
public interface IInformationService extends IService<Information> {

    /**
     * 获取联系信息
     * @return
     */
    RespBean getInformation();
}
