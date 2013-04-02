package cn.sunjiachao.sevenonjava.web.controller;

import cn.sunjiachao.sevenonjava.core.controller.BaseController;
import cn.sunjiachao.sevenonjava.core.model.Blog;
import cn.sunjiachao.sevenonjava.web.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;

@Controller
public class BlogController extends BaseController {

    @Autowired
    private BlogService blogService;

    @RequestMapping(value = "/publish", method = RequestMethod.GET)
    public ModelAndView publish() {
        ModelAndView modelAndView = new ModelAndView("system/publish");
        return modelAndView;
    }

    @RequestMapping(value = "/publish", method = RequestMethod.POST)
    public ModelAndView publishSubmit(@ModelAttribute Blog blog) {
        blog.setIsActive(1);
        blog.setCreatetime(new Date());
        blogService.save(blog);
        ModelAndView modelAndView = new ModelAndView("system/publish");
        return modelAndView;
    }

    @RequestMapping(value = "/article/{id}", method = RequestMethod.GET)
    public ModelAndView article(@PathVariable("id") String id) {
        Blog blog = blogService.findById(Long.parseLong(id));
        ModelAndView modelAndView = new ModelAndView("article/id");
        modelAndView.addObject("blog", blog);
        return modelAndView;
    }

}
