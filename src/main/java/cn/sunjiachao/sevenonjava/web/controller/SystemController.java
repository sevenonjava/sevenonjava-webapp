package cn.sunjiachao.sevenonjava.web.controller;

import cn.sunjiachao.sevenonjava.core.model.xmlbean.Menus;
import cn.sunjiachao.sevenonjava.web.controller.exception.WebException;
import cn.sunjiachao.sevenonjava.web.service.SystemService;
import cn.sunjiachao.sevenonjava.web.service.exception.SystemException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SystemController {

    @Autowired
    private SystemService systemService;

    @RequestMapping(value = "system/index", method = RequestMethod.GET)
    public ModelAndView index() throws WebException {
        try {
            Menus menus = systemService.getMenus();
            ModelAndView modelAndView = new ModelAndView("system/index");
            modelAndView.addObject("menus", menus);
            return modelAndView;
        } catch (SystemException e) {
            throw new WebException("");
        }
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

    @RequestMapping(value = "system/login", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView("system/login");
        return modelAndView;
    }
}
