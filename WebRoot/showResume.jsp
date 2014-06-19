<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
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
<script type="text/javascript" src="js/showDetail.js"></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/interface/Resume.js'></script>
<script type='text/javascript' src='js/resumeManager.js'></script>
<script type='text/javascript' src='js/page_showResume.js'></script>
</head>
<body>
	<jsp:include page="frameheader.jsp"></jsp:include>

	<div id="center_box">

		<div class="maincontent" style="min-height: 187px;">
			<div class="plate userresume resumeviewer">
				<!-- Online resume -->
				<div class="content">
					<div class="resumecontent clearfix">
						<!-- Cap -->
						<div class="resumecontent_cap clearfix">
							<h2 title="范磊磊">
								<span>范磊磊</span>的简历
							</h2>
							<div class="edit">
								<a id="31332" href="/neitui/resumesave.html">编辑</a>
							</div>
							<div class="edit download">
								<a target="_blank" id="download"
									href="/?name=neitui&amp;handle=resume&amp;deal=download">下载简历</a>
							</div>
						</div>

						<div class="resumecontent_head clearfix">
							<div class="resumecontent_head_l">
								<div class="resumecontent_h3_wrap">
									<h3>
										江苏润和软件股份有限公司 软件工程师 <span class="location">南京</span>
									</h3>
								</div>
								<dl class="clearfix">
									<dt>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</dt>
									<dd>15951843642</dd>
									<dt>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</dt>
									<dd>flxchy3@163.com</dd>
									<dt>年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</dt>
									<dd>27</dd>
									<dt>工作年限：</dt>
									<dd>4</dd>
								</dl>
							</div>
							<div class="resumecontent_head_r">
								<img
									src="http://neitui123-data.stor.sinaapp.com/neitui/photo/82969/photo_resume.png?1403178588"
									width="190" height="190" alt="范磊磊" title="范磊磊">
							</div>
						</div>
						<div class="resumecontent_body clearfix">
							<div class="resumecontent_exp">
								<h4>经&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历：</h4>
								<div class="resumecontent_exp_context">
									<div class="resumecontent_exp_box">
										2010年~2011年，我在...... .<br> 2011年~至今，我在...... .<br>
												2011年~至今，我在...... .<br> 2011年~至今，我在...... .<br>
														2011年~至今，我在...... .<br> 2011年~至今，我在...... .<br>
																2011年~至今，我在...... .<br> 2011年~至今，我在...... . 
									</div>
								</div>
							</div>
							<div class="resumecontent_eduexp" style="">
								<dl class="clearfix">
									<dt>教育经历：</dt>
									<dd>

										本科 南京信息工程大学 软件工程 <br>
									</dd>
								</dl>
							</div>

							<div class="resumecontent_attach">
								<dl class="clearfix">
									<dt>
										<i class="file"></i>作品集地址：
									</dt>
									<dd>
										<a href="http://flxchy4.iteye.com/" target="_blank"
											class="bluea">http://flxchy4.iteye.com/</a>
									</dd>
								</dl>
							</div>

							<div class="resumecontent_links" style="">
								<dl class="clearfix">

									<dt>
										<i class="link"></i>Github：
									</dt>
									<dd>
										<a href="https://github.com/leofan/" target="_blank"
											class="bluea">https://github.com/leofan/</a>
									</dd>

								</dl>
							</div>
						</div>


						<div class="resume_spe_line">
							<span>当你给内推人发简历时，会展示以上内容</span>
						</div>
						<!-- Foot -->
						<div class="resumecontent_foot">
							<dl class="clearfix">
								<dt>目标职位：</dt>
								<dd>
									<span class="tag">总监</span>
								</dd>
								<dt>目标城市：</dt>
								<dd>
									<span class="tag">南京</span>
								</dd>
								<!--                    -->
								<dt>期望月薪：</dt>
								<dd>8k</dd>
								<!--                  -->
								<dt>职位订阅：</dt>
								<dd>已经订阅</dd>
								<dt>简历隐私状态：</dt>
								<dd>勿扰我</dd>
								<dd></dd>
							</dl>
						</div>
						<!-- ./Foot -->
					</div>
				</div>
				<!-- ./Online resume -->
			</div>
		</div>

		<div class="clearfloat"></div>

	</div>

	<jsp:include page="framefooter.jsp"></jsp:include>
</body>
</html>