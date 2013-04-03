package cn.sunjiachao.sevenonjava.web.controller;

import cn.sunjiachao.sevenonjava.core.model.Blog;
import cn.sunjiachao.sevenonjava.core.model.dto.Page;
import cn.sunjiachao.sevenonjava.web.dao.BlogDao;
import cn.sunjiachao.sevenonjava.web.form.DefaultBlogForm;
import cn.sunjiachao.sevenonjava.web.service.BlogService;
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
    public ModelAndView getBlogsByPage(@PathVariable String p) {
        Page<DefaultBlogForm> page = blogService.getBlogsByPage(Integer.parseInt(p), 3, null);
        ModelAndView modelAndView = new ModelAndView("default/index");
        modelAndView.addObject("page", page);
        return modelAndView;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() {
        Page<DefaultBlogForm> page = blogService.getBlogsByPage(1, 3, null);
        ModelAndView modelAndView = new ModelAndView("default/index");
        modelAndView.addObject("page", page);
        return modelAndView;
    }

}
