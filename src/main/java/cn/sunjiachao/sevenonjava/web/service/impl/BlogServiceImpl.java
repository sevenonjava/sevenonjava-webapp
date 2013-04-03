package cn.sunjiachao.sevenonjava.web.service.impl;

import cn.sunjiachao.sevenonjava.core.exception.DatabaseException;
import cn.sunjiachao.sevenonjava.core.model.Blog;
import cn.sunjiachao.sevenonjava.core.model.dto.Page;
import cn.sunjiachao.sevenonjava.web.dao.BlogDao;
import cn.sunjiachao.sevenonjava.web.form.DefaultBlogForm;
import cn.sunjiachao.sevenonjava.web.service.BlogService;
import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.lang.reflect.InvocationTargetException;
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
    public Page<DefaultBlogForm> getBlogsByPage(int currentPage, int numsPerPage, String order) {
        try {
            List<Blog> list = blogDao.getActiveEntityByPage(currentPage, numsPerPage, order);
            List<DefaultBlogForm> forms = new ArrayList<DefaultBlogForm>();
            for (Blog blog : list) {
                //clean html element
                DefaultBlogForm form = new DefaultBlogForm();
                PropertyUtils.copyProperties(form,blog);
                String cleaned = Jsoup.clean(blog.getContent(),Whitelist.none());
                String shorted = StringUtils.abbreviate(cleaned,200);
                form.setExcerpt(shorted);
                forms.add(form);
            }
            long count = blogDao.getActiveCount();
            return new Page<DefaultBlogForm>(forms, count, currentPage, numsPerPage);
        } catch (DatabaseException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            return new Page<DefaultBlogForm>(new ArrayList<DefaultBlogForm>(), 0, 0, 0);
        } catch (InvocationTargetException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            return new Page<DefaultBlogForm>(new ArrayList<DefaultBlogForm>(), 0, 0, 0);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            return new Page<DefaultBlogForm>(new ArrayList<DefaultBlogForm>(), 0, 0, 0);
        } catch (IllegalAccessException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            return new Page<DefaultBlogForm>(new ArrayList<DefaultBlogForm>(), 0, 0, 0);
        }
    }


}
