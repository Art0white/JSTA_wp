package com.ldz.jsta.controller.fore;

import com.alibaba.fastjson.JSONObject;
import com.ldz.jsta.controller.BaseController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 主页
 * @author 贤趣项目小组
 */
@Controller
public class ForeHomeController extends BaseController {

    //转到前台主页
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView goToPage(HttpSession session, Map<String, Object> map) {
        ModelAndView modelAndView =new ModelAndView("fore/homePage");
        //ideaService.getNewIdea(session, map);
        return modelAndView;
    }

    /**
     * 跳转到创意圈子页面
     * @return
     */
    @RequestMapping(value = "/ideaCircle", method = RequestMethod.GET)
    public ModelAndView goToPage1(HttpSession session, Map<String, Object> map) {

        ModelAndView modelAndView =new ModelAndView("fore/ideaCircle");
        //ideaService.getNewIdea(session, map);
        return modelAndView;
    }

    //转到前台天猫-错误页
    @RequestMapping(value = "error", method = RequestMethod.GET)
    public String goToErrorPage() {
        return "fore/errorPage";
    }
}
