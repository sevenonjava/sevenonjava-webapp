package cn.sunjiachao.sevenonjava.web.service;

import cn.sunjiachao.sevenonjava.core.model.Category;
import cn.sunjiachao.sevenonjava.web.service.exception.CategoryException;

/**
 * Created with IntelliJ IDEA.
 * User: jiachao.sun
 * Date: 13-4-8
 * Time: 上午10:42
 * To change this template use File | Settings | File Templates.
 */
public interface CategoryService {

    public void save(Category category) throws CategoryException;

    public void update(Category category) throws CategoryException;

    public void delete(Category category) throws CategoryException;
}
