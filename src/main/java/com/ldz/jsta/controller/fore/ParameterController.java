package com.ldz.jsta.controller.fore;


import com.ldz.jsta.service.IParameterService;
import com.ldz.jsta.util.RespBean;
import org.springframework.beans.factory.annotation.Autowired;
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
@RequestMapping("/parameter")
public class ParameterController {
    @Autowired
    private IParameterService parameterService;

    /**
     * 添加产品参数
     * @param parameterName
     * @return
     */
    @RequestMapping("/addParameter")
    public RespBean addParameter(String parameterName){
        return parameterService.addParameter(parameterName);
    }

    /**
     * 获取参数列表
     * @return
     */
    @RequestMapping("/gatParameters")
    public RespBean getParameters(){
        return parameterService.getParameters();
    }

    /**
     * 根据产品名称分类名获取对应参数列表
     * @param categoryName
     * @return
     */
    @RequestMapping("/getParameterByproductName")
    public RespBean getParameterByCategoryName(String categoryName){
        return parameterService.getParameterByCategoryName(categoryName);
    }


}
