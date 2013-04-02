package cn.sunjiachao.sevenonjava.core.dao.impl;

import cn.sunjiachao.sevenonjava.core.dao.GenericDao;
import cn.sunjiachao.sevenonjava.core.exception.DatabaseException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.SessionFactoryUtils;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

public class GenericDaoImpl<M extends Serializable, PK extends Serializable> implements GenericDao<M, PK> {

    private Class<?> type;
    private String countHQL;
    private String className;
    private static final Log LOGGER = LogFactory.getLog(GenericDaoImpl.class);
    @Autowired
    private SessionFactory sessionFactory;

    public GenericDaoImpl() {
        this.type = getSuperClassGenricType(getClass());
        this.className = type.getName();
        if (LOGGER.isDebugEnabled()) {
            LOGGER.debug("正在初始化泛型dao，类型变量为: " + className);
        }
    }

    @Override
    public long getAllCount() throws DatabaseException {
        try {
            countHQL = "select count(*) from " + className + " t";
            Session session = sessionFactory.getCurrentSession();
            String countString = session.createQuery(countHQL).uniqueResult().toString();
            SessionFactoryUtils.closeSession(session);
            return Long.parseLong(countString);
        } catch (Exception e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public long getActiveCount() throws DatabaseException {
        try {
            countHQL = "select count(*) from " + className + " t where isActive = 1";
            Session session = sessionFactory.getCurrentSession();
            String countString = session.createQuery(countHQL).uniqueResult().toString();
            SessionFactoryUtils.closeSession(session);
            return Long.parseLong(countString);
        } catch (Exception e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void saveEntity(M entity) throws DatabaseException {
        sessionFactory.getCurrentSession().saveOrUpdate(entity);
    }

    @Override
    public void updateEntity(M entity) throws DatabaseException {
        sessionFactory.getCurrentSession().saveOrUpdate(entity);
    }

    @Override
    public void removeEntity(M entity) throws DatabaseException {
        sessionFactory.getCurrentSession().saveOrUpdate(entity);
    }

    @Override
    public boolean isEntityExist(String property, String value) throws DatabaseException {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(type);
        criteria.add(Expression.eq(property, value));
        List entities = criteria.list();
        SessionFactoryUtils.closeSession(sessionFactory.getCurrentSession());
        return entities.size() == 0 ? false : true;
    }

    @Override
    public M getEntityById(long id) throws DatabaseException {
        return (M) sessionFactory.getCurrentSession().get(type, id);
    }

    @Override
    public M getEntityByName(String value) throws DatabaseException {
        return getEntityByProperty("name", value);
    }

    @Override
    public M getEntityByProperty(String property, String value) throws DatabaseException {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(type);
        criteria.add(Expression.eq(property, value));
        List list = criteria.list();
        SessionFactoryUtils.closeSession(sessionFactory.getCurrentSession());
        return (M) list.get(0);
    }

    @Override
    public List<M> getEntitiesByProperty(String property, Object value) throws DatabaseException {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(type);
        criteria.add(Expression.eq(property, value));
        List list = criteria.list();
        SessionFactoryUtils.closeSession(sessionFactory.getCurrentSession());
        return list;
    }

    @Override
    public List<M> getAllEntityByPage(int currentPage, int numsPerPage, String order) throws DatabaseException {
        Session session = sessionFactory.getCurrentSession();
        String hql = "from " + className + " where order by ?";
        currentPage = (currentPage < 1) ? 1 : currentPage;
        numsPerPage = (numsPerPage < 1) ? 1 : numsPerPage;
        int startIndex = (currentPage - 1) * numsPerPage;
        if (null == order) {
            order = "id";
        }
        List<M> lists = session.createQuery(hql).setString(0, order).setFirstResult(startIndex).setMaxResults(numsPerPage).list();
        SessionFactoryUtils.closeSession(session);
        return lists;
    }

    @Override
    public List<M> getActiveEntityByPage(int currentPage, int numsPerPage, String order, long groupId) throws DatabaseException {
        Session session = sessionFactory.getCurrentSession();
        String hql = "from " + className + " where isActive = ? order by ?";
        currentPage = (currentPage < 1) ? 1 : currentPage;
        numsPerPage = (numsPerPage < 1) ? 1 : numsPerPage;
        int startIndex = (currentPage - 1) * numsPerPage;
        if (null == order) {
            order = "id";
        }
        Criteria criteria = session.createCriteria(className);
        criteria.add(Restrictions.eq("isActive", 1)).addOrder(Order.desc(order));
        List<M> lists = criteria.setFirstResult(startIndex).setMaxResults(numsPerPage).list();
        SessionFactoryUtils.closeSession(session);
        return lists;
    }

    @Override
    public List<M> getAllEntity(String order) throws DatabaseException {
        Session session = sessionFactory.getCurrentSession();
        String hql = "from " + className + " order by ?";
        List<M> lists = session.createQuery(hql).setString(0, order).list();
        return lists;
    }

    @Override
    public List<M> getAllActiveEntity(String order) throws DatabaseException {
        Session session = sessionFactory.getCurrentSession();
        String hql = "from " + className + " where isActive = 1 order by ?";
        List<M> lists = session.createQuery(hql).setString(0, order).list();
        return lists;
    }

    private int calcStartIndex(int currentPage, int numsPerPage) {
        currentPage = (currentPage < 1) ? 1 : currentPage;
        numsPerPage = (numsPerPage < 1) ? 1 : numsPerPage;
        int startIndex = (currentPage - 1) * numsPerPage;
        return startIndex;
    }

    private static Class<Object> getSuperClassGenricType(Class clazz) {
        int index = 0;
        Type genType = clazz.getGenericSuperclass();
        if (!(genType instanceof ParameterizedType)) {
            return Object.class;
        }
        Type[] params = ((ParameterizedType) genType).getActualTypeArguments();
        if (index >= params.length || index < 0) {
            return Object.class;
        }
        return (Class<Object>) params[index];
    }

    public Class<?> getType() {
        return type;
    }

    public void setType(Class<?> type) {
        this.type = type;
    }

    public String getCountHQL() {
        return countHQL;
    }

    public void setCountHQL(String countHQL) {
        this.countHQL = countHQL;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

}
