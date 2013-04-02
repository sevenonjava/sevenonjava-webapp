package cn.sunjiachao.sevenonjava.web.dao.impl;

import cn.sunjiachao.sevenonjava.core.dao.impl.GenericDaoImpl;
import cn.sunjiachao.sevenonjava.core.model.Blog;
import cn.sunjiachao.sevenonjava.web.dao.BlogDao;
import org.springframework.stereotype.Repository;

@Repository
public class BlogDaoImpl extends GenericDaoImpl<Blog, Long> implements BlogDao {

}
