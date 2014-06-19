package com.jianrenwang.dwr;

import javax.annotation.Resource;

import org.directwebremoting.WebContextFactory;
import org.directwebremoting.annotations.Param;
import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.directwebremoting.spring.SpringCreator;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.jianrenwang.data.pojo.Job;
import com.jianrenwang.data.service.JobService;

@Scope("prototype")
@Component("job_dwr")
@RemoteProxy(creator = SpringCreator.class, creatorParams = @Param(name = "beanName", value = "job_dwr"), name = "job_dwr")
public class JobDwr {
	@Resource
	private JobService jobService;
	
	@RemoteMethod
	public String saveJob(Job job) {
		return jobService.saveJob(job);
	}
	
	@RemoteMethod
	public Boolean updateJob(Job job) {
		return jobService.updateJob(job);
	}
	
	@RemoteMethod
	public Boolean deleteJob(String id) {
		return jobService.deleteJob(id);
	}
	
	@RemoteMethod
	public String getJobsByPublisherID(String userId) {
		return jobService.getJobsByPublisherID(userId);
	}
	
	@RemoteMethod
	public String getJobsBySearch() {
		return jobService.getJobsBySearch();
	}
}
