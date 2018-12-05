package com.jerrymice.runner.util.dao;

import java.io.Serializable;
import java.util.List;

public interface BaseDao<T> {
	
	/**
	 * 
	* @Function: save
	* @Description: �����
	*
	* @values: ���ͱ��
	* @return������ֵΪi 
	* d
	*
	* @author: ��
	* 
	* @date: 2018��12��3�� ����11:04:52 
	*
	 */
	public Serializable save(T object);
	
	
	/**
	 * 
	* @Function: delete
	* @Description: ɾ������
	*
	* @values:���ͱ��
	* @return����
	*
	* @author: ��
	* @date: 2018��12��3�� ����11:14:15 
	*
	 */
	public void delete(T object);
	
	
	/**
	 * 
	* @Function: update
	* @Description: ���¶���
	*
	* @values:���ͱ��
	* @return����
	*
	* @author: ��
	* @date: 2018��12��3�� ����1:50:29 
	*
	 */
	public void update(T object);
	
	
	/**
	 * 
	* @Function: saveOrUpdate
	* @Description: �����ɾ������
	*
	* @values:���ͱ��
	* @return����
	*
	* @author: ��
	* @date: 2018��12��3�� ����1:53:47 
	*
	 */
	public void saveOrUpdate(T object);
	
	
	/**
	 * 
	* @Function: get
	* @Description: ����id��ѯ����
	*
	* @values:���� Serializable id
	* @return������ֵΪ����
	*
	* @author: ��
	* @date: 2018��12��3�� ����1:55:33 
	*
	 */
	public T get(Serializable id);
	
	
	/**
	 * 
	* @Function: get
	* @Description: ����������ѯ����
	*
	* @values:���� String queryString,Object[]values
	* @return������ֵΪ����
	*
	* @author: ��
	* @date: 2018��12��3�� ����1:57:33 
	*
	 */
	public T get(String queryString,Object[]values);
	
	
	/**
	 * 
	* @Function: get
	* @Description: ����������ѯ����
	*
	* @values:���� String queryString,List<Object>values
	* @return������ֵΪ����
	*
	* @author: ��
	* @date: 2018��12��3�� ����1:59:54 
	*
	 */
	public T get(String queryString,List<Object>values);
	
	
	/**
	 * 
	* @Function: find
	* @Description: ������ж���
	*
	* @values:���ͱ��
	* @return������ֵΪ����ļ���
	*
	* @author: ����
	* @date: 2018��12��3�� ����2:01:27 
	*
	 */
	public List<T>find();
	
	
	/**
	 * 
	* @Function: findPart
	* @Description: ������ж����ǰcount������
	*
	* @values:���� int count
	* @return������ֵΪ����ļ���
	*
	* @author: ����
	* @date: 2018��12��3�� ����2:03:30 
	*
	 */
	public List<T>findPart(int count);
	
	
	/**
	 * 
	* @Function: findPart
	* @Description: ��ð�������ѯ��ǰcount������
	*
	* @values: ���� int count,String queryString,Object[]values
	* @return������ֵΪ����ļ���
	*
	* @author: ��
	* @date: 2018��12��3�� ����2:06:39 
	*
	 */
	public List<T>findPart(int count,String queryString,Object[]values);
	
	
	/**
	 * 
	* @Function: finPart
	* @Description: ��ð�������ѯ��ǰcount������
	*
	* @values:���� int count,String queryString,List<Object>values
	* @return������ֵΪ����ļ���
	*
	* @author: ��
	* @date: 2018��12��3�� ����2:21:39 
	*
	 */
	public List<T>findPart(int count,String queryString,List<Object>values);
	
	
	/**
	 * 
	* @Function: find
	* @Description: ������ѯ���󼯺�
	*
	* @values: ���� String queryString,Object[]values
	* @return������ֵΪ����ļ���
	*
	* @author: ��
	* @date: 2018��12��3�� ����2:09:20 
	*
	 */
	public List<T>find(String queryString,Object[]values);
	
	
	/**
	 * 
	* @Function: find
	* @Description: ������ѯ���󼯺�
	*
	* @values:���� String queryString,List<Object>values
	* @return������ֵΪ����ļ���
	*
	* @author: ��
	* @date: 2018��12��3�� ����2:10:55 
	*
	 */
	public List<T>find(String queryString,List<Object>values);
	
	
	/**
	 * 
	* @Function: find
	* @Description: ������ҳ��ѯ
	*
	* @values: ����String queryString,Object []values,Integer page(ҳ��),Integer size(ҳ�Ĵ�С)
	* @return������ֵΪ����ļ���
	*
	* @author: ��
	* @date: 2018��12��3�� ����2:12:14 
	*
	 */
	public List<T>find(String queryString,Object []values,Integer page,Integer size);
	
	
	/**
	 * 
	* @Function: find
	* @Description: ������ҳ��ѯ
	*
	* @values:String queryString,List<Object>values,Integer page(ҳ��),Integer size(ҳ�Ĵ�С)
	* @return������ֵΪ����ļ���
	*
	* @author: ��
	* @date: 2018��12��3�� ����2:14:13 
	*
	 */
	public List<T>find(String queryString,List<Object>values,Integer page,Integer size);
	
	
	/**
	 * 
	* @Function: getCount
	* @Description: ��ø�����������
	*
	* @values:���ͱ��
	* @return������ֵΪ����
	*
	* @author: ��
	* @date: 2018��12��3�� ����2:15:30 
	*
	 */
	public Integer getCount();
	
	
	/**
	 * 
	* @Function: getCount
	* @Description: ��������ø�����������
	*
	* @values:���� String queryString,Object[]values
	* @return������ֵΪ����
	*
	* @author: ��
	* @date: 2018��12��3�� ����2:17:33 
	*
	 */
	public Integer getCount(String queryString,Object[]values);
	
	
	/**
	 * 
	* @Function: getCount
	* @Description:  ��������ø�����������
	*
	* @values:���� String queryString,List<Object>values
	* @return������ֵΪ����
	*
	* @author: ��
	* @date: 2018��12��3�� ����2:25:00 
	*
	 */
	public Integer getCount(String queryString,List<Object>values);
}
