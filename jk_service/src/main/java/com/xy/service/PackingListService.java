package com.xy.service;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import com.xy.domain.PackingList;
import com.xy.utils.Page;


/**
 * @Description:	PackingList
 * @Author:			
 * @Company:		
 * @CreateDate:		2016-8-15 16:07:10
 */

public interface PackingListService {

	public List<PackingList> find(String hql, Class<PackingList> entityClass, Object[] params);
	public PackingList get(Class<PackingList> entityClass, Serializable id);
	public Page<PackingList> findPage(String hql, Page<PackingList> page, Class<PackingList> entityClass, Object[] params);
	
	public void saveOrUpdate(PackingList entity);
	public void saveOrUpdateAll(Collection<PackingList> entitys);
	
	public void deleteById(Class<PackingList> entityClass, Serializable id);
	public void delete(Class<PackingList> entityClass, Serializable[] ids);
}