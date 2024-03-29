package cn.sunjiachao.sevenonjava.web.controller;

import cn.sunjiachao.sevenonjava.core.model.dto.Page;
import cn.sunjiachao.sevenonjava.web.controller.exception.WebException;
import cn.sunjiachao.sevenonjava.web.form.DefaultBlogForm;
import cn.sunjiachao.sevenonjava.web.service.BlogService;
import cn.sunjiachao.sevenonjava.web.service.exception.BlogException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DefaultController {

    @Autowired
    private BlogService blogService;

    @RequestMapping(value = "/{p:[0-9][0-9]*}", method = RequestMethod.GET)
    public ModelAndView getBlogsByPage(@PathVariable String p) throws WebException {
        Page<DefaultBlogForm> page;
        try {
            page = blogService.getBlogsByPage(Integer.parseInt(p), 10, null);
        } catch (BlogException e) {
            throw new WebException("");
        }
        ModelAndView modelAndView = new ModelAndView("default/index");
        modelAndView.addObject("page", page);
        return modelAndView;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() throws WebException {
        Page<DefaultBlogForm> page;
        try {
            page = blogService.getBlogsByPage(1, 10, null);
        } catch (BlogException e) {
            throw new WebException("");
        }
        ModelAndView modelAndView = new ModelAndView("default/index");
        modelAndView.addObject("page", page);
        return modelAndView;
    }

}
