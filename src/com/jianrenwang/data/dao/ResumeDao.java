package com.jianrenwang.data.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jianrenwang.data.pojo.Resume;
import com.jianrenwang.utils.Ut;

@Component("resumeDao")
public class ResumeDao {
	@Autowired
	private SessionFactory sessionFactory;

	public boolean saveResume(Resume resume) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(resume);
		} catch (HibernateException e) {
			System.out.println(e.toString());
			return false;
		}
		Ut.pt("account saved!");
		return true;
	}

	public Resume getResumeByAccountID(String accountID) {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from Resume where id=:id");
		query.setString("id", accountID);
		return (Resume) query.uniqueResult();
	}
}
