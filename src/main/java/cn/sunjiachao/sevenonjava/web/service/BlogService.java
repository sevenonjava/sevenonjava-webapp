package cn.sunjiachao.sevenonjava.web.service;

import cn.sunjiachao.sevenonjava.core.model.Blog;
import cn.sunjiachao.sevenonjava.core.model.dto.Page;

import java.util.List;

public interface BlogService {

    public void save(Blog blog);

    public Blog findById(Long id);

    public Page<Blog> getBlogsByPage(int currentPage, int numsPerPage, String order);

}
