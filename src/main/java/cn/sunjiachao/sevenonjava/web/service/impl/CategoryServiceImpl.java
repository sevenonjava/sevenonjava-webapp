package cn.sunjiachao.sevenonjava.web.service.impl;

import cn.sunjiachao.sevenonjava.core.exception.DatabaseException;
import cn.sunjiachao.sevenonjava.core.model.Category;
import cn.sunjiachao.sevenonjava.web.dao.CategoryDao;
import cn.sunjiachao.sevenonjava.web.service.CategoryService;
import cn.sunjiachao.sevenonjava.web.service.exception.CategoryException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryDao categoryDao;

    @Transactional(readOnly = false)
    @Override
    public void save(Category category) throws CategoryException {
        try {
            categoryDao.saveEntity(category);
        } catch (DatabaseException e) {
            throw new CategoryException("CategoryService save 异常");
        }
    }

    @Override
    public void update(Category category) throws CategoryException {
        try {
            categoryDao.updateEntity(category);
        } catch (DatabaseException e) {
            throw new CategoryException("CategoryService update 异常");
        }
    }

    @Override
    public void delete(Category category) throws CategoryException {
        try {
            categoryDao.removeEntity(category);
        } catch (DatabaseException e) {
            throw new CategoryException("CategoryService delete异常");
        }
    }
}
