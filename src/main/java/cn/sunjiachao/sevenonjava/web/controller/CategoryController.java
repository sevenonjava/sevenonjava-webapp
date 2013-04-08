package cn.sunjiachao.sevenonjava.web.controller;

import cn.sunjiachao.sevenonjava.core.model.Category;
import cn.sunjiachao.sevenonjava.web.controller.exception.WebException;
import cn.sunjiachao.sevenonjava.web.service.CategoryService;
import cn.sunjiachao.sevenonjava.web.service.exception.CategoryException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value = "/system/category/add", method = RequestMethod.GET)
    public ModelAndView addCategory() {
        ModelAndView modelAndView = new ModelAndView("system/category/add");
        return modelAndView;
    }

    @RequestMapping(value = "/system/category/addSubmit", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView addCategorySubmit(Category category) throws WebException {
        try {
            categoryService.save(category);
            ModelAndView modelAndView = new ModelAndView("system/category/add");
            return modelAndView;
        } catch (CategoryException e) {
            throw new WebException("Web Exception...");
        }
    }

}
