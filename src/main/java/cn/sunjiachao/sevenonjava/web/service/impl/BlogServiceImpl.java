package cn.sunjiachao.sevenonjava.web.service.impl;

import cn.sunjiachao.sevenonjava.core.exception.DatabaseException;
import cn.sunjiachao.sevenonjava.core.model.Blog;
import cn.sunjiachao.sevenonjava.core.model.dto.Page;
import cn.sunjiachao.sevenonjava.web.dao.BlogDao;
import cn.sunjiachao.sevenonjava.web.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;


@Service
@Transactional(readOnly = true)
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogDao blogDao;

    @Override
    @Transactional(readOnly = false)
    public void save(Blog blog) {
        try {
            blogDao.saveEntity(blog);
        } catch (DatabaseException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Blog findById(Long id) {
        try {
            return blogDao.getEntityById(id);
        } catch (DatabaseException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Page<Blog> getBlogsByPage(int currentPage, int numsPerPage, String order) {
        try {
            List<Blog> list = blogDao.getActiveEntityByPage(currentPage, numsPerPage, order);
            long count = blogDao.getActiveCount();
            return new Page<Blog>(list, count, currentPage, numsPerPage);
        } catch (DatabaseException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            return new Page<Blog>(new ArrayList<Blog>(), 0, 0, 0);
        }
    }


}
