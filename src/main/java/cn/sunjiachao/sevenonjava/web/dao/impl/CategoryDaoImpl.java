package cn.sunjiachao.sevenonjava.web.dao.impl;

import cn.sunjiachao.sevenonjava.core.dao.impl.GenericDaoImpl;
import cn.sunjiachao.sevenonjava.core.model.Category;
import cn.sunjiachao.sevenonjava.web.dao.CategoryDao;
import org.springframework.stereotype.Repository;

/**
 * Created with IntelliJ IDEA.
 * User: jiachao.sun
 * Date: 13-4-8
 * Time: 上午10:39
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class CategoryDaoImpl extends GenericDaoImpl<Category, Long> implements CategoryDao {
}
