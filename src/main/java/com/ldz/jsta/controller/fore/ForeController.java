package com.ldz.jsta.controller.fore;

import com.ldz.jsta.controller.BaseController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * 跳转
 * @author Lovsog
 */
@Controller
public class ForeController extends BaseController {
    /**
     * 跳转到前台主页
     * @return
     */

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String goToPage(HttpSession session, Map<String, Object> map) {
//        ModelAndView modelAndView =new ModelAndView("fore/homePage");
//        ideaService.getNewIdea(session, map);
//        return modelAndView;
        return "fore/homePage";
    }

    /**
     * 跳转到产品页面
     * @return
     */
    @RequestMapping(value = "/proAll", method = RequestMethod.GET)
    public String goToPage1(HttpSession session, Map<String, Object> map) {

//        ModelAndView modelAndView =new ModelAndView("fore/proPage");
//        return modelAndView;
        return "fore/proPage";
    }

    /**
     * 跳转到关于我们页面
     * @return
     */
    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String goToPage2(HttpSession session, Map<String, Object> map) {

//        ModelAndView modelAndView =new ModelAndView("fore/aboutPage");
//        return modelAndView;
        return "fore/aboutPage";
    }

    /**
     * 跳转到企业介绍页面
     * @return
     */
    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public String goToPage3(HttpSession session, Map<String, Object> map) {

//        ModelAndView modelAndView =new ModelAndView("fore/newsPage");
//        return modelAndView;
        return "fore/newsPage";
    }

    /**
     * 跳转到联系我们页面
     * @return
     */
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String goToPage4(HttpSession session, Map<String, Object> map) {

//        ModelAndView modelAndView =new ModelAndView("fore/contactPage");
//        return modelAndView;
        return "fore/contactPage";
    }

    /**
     * 转到前台架上添安-错误页
     * @return
     */
    @RequestMapping(value = "error", method = RequestMethod.GET)
    public String goToErrorPage() {
        return "fore/errorPage";
    }
}
