/**
 * Copyright(C) 2014 DB Schenker  
 * Project Name: CISCO OUTPUT SYSTEM
 * @Package com.jianrenwang.data.dao  
 * @author  Martin Xiao
 * @created Jun 18, 2014
 * @version 1.0.0
 */
package com.jianrenwang.data.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jianrenwang.data.pojo.Job;
import com.jianrenwang.data.pojo.Text;

/**
 * ClassName: JobDao
 
 * Description: 
 *
 * @author Martin Xiao
 * @version 1.0.0
 * @created Jun 18, 2014
 */
@Component("jobDao")
public class JobDao {
	@Autowired
	private SessionFactory sessionFactory;

	public String saveJob(Job job) {
		Session s = sessionFactory.getCurrentSession();
		return s.save(job).toString();
	}
	
	public void updateJob(Job job) {
		Session s = sessionFactory.getCurrentSession();
		s.update(job);
	}

	public Job getJobById (String id) {
		return (Job)sessionFactory.getCurrentSession().get(Job.class,id);
	}
	
	public long deleteJobById (String id) {
		Query query = sessionFactory.getCurrentSession().createQuery(
		"delete from Job where id = :id");
		query.setParameter("id", id);
		
		return query.executeUpdate();
	}
	
	public List<Job> getJobsByPublisherID(String userId) {
		Query query = sessionFactory.getCurrentSession().createQuery(
		"from Job where publisherID = :userId order by createtime");
		query.setParameter("userId", userId);
		
		return query.list();
	}
}
