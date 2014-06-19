package com.jianrenwang.data.dao;

import org.hibernate.Query;
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
			if ("".equals(resume.getAccountID())) {
				resume.setAccountID("abcdefghijklmnopqrstuvwxyz123456");
			}
			sessionFactory.getCurrentSession().saveOrUpdate(resume);
		} catch (DataAccessException e) {
			return false;
		}
		Ut.pt("account saved!");
		return true;
	}

	public Resume getResumeByUsername(String username) {
		Query query = sessionFactory
				.getCurrentSession()
				.createQuery(
						"from Resume where Resume.accountID=("
								+ "SELECT Accout.id from Account WHERE Account.username=:username)");
		query.setString("username", username);

		System.out.println("----getResumeByUsername,username=" + username);

		return (Resume) query.uniqueResult();
	}

	public Resume getResumeByAccountID(String accountID) {
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from Resume where accountID=:accountID");
		query.setString("accountID", accountID);

		System.out.println("----getResumeByUserID OK,accountID=" + accountID);

		return (Resume) query.uniqueResult();
	}
}
