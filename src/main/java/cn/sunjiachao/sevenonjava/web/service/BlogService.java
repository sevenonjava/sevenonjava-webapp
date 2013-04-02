package cn.sunjiachao.sevenonjava.web.service;

import cn.sunjiachao.sevenonjava.core.model.Blog;

public interface BlogService {

    public void save(Blog blog);

    public Blog findById(Long id);

}
