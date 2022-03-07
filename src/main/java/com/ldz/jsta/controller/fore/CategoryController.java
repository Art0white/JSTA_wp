package com.ldz.jsta.controller.fore;

import com.ldz.jsta.service.ICategoryService;
import com.ldz.jsta.util.RespBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zb
 * @since 2022-03-04
 */
@RestController
@RequestMapping("/category")
public class CategoryController {
    @Autowired
    private ICategoryService categoryService;

    /**
     * 添加产品分类
     * @paramcategoryName
     * @paramparameter
     * @return
     */
    @RequestMapping("/addCategory")
    public RespBean addCategory(String categoryName, @RequestParam("parameters")String[] parameters){
        List<String> list = new ArrayList<>();
        for (String s : parameters) {
            list.add(s);
        }
        return categoryService.addCategory(categoryName,list);
    }

    /**
     * 查询所有的产品分类
     * @return
     */
    @RequestMapping(value = "/getCategorys", method = RequestMethod.GET)
    public RespBean getCategorys(){
        return categoryService.getCategorys();
    }
}
