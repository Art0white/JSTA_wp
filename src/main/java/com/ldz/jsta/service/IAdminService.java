package com.ldz.jsta.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ldz.jsta.entity.Admin;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
public interface IAdminService extends IService<Admin> {

    /**
     * 登录
     * @param admin
     * @param response
     * @return
     */
    boolean login(Admin admin, HttpServletResponse response);
}
