package com.jianrenwang.data.service;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jianrenwang.data.dao.ResumeDao;
import com.jianrenwang.data.pojo.Resume;

@Service("resumeService")
@Transactional(readOnly = false)
@Repository
public class ResumeService {
	
	@Resource(name = "resumeDao")
	private ResumeDao resumeDao;
	
	public String saveResume(Resume resume) {
		JSONObject j = new JSONObject();

		if (resumeDao.saveResume(resume)) {
			j.put("result", true);
			j.put("message", "简历更新成功,即将跳转！");
			return j.toString();
		} else {
			j.put("result", false);
			j.put("message", "对不起，程序错误，请稍候再试！");
			return j.toString();
		}
	}
	
	public Resume getResume(){
		//HttpSession session = WebContextFactory.get().getSession();
		//String username = session.getAttribute(Constants.SESSION_NAME);
		//if username == null, redirect to index page
		
		//TODO change to use above logic: get userName from user session
		Resume resume = resumeDao.getResumeByAccountID("abcdefghijklmnopqrstuvwxyz123456");
		if(resume==null){
			resume = new Resume();
			saveResume(resume);
		}
		return resume;
	}

}
