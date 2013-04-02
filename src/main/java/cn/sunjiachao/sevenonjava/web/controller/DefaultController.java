package cn.sunjiachao.sevenonjava.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DefaultController {

    @RequestMapping(value = "/{page:[0-9][0-9]*}", method = RequestMethod.GET)
    public ModelAndView index(@PathVariable String page) {
        ModelAndView modelAndView = new ModelAndView("default/index");
        return modelAndView;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("default/index");
        return modelAndView;
    }

}
