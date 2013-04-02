package cn.sunjiachao.sevenonjava.core.dao;

import cn.sunjiachao.sevenonjava.core.exception.DatabaseException;

import java.io.Serializable;
import java.util.List;

/**
 * 泛型dao
 *
 * @param <M>  实体类型
 * @param <PK> 主键类型
 */
public interface GenericDao<M extends Serializable, PK extends Serializable> {

    /**
     * 返回总行数
     *
     * @return 总行数
     */
    public long getAllCount() throws DatabaseException;

    /**
     * 获取 未逻辑删除的 总行数
     *
     * @return 未逻辑删除的总行数
     */
    public long getActiveCount() throws DatabaseException;

    /**
     * 持久化实体
     */
    public void saveEntity(M entity) throws DatabaseException;

    /**
     * 更新实体
     */
    public void updateEntity(M entity) throws DatabaseException;

    /**
     * 逻辑删除实体
     */
    public void removeEntity(M entity) throws DatabaseException;

    /**
     * 根据属性判断是否存在
     *
     * @param value    属性名称字符串
     * @param property 属性值字符串
     * @return true 存在 false 不存在
     */
    public boolean isEntityExist(String property, String value) throws DatabaseException;

    /**
     * 根据主键获取实体
     *
     * @param id 主键id
     * @return 实体
     */
    public M getEntityById(long id) throws DatabaseException;

    /**
     * 根据名称获取对象
     *
     * @param value 名称值
     */
    public M getEntityByName(String value) throws DatabaseException;

    /**
     * 根据属性值查找
     *
     * @param property 属性名
     * @param value    属性值
     * @return 实体
     */
    public M getEntityByProperty(String property, String value) throws DatabaseException;

    /**
     * 根据属性值查找
     *
     * @param property 属性名
     * @param value    属性值
     * @return 实体
     */
    public List<M> getEntitiesByProperty(String property, Object value) throws DatabaseException;

    /**
     * 分页获取物理存在实体
     *
     * @param currentPage 当前页码
     * @param numsPerPage 每页行数
     * @param order       排序字段
     * @return 实体List
     */
    public List<M> getAllEntityByPage(int currentPage, int numsPerPage, String order) throws DatabaseException;

    /**
     * 分页获取<b>逻辑</b>存在实体
     *
     * @param currentPage 当前页面
     * @param numsPerPage 每页显示多少行
     * @param order       排序字段
     * @return 实体List
     */
    public List<M> getActiveEntityByPage(int currentPage, int numsPerPage, String order) throws DatabaseException;

    /**
     * 获取所有对象，包含逻辑删除的
     *
     * @param order 排序字段
     * @return 实体List
     */
    public List<M> getAllEntity(String order) throws DatabaseException;

    /**
     * 获取所有对象
     *
     * @param order 排序字段
     * @return 实体List
     */
    public List<M> getAllActiveEntity(String order) throws DatabaseException;

}
