package com.jianrenwang.data.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.directwebremoting.WebContextFactory;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jianrenwang.commonservice.Constants;
import com.jianrenwang.data.dao.AccountDao;
import com.jianrenwang.data.dao.JobDao;
import com.jianrenwang.data.dao.TextDao;
import com.jianrenwang.data.pojo.Account;
import com.jianrenwang.data.pojo.Job;
import com.jianrenwang.data.pojo.Text;
import com.jianrenwang.utils.Ut;

@Service("jobService")
@Transactional(readOnly = false)
@Repository
public class JobService {
	
	@Resource(name = "jobDao")
	private JobDao jobDao;
	
	public String saveJob(Job job) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS");//设置日期格式
		String dateStr = df.format(new Date());
		job.setUpdatetime(dateStr);
		job.setCreatetime(dateStr);
		Account account = (Account) WebContextFactory.get().getSession().getAttribute(Constants.USER_CLASS);
		Ut.pt(account.getShowname());
		job.setPublisherID(account.getId());
		job.setPublisherName(account.getShowname());
		
		String id = jobDao.saveJob(job);
		job.setId(id);
		JSONObject jo = new JSONObject(job);
		return jo.toString();
	}
	
	public boolean updateJob(Job job) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS");//设置日期格式
		job.setUpdatetime(df.format(new Date()));
		jobDao.updateJob(job);
		return true;
	}
	
	public boolean deleteJob(String id) {
		jobDao.deleteJobById(id);
		return true;
	}
	
	public Job getJobById (String id) {
		return jobDao.getJobById(id);
	}
	
	public String getJobsByPublisherID(String id) {
		List<Job> jobls = jobDao.getJobsByPublisherID(id);
		JSONObject jo = new JSONObject();
		JSONArray ja = new JSONArray();
		for(Job t: jobls) {
			JSONObject j = new JSONObject(t);
			ja.put(j);
		}
		jo.put("data", ja);
		return jo.toString();
	}
	
	public String getJobsBySearch() {
		List<Job> jobls = jobDao.getJobsBySearch();
		JSONObject jo = new JSONObject();
		JSONArray ja = new JSONArray();
		for(Job t: jobls) {
			JSONObject j = new JSONObject(t);
			ja.put(j);
		}
		jo.put("data", ja);
		return jo.toString();
	}
}
