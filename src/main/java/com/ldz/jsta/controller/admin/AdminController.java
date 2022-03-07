package com.ldz.jsta.controller.admin;
import com.ldz.jsta.entity.Admin;
import com.ldz.jsta.service.IAdminService;
import com.ldz.jsta.util.RespBean;
import com.ldz.jsta.util.RespBeanEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
@RestController
@RequestMapping("/admin")
public class AdminController {


    @Autowired
    private IAdminService adminService;

    /**
     * 登录
     * @param admin
     * @param response
     * @return
     */
    @RequestMapping("/login")
    @ResponseBody
    public RespBean login(Admin admin, HttpServletResponse response){
        if (adminService.login(admin,response)){
            return RespBean.success();
        }else{
            return RespBean.error(RespBeanEnum.ERROR);
        }
    }
}
