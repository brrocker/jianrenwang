<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.jianrenwang.commonservice.Constants"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page
	import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="com.jianrenwang.data.service.ResumeService"%>
<%@page import="com.jianrenwang.data.pojo.Resume"%>
<%@page import="java.util.Calendar"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<base href="<%=basePath%>" />

<title>我的简历,见人网</title>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />

<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/pages.css" />
<link rel="stylesheet" type="text/css" href="css/jianren.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/global.css" />

<script type="text/javascript" src="jslib/jquery-1.4.2.min.js"></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/interface/Resume.js'></script>
<script type='text/javascript' src='js/page_showResume.js'></script>
<%
	String accountID = (String) session
			.getAttribute(Constants.SESSION_ID);
	String userName = (String) session
			.getAttribute(Constants.SESSION_NAME);
	if (null == accountID || "".equals(accountID)) {
%>
<script type="text/javascript">
	window.location.href = "index.jsp";
</script>
<%
	return;
	}
	ApplicationContext ctx = WebApplicationContextUtils
			.getRequiredWebApplicationContext(this.getServletConfig()
					.getServletContext());
	ResumeService resumeService = (ResumeService) ctx
			.getBean("resumeService");
	Resume resume = resumeService.getResumeByAccountID(accountID);
%>
</head>

		<div class="maincontent" style="min-height: 187px;">
			<div class="plate userresume resumeviewer">
				<!-- Online resume -->
				<div class="content">
					<div class="resumecontent clearfix">
						<!-- Cap -->
						<div class="resumecontent_cap clearfix">
							<h2 title="<%=resume.getRealName()%>">
								<span><%=resume.getRealName()%></span>的简历
							</h2>
							<div class="edit">
								<a id="31332" href="editResume.jsp">编辑</a>
							</div>
							<div class="edit download">
								<a target="_blank" id="download"
									href="javascript:void(0)" onclick="alert('demo未实现')">下载简历</a>
							</div>
						</div>

						<div class="resumecontent_head clearfix">
							<div class="resumecontent_head_l">
								<div class="resumecontent_h3_wrap">
									<h3><%=(resume.getCurrentcompany() + " " + resume
					.getCurrentjob())%>
										<%
											String city = resume.getCity();
											if (!"".equals(city)) {
										%>
										<span class="location"><%=city%></span>
										<%
											}
										%>
									</h3>
								</div>
								<dl class="clearfix">
									<dt>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</dt>
									<dd><%=resume.getMobile()%></dd>
									<dt>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</dt>
									<dd><%=resume.getEmail()%></dd>
									<dt>年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</dt>
									<%
										int birthyear = resume.getBirthyear();
										int age = 0;
										if (birthyear > 0) {
											age = Calendar.getInstance().get(Calendar.YEAR) - birthyear;
										}
									%>
									<dd><%=age%></dd>
									<dt>工作年限：</dt>
									<dd><%=resume.getWorkage()%></dd>
								</dl>
							</div>
							<div class="resumecontent_head_r">
								<img src="images/user_default.jpg" width="190" height="190"
									alt="<%=resume.getRealName()%>"
									title="<%=resume.getRealName()%>">
							</div>
						</div>
						<div class="resumecontent_body clearfix">
							<div class="resumecontent_exp">
								<h4>经&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历：</h4>
								<div class="resumecontent_exp_context">
									<div class="resumecontent_exp_box">
										<%=resume.getExperience()%>
									</div>
								</div>
							</div>
							<div class="resumecontent_eduexp" style="">
								<dl class="clearfix">
									<dt>教育经历：</dt>
									<dd>
										<%
											String eduStr = "";
											String[] eduDetail = resume.getEducation().split(",");
											for (int i = 0; i < eduDetail.length; i++) {
												eduStr += (eduDetail[i] + " ");
											}
										%>

										<%=eduStr%>
										<br>
									</dd>
								</dl>
							</div>


							<!-- Foot -->
							<div class="resumecontent_foot">
								<dl class="clearfix">
									<dt>目标职位：</dt>
									<dd>
										<span class="tag"><%=resume.getInterestjobs() %></span>
									</dd>
									<dt>目标城市：</dt>
									<dd>
										<span class="tag"><%=resume.getInterestcitys() %></span>
									</dd>
									<!--                    -->
									<dt>期望月薪：</dt>
									<dd><%=resume.getSalary() %>k</dd>
									<!--                  -->
									<dd></dd>
								</dl>
							</div>
							<!-- ./Foot -->
							<div class="resumecontent_attach">
								<dl class="clearfix">
									<dt>
										<i class="file"></i>业余爱好：
									</dt>
									<dd>
										<div class="bluea"><%=resume.getHobbies()%></div>
									</dd>
								</dl>
							</div>
							<%
								String gam = resume.getGam();
								if (!"".equals(gam)) {
									String[] gamDetail = gam.split(",", -1);
									if (gamDetail.length == 2 && !"".equals(gamDetail[0])
											&& !"".equals(gamDetail[1])) {
							%>
							<div class="resumecontent_links" style="">
								<dl class="clearfix">

									<dt>
										<i class="link"></i><%=gamDetail[0]%>：
									</dt>
									<dd>
										<a href="<%=gamDetail[1]%>" target="_blank" class="bluea"><%=gamDetail[1]%></a>
									</dd>

								</dl>
							</div>
							<%
								}
								}
							%>
						</div>


						<div class="resume_spe_line">
							<span>当你发送简历时，会展示以上内容</span>
						</div>
						<!-- Foot -->
							<div class="resumecontent_foot">
								<dl class="clearfix">
									<dt>职位订阅：</dt>
									<dd><%=resume.getMailSubscription() %></dd>
									<dt>简历隐私状态：</dt>
									<dd><%=resume.getPrivatestatus() %></dd>
									<dd></dd>
								</dl>
							</div>
							<!-- ./Foot -->
					</div>
				</div>
				<!-- ./Online resume -->
			</div>
		</div>


