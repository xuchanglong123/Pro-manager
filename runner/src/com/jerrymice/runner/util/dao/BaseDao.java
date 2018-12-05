package com.jerrymice.runner.util.dao;

import java.io.Serializable;
import java.util.List;

public interface BaseDao<T> {
	
	/**
	 * 
	* @Function: save
	* @Description: 存对象
	*
	* @values: 泛型编程
	* @return：返回值为id
	*
	* @author: 金
	* @date: 2018年12月3日 上午11:04:52 
	*
	 */
	public Serializable save(T object);
	
	
	/**
	 * 
	* @Function: delete
	* @Description: 删除对象
	*
	* @values:泛型编程
	* @return：无
	*
	* @author: 金
	* @date: 2018年12月3日 上午11:14:15 
	*
	 */
	public void delete(T object);
	
	
	/**
	 * 
	* @Function: update
	* @Description: 更新对象
	*
	* @values:泛型编程
	* @return：无
	*
	* @author: 金
	* @date: 2018年12月3日 下午1:50:29 
	*
	 */
	public void update(T object);
	
	
	/**
	 * 
	* @Function: saveOrUpdate
	* @Description: 保存或删除对象
	*
	* @values:泛型编程
	* @return：无
	*
	* @author: 金
	* @date: 2018年12月3日 下午1:53:47 
	*
	 */
	public void saveOrUpdate(T object);
	
	
	/**
	 * 
	* @Function: get
	* @Description: 根据id查询对象
	*
	* @values:参数 Serializable id
	* @return：返回值为对象
	*
	* @author: 金
	* @date: 2018年12月3日 下午1:55:33 
	*
	 */
	public T get(Serializable id);
	
	
	/**
	 * 
	* @Function: get
	* @Description: 根据条件查询对象
	*
	* @values:参数 String queryString,Object[]values
	* @return：返回值为对象
	*
	* @author: 金
	* @date: 2018年12月3日 下午1:57:33 
	*
	 */
	public T get(String queryString,Object[]values);
	
	
	/**
	 * 
	* @Function: get
	* @Description: 根据条件查询对象
	*
	* @values:参数 String queryString,List<Object>values
	* @return：返回值为对象
	*
	* @author: 金
	* @date: 2018年12月3日 下午1:59:54 
	*
	 */
	public T get(String queryString,List<Object>values);
	
	
	/**
	 * 
	* @Function: find
	* @Description: 获得所有对象
	*
	* @values:泛型编程
	* @return：返回值为对象的集合
	*
	* @author: 集合
	* @date: 2018年12月3日 下午2:01:27 
	*
	 */
	public List<T>find();
	
	
	/**
	 * 
	* @Function: findPart
	* @Description: 获得所有对象的前count个对象
	*
	* @values:参数 int count
	* @return：返回值为对象的集合
	*
	* @author: 集合
	* @date: 2018年12月3日 下午2:03:30 
	*
	 */
	public List<T>findPart(int count);
	
	
	/**
	 * 
	* @Function: findPart
	* @Description: 获得按条件查询的前count个对象
	*
	* @values: 参数 int count,String queryString,Object[]values
	* @return：返回值为对象的集合
	*
	* @author: 金
	* @date: 2018年12月3日 下午2:06:39 
	*
	 */
	public List<T>findPart(int count,String queryString,Object[]values);
	
	
	/**
	 * 
	* @Function: finPart
	* @Description: 获得按条件查询的前count个对象
	*
	* @values:参数 int count,String queryString,List<Object>values
	* @return：返回值为对象的集合
	*
	* @author: 金
	* @date: 2018年12月3日 下午2:21:39 
	*
	 */
	public List<T>findPart(int count,String queryString,List<Object>values);
	
	
	/**
	 * 
	* @Function: find
	* @Description: 条件查询对象集合
	*
	* @values: 参数 String queryString,Object[]values
	* @return：返回值为对象的集合
	*
	* @author: 金
	* @date: 2018年12月3日 下午2:09:20 
	*
	 */
	public List<T>find(String queryString,Object[]values);
	
	
	/**
	 * 
	* @Function: find
	* @Description: 条件查询对象集合
	*
	* @values:参数 String queryString,List<Object>values
	* @return：返回值为对象的集合
	*
	* @author: 金
	* @date: 2018年12月3日 下午2:10:55 
	*
	 */
	public List<T>find(String queryString,List<Object>values);
	
	
	/**
	 * 
	* @Function: find
	* @Description: 条件分页查询
	*
	* @values: 参数String queryString,Object []values,Integer page(页码),Integer size(页的大小)
	* @return：返回值为对象的集合
	*
	* @author: 金
	* @date: 2018年12月3日 下午2:12:14 
	*
	 */
	public List<T>find(String queryString,Object []values,Integer page,Integer size);
	
	
	/**
	 * 
	* @Function: find
	* @Description: 条件分页查询
	*
	* @values:String queryString,List<Object>values,Integer page(页码),Integer size(页的大小)
	* @return：返回值为对象的集合
	*
	* @author: 金
	* @date: 2018年12月3日 下午2:14:13 
	*
	 */
	public List<T>find(String queryString,List<Object>values,Integer page,Integer size);
	
	
	/**
	 * 
	* @Function: getCount
	* @Description: 获得该类对象的总数
	*
	* @values:泛型编程
	* @return：返回值为整型
	*
	* @author: 金
	* @date: 2018年12月3日 下午2:15:30 
	*
	 */
	public Integer getCount();
	
	
	/**
	 * 
	* @Function: getCount
	* @Description: 按条件获得该类对象的数量
	*
	* @values:参数 String queryString,Object[]values
	* @return：返回值为整型
	*
	* @author: 金
	* @date: 2018年12月3日 下午2:17:33 
	*
	 */
	public Integer getCount(String queryString,Object[]values);
	
	
	/**
	 * 
	* @Function: getCount
	* @Description:  按条件获得该类对象的数量
	*
	* @values:参数 String queryString,List<Object>values
	* @return：返回值为整型
	*
	* @author: 金
	* @date: 2018年12月3日 下午2:25:00 
	*
	 */
	public Integer getCount(String queryString,List<Object>values);
}
