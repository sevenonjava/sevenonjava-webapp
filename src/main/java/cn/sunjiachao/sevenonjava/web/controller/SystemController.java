package cn.sunjiachao.sevenonjava.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SystemController {

    @RequestMapping(value = "system/login", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView("system/login");
        return modelAndView;
    }

    @RequestMapping(value = "system/index", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("system/index");
        return modelAndView;
    }

    @RequestMapping(value = "system/blog/index", method = RequestMethod.GET)
    public ModelAndView blogList() {
        ModelAndView modelAndView = new ModelAndView("system/blog/index");
        return modelAndView;
    }

    @RequestMapping(value = "system/category/index", method = RequestMethod.GET)
    public ModelAndView categoryList() {
        ModelAndView modelAndView = new ModelAndView("system/category/index");
        return modelAndView;
    }
}
