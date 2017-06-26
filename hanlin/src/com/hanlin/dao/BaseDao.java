package com.hanlin.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;




import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * DAO基类，其它DAO可以直接继承这个DAO，不但可以复用共用的方法，还可以获得泛型的好处。
 */
@Repository
@Transactional
public class BaseDao<T> {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	private Class entityClass;
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	// 通过反射获取子类确定的泛型类
	/*public BaseDao() {
		Type genType = getClass().getGenericSuperclass();
		Type[] params = ((ParameterizedType) genType).getActualTypeArguments();
		entityClass = (Class) params[0];
	}*/

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	// 根据ID加载PO实例
	public T load(Serializable id) {
		return (T) hibernateTemplate.get(entityClass, id);
	}

	// 根据ID获取PO实例
	public T get(Serializable id) {
		return (T) hibernateTemplate.get(entityClass, id);
	}

	// 保存PO
	public void save(T entity) {
		hibernateTemplate.save(entity);
	}
	//保存po并返回其id值
	public int add(T entity){
		int di=Integer.parseInt(String.valueOf(hibernateTemplate.save(entity)));
		return di;
	}

	// 删除PO
	public void delete(T entity) {
		hibernateTemplate.delete(entity);
	}

	// 更改PO
	public void update(T entity) {
		hibernateTemplate.update(entity);
	}

	// 获取PO的所有对象
	public List<T> loadAll() {
		return hibernateTemplate.loadAll(entityClass);
	}

	// 执行HQL查询
	public List find(String hql) {
		return this.getHibernateTemplate().find(hql);
	}

	// 执行带参的HQL查询
	@SuppressWarnings("unchecked")
	public List<T> find(String hql, Object[] values) {
		return (List<T>) this.getHibernateTemplate().find(hql, values);
	}
	//计算查找条数 牛逼
	public long count(String hql){
		return (long)this.getHibernateTemplate().find(hql).listIterator().next();
	}
    //分页
	public List<T> getPageList(String hql,int fromIndex,int pageSize){
		Session session=sessionFactory.openSession();
		Query query =session.createQuery(hql);
		query.setFirstResult(fromIndex);
		query.setMaxResults(pageSize);
		List list=query.list();
		session.close();
		return list;
	}
	/**
	 * 对延迟加载的实体PO执行初始化
	 * 
	 * @param entity
	 */
	public void initialize(Object entity) {
		this.getHibernateTemplate().initialize(entity);
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

}
