package com.ldz.jsta.controller.fore;


import com.ldz.jsta.service.IInformationService;
import com.ldz.jsta.util.RespBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
@RequestMapping("/information")
public class InformationController {
    @Autowired
    private IInformationService iInformationService;

    /**
     * 获取联系信息
     * @return
     */
        @RequestMapping("/getInformation")
    public RespBean getInformation(){
        return iInformationService.getInformation();
    }

}
