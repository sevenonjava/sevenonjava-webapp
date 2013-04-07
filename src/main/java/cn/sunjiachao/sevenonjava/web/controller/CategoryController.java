package cn.sunjiachao.sevenonjava.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CategoryController {

    @RequestMapping(value = "system/login", method = RequestMethod.GET)
    public ModelAndView getCategorysByPage() {
        ModelAndView modelAndView = new ModelAndView("system/login");
        return modelAndView;
    }

}
