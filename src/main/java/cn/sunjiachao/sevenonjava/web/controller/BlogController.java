package cn.sunjiachao.sevenonjava.web.controller;

import cn.sunjiachao.sevenonjava.core.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BlogController extends BaseController {

    @RequestMapping(value = "/publish", method = RequestMethod.GET)
    public ModelAndView publish() {
        ModelAndView modelAndView = new ModelAndView("system/publish");
        return modelAndView;
    }

}
