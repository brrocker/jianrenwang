package com.jianrenwang.data.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Component;

import com.jianrenwang.data.pojo.Resume;
import com.jianrenwang.utils.Ut;

@Component("resumeDao")
public class ResumeDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public boolean saveResume(Resume resume) {
		try {
			if("".equals(resume.getAccountID())){
				resume.setAccountID("abcdefghijklmnopqrstuvwxyz123456");
			}
			sessionFactory.getCurrentSession().saveOrUpdate(resume);
		} catch (DataAccessException e) {
			return false;
		}
		Ut.pt("account saved!");
		return true;
	}
}
