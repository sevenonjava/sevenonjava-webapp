package cn.sunjiachao.sevenonjava.web.service;

import cn.sunjiachao.sevenonjava.core.model.Blog;
import cn.sunjiachao.sevenonjava.core.model.dto.Page;
import cn.sunjiachao.sevenonjava.web.form.DefaultBlogForm;
import cn.sunjiachao.sevenonjava.web.service.exception.BlogException;

import java.util.List;

public interface BlogService {

    public void save(Blog blog) throws BlogException;

    public Blog findById(Long id) throws BlogException;

    public Page<DefaultBlogForm> getBlogsByPage(int currentPage, int numsPerPage, String order) throws BlogException;

}
