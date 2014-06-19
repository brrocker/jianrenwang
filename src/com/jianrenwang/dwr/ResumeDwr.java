package com.jianrenwang.dwr;

import javax.annotation.Resource;

import org.directwebremoting.annotations.Param;
import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.directwebremoting.spring.SpringCreator;
import org.json.JSONObject;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.jianrenwang.data.pojo.Resume;
import com.jianrenwang.data.service.ResumeService;

@Scope("prototype")
@Component("resume_dwr")
@RemoteProxy(creator = SpringCreator.class, creatorParams = @Param(name = "beanName", value = "resume_dwr"), name = "resume_dwr")
public class ResumeDwr {
	@Resource
	private ResumeService resumeService;
	
	@RemoteMethod
	public String saveResume(Resume resume) {
		return resumeService.saveResume(resume);
	}
	
	@RemoteMethod
	public String getResume() {
		JSONObject jo = new JSONObject(resumeService.getResume());
		return jo.toString();
	}
	
}
