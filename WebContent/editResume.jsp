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
<base href="<%=basePath%>">

<title>更新简历,见人网</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/pages.css">
<link rel="stylesheet" type="text/css" href="css/jianren.css">
<link rel="stylesheet" type="text/css" href="css/style.css">

<script type="text/javascript" src="js/util.js"></script>
<script type="text/javascript" src="jslib/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/edit.js"></script>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/interface/Resume.js'></script>
<script type="text/javascript" src="jslib/json2.js"></script>
</head>

</head>
<body>

	<div id="header_box">
		<div id="header">
			<!-- menu options-->
			<div class="menu_item">首页</div>
			<div class="menu_item">发布职位</div>
			<div class="menu_item">搜索简历</div>
			<!--options end-->

			<div class="top-nav-profile">
				<a href="#" class="top-nav-userinfo" id=""> <span class="name">肖奕</span>
					<img class="profile_image" src="images/profile_image.jpg">
				</a>
				<ul class="top-nav-dropdown" id="top-nav-profile-dropdown">
				</ul>
			</div>
		</div>
	</div>
	<div id="center_box">

		<div class="maincontent" style="min-height: 11px;">
			<div class="plate userresume">

				<h2>
					肖奕 &nbsp&nbsp&nbsp<span class="tips"
						style="background-position: 30px -491px; color: #52b848;">更新在线简历，让其他见人发现你。</span>
				</h2>

				<div class="content">
					<form action="" method="post" name="formResumeSave"
						id="formResumeSave">
						<!-- Personal information -->
						<div class="online_resume_blk">
							<div class="online_resume_tit clearfix">
								<h3>
									<span class="necessary">*</span>个人信息
								</h3>
							</div>
							<div class="online_resume_cont clearfix">
								<div class="online_resume_cont_l">
									<div class="online_resume_item">
										<label for=""><span class="necessary">*</span>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</label>
										<input id="realname" class="w328 required inp valid"
											type="text" name="realname" value="" message="姓名由文字字母组成"><span
											class="online_resume_tips"
											style="width: 337px; left: 105px; display: none">姓名由文字字母组成</span>
									</div>
									<div class="online_resume_item">
										<label for=""><span class="necessary">*</span>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机</label>
										<input id="mobile" class="w328 required mobile inp"
											type="text" name="mobile" value="" message="请输入正确的手机号">
									</div>
									<div class="online_resume_item">
										<label for=""><span class="necessary">*</span>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</label>
										<input id="email" class="w328 required email inp" type="text"
											name="email" value="" message="请输入正确的邮箱">
									</div>
									<div class="online_resume_item"
										style="z-index: 100; position: relative;">
										<label for=""><span class="necessary">*</span>出生年份</label> <select
											name="age" id="age"
											class="online_resume_select online_resume_ageselect required"
											message="请选择出生年份" style="visibility: hidden;">
											<option value="" selected="">请选择</option>
											<option value="2000" class="status2000">2000</option>
											<option value="1999" class="status1999">1999</option>
											<option value="1998" class="status1998">1998</option>
											<option value="1997" class="status1997">1997</option>
											<option value="1996" class="status1996">1996</option>
											<option value="1995" class="status1995">1995</option>
											<option value="1994" class="status1994">1994</option>
											<option value="1993" class="status1993">1993</option>
											<option value="1992" class="status1992">1992</option>
											<option value="1991" class="status1991">1991</option>
											<option value="1990" class="status1990">1990</option>
											<option value="1989" class="status1989">1989</option>
											<option value="1988" class="status1988">1988</option>
											<option value="1987" class="status1987">1987</option>
											<option value="1986" class="status1986">1986</option>
											<option value="1985" class="status1985">1985</option>
											<option value="1984" class="status1984">1984</option>
											<option value="1983" class="status1983">1983</option>
											<option value="1982" class="status1982">1982</option>
											<option value="1981" class="status1981">1981</option>
											<option value="1980" class="status1980">1980</option>
											<option value="1979" class="status1979">1979</option>
											<option value="1978" class="status1978">1978</option>
											<option value="1977" class="status1977">1977</option>
											<option value="1976" class="status1976">1976</option>
											<option value="1975" class="status1975">1975</option>
											<option value="1974" class="status1974">1974</option>
											<option value="1973" class="status1973">1973</option>
											<option value="1972" class="status1972">1972</option>
											<option value="1971" class="status1971">1971</option>
											<option value="1970" class="status1970">1970</option>
											<option value="1969" class="status1969">1969</option>
											<option value="1968" class="status1968">1968</option>
											<option value="1967" class="status1967">1967</option>
											<option value="1966" class="status1966">1966</option>
											<option value="1965" class="status1965">1965</option>
											<option value="1964" class="status1964">1964</option>
											<option value="1963" class="status1963">1963</option>
											<option value="1962" class="status1962">1962</option>
											<option value="1961" class="status1961">1961</option>
											<option value="1960" class="status1960">1960</option>
											<option value="1959" class="status1959">1959</option>
											<option value="1958" class="status1958">1958</option>
											<option value="1957" class="status1957">1957</option>
											<option value="1956" class="status1956">1956</option>
											<option value="1955" class="status1955">1955</option>
											<option value="1954" class="status1954">1954</option>

										</select>
										<div id="ageDiv" class="selectView selectView_mini"
											style="width: 350px; position: absolute; left: 105px; top: 0px;">
											<div class="ds_cont">
												<div class="ds_title" value="">请选择</div>
												<div class="ds_button"></div>
											</div>
											<div class="ds_list" style="display: none;">
												<div class="dsl_cont">
													<p>请选择</p>
													<p>2000</p>
													<p>1999</p>
													<p>1998</p>
													<p>1997</p>
													<p>1996</p>
													<p>1995</p>
													<p>1994</p>
													<p>1993</p>
													<p>1992</p>
													<p>1991</p>
													<p>1990</p>
													<p>1989</p>
													<p>1988</p>
													<p>1987</p>
													<p>1986</p>
													<p>1985</p>
													<p>1984</p>
													<p>1983</p>
													<p>1982</p>
													<p>1981</p>
													<p>1980</p>
													<p>1979</p>
													<p>1978</p>
													<p>1977</p>
													<p>1976</p>
													<p>1975</p>
													<p>1974</p>
													<p>1973</p>
													<p>1972</p>
													<p>1971</p>
													<p>1970</p>
													<p>1969</p>
													<p>1968</p>
													<p>1967</p>
													<p>1966</p>
													<p>1965</p>
													<p>1964</p>
													<p>1963</p>
													<p>1962</p>
													<p>1961</p>
													<p>1960</p>
													<p>1959</p>
													<p>1958</p>
													<p>1957</p>
													<p>1956</p>
													<p>1955</p>
													<p>1954</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="online_resume_cont_r">
									<a href="javascript:;" onclick="alert('demo页面无法上传')"
										class="photo_uploader_mod"> <img width="188" height="188"
										src="images/user_default.jpg" id="photoimg"> <span>上传照片</span></a>
									<input type="hidden" name="photo"
										value="images/user_default.jpg" id="photo">
								</div>
							</div>
						</div>
						<!-- ./Personal information -->
						<!-- Job information -->
						<div class="online_resume_blk">
							<div class="online_resume_tit clearfix">
								<h3>
									<span class="necessary">*</span>工作信息
								</h3>
							</div>
							<div class="online_resume_cont clearfix">
								<div class="online_resume_cont_l w_half">
									<div class="online_resume_item">
										<label for=""><span class="necessary">*</span>当前公司</label> <input
											id="" class="w200 required inp" type="text"
											name="currentcompany" value="" message="不能为空，学生填当前学校">
									</div>
									<div class="online_resume_item">
										<label for=""><span class="necessary">*</span>工作年限</label> <input
											id="" class="w200 required number inp" type="text"
											name="workage" value="" message="工作年限不能为空，学生填0">
									</div>
								</div>
								<div class="online_resume_cont_r w_half">
									<div class="online_resume_item">
										<label for=""><span class="necessary">*</span>当前职位</label> <input
											id="" class="w200 required inp" type="text" name="currentjob"
											value="" message="不能为空，学生填学生">
									</div>
									<div class="online_resume_item">
										<label for=""><span class="necessary">*</span>所在城市</label> <input
											id="" class="w200 required inp" type="text" name="city"
											value="" message="所在城市不能为空">
									</div>
								</div>
							</div>
						</div>
						<!-- ./Job information -->
						<!-- Experience -->
						<div class="online_resume_blk">
							<div class="online_resume_tit clearfix">
								<h3>
									<span class="necessary">*</span>经&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历
								</h3>
							</div>
							<div class="online_resume_cont clearfix">
								<div class="nt_rich_editor" id="ntEditor">
									<div class="nt_rich_editor_bar">
										<a href="javascript:;"
											class="nt_rich_editor_operation nt_rich_editor_add_bullets">添加项目符号</a>
									</div>
									<textarea id="experience" name="experience"
										class="nt_rich_editor_content inp"></textarea>
								</div>
								<!-- <script id="editor" type="text/plain" style="width:672px;height:300px;"></script> -->
								<!-- <textarea id="editorContent" name="experience" style="display:none;"></textarea> -->
							</div>
						</div>
						<!-- ./Experience -->
						<!-- Education information -->
						<div class="online_resume_blk online_resume_education">
							<div class="online_resume_tit clearfix">
								<h3>
									<span class="necessary">*</span>教育经历
								</h3>
							</div>
							<div class="online_resume_cont clearfix" id="education">
								<div class="online_resume_list">
									<!--                  -->
									<div class="online_resume_item clearfix" index="0"
										style="z-index: 1000; position: relative;">
										<select class="online_resume_select required"
											name="education[0][career]" id="education_0"
											message="请选择学位类型" style="visibility: hidden;">
											<option value="" selected="">请选择</option>
											<option value="大专" class="status大专">大专</option>
											<option value="本科" class="status本科">本科</option>
											<option value="硕士" class="status硕士">硕士</option>
											<option value="博士" class="status博士">博士</option>
											<option value="其他" class="status其他">其他</option>

										</select> <input type="text" placeholder="学校" value=""
											class="w222 required inp" id="education[0][school]"
											name="education[0][school]" message="学校不能为空"> <input
											type="text" placeholder="专业" value=""
											class="w222 required inp" id="education[0][major]"
											name="education[0][major]" message="专业不能为空"> <!--                        -->
												<a class="online_resume_cancel" href="javascript:void(0)"
												onclick="jianren_resume_removeeducation(this, 3, 'education')"
												style="display: none"></a> <!--                  -->
												<div id="education_div_0" class="selectView selectView_mini"
													style="width: 130px; position: absolute; left: 0px; top: 0px;">
													<div class="ds_cont">
														<div class="ds_title" value="">请选择</div>
														<div class="ds_button"></div>
													</div>
													<div class="ds_list" style="display: none;">
														<div class="dsl_cont">
															<p>请选择</p>
															<p>大专</p>
															<p>本科</p>
															<p>硕士</p>
															<p>博士</p>
															<p>其他</p>
														</div>
													</div>
												</div>
									</div>
									<!--               
                </div>
                <a class="online_resume_add" href="javascript:;" onclick="jianren_resume_addeducation('education')">添加一行&gt;&gt;</a>
              </div> -->
								</div>
								<!-- ./Education information -->
								<!-- Attach information -->
								<div class="online_resume_blk online_resume_attach">
									<div class="online_resume_tit clearfix">
										<h3>&nbsp;&nbsp;&nbsp;附加信息</h3>
									</div>
									<div class="online_resume_cont clearfix" id="gam">
										<div class="online_resume_item clearfix">
											<label for="portfolio" class="online_resume_border">作品集地址</label>
											<input id="portfolio" class="w512 inp" type="text"
												name="portfolio" value="" placeholder="选填"
												autocomplete="off">
										</div>
										<div class="online_resume_blank blank"></div>
										<div class="online_resume_list">
											<!--                  -->
											<div class="online_resume_item online_resume_gam clearfix"
												index="0" style="z-index: 800; position: relative;">
												<select class="online_resume_select" name="social[0][type]"
													id="gam_0" style="visibility: hidden;">
													<option value="" selected="">社交账号</option>
													<option value="个人博客" class="status个人博客">个人博客</option>
													<option value="Github" class="statusGithub">Github</option>
													<option value="微博" class="status微博">微博</option>
													<option value="知乎" class="status知乎">知乎</option>
													<option value="Lofter" class="statusLofter">Lofter</option>
													<option value="站酷" class="status站酷">站酷</option>
													<option value="其他" class="status其他">其他</option>

												</select> <input type="text"
													placeholder="如：www.weibo.com/uid=24354646" value=""
													class="w512 inp" id="" name="social[0][info]"
													autocomplete="off"> <!--                        -->
													<a class="online_resume_cancel" href="javascript:void(0)"
													onclick="jianren_resume_removeeducation(this, 4, 'gam', '删除社交账号')"
													style="display: none"></a> <!--                    -->
													<div id="gam_div_0" class="selectView selectView_mini"
														style="width: 130px; position: absolute; left: 0px; top: 0px;">
														<div class="ds_cont">
															<div class="ds_title" value="">社交账号</div>
															<div class="ds_button"></div>
														</div>
														<div class="ds_list" style="display: none;">
															<div class="dsl_cont">
																<p>社交账号</p>
																<p>个人博客</p>
																<p>Github</p>
																<p>微博</p>
																<p>知乎</p>
																<p>Lofter</p>
																<p>站酷</p>
																<p>其他</p>
															</div>
														</div>
													</div>
											</div>
											<!--               
                </div>
                <a class="online_resume_add" href="javascript:;" onclick="jianren_resume_addeducation('gam', 4, '添加社交账号', 'online_resume_item online_resume_gam clearfix')">添加一行&gt;&gt;</a>
              </div> -->
										</div>
										<!-- ./Attach information -->
										<!-- Occupation intention -->
										<div class="online_resume_blk">
											<div class="online_resume_tit clearfix">
												<h3>&nbsp;&nbsp;&nbsp;职业意向</h3>
											</div>
											<div class="online_resume_cont clearfix" id="subscribe">
												<div class="online_resume_item" func="withlayer">
													<label for=""><span class="necessary">*</span>目标城市</label>
													<input id="interestcitys" class="w548 required inp"
														type="text" name="interestcitys" value=""
														message="请填写目标城市">
														<div class="online_resume_layer" style="display: none">
															<a href="javascript:;" class="online_resume_closer">×</a>
															<ul class="clearfix" for="interestcitys">
																<li>北京</li>
																<li>上海</li>
																<li>广州</li>
																<li>杭州</li>
																<li>深圳</li>
																<li>武汉</li>
																<li>南京</li>
																<li>成都</li>
																<li>厦门</li>
															</ul>
														</div>
												</div>
												<div class="online_resume_item" func="withlayer">
													<label for=""><span class="necessary">*</span>目标职位</label>
													<input id="interestjobs" class="w548 required inp"
														type="text" name="interestjobs" value=""
														message="目标职位不能为空">
														<div class="online_resume_layer" style="display: none">
															<a href="javascript:;" class="online_resume_closer">×</a>
															<ul class="forjobs clearfix" for="interestjobs">
																<li>产品经理</li>
																<li>运营</li>
																<li>测试</li>
																<li>运维</li>
																<li>Java</li>
																<li>PHP</li>
																<li>C++</li>
																<li>C#</li>
																<li>Android</li>
																<li>iOS</li>
																<li>Python</li>
																<li>架构</li>
																<li>算法</li>
																<li>大数据</li>
																<li>设计师</li>
																<li>前端</li>
																<li>UI</li>
																<li>视觉</li>
																<li>交互</li>
																<li>编辑</li>
																<li>策划</li>
																<li>BD</li>
																<li>市场</li>
																<li>商务</li>
																<li>总监</li>
															</ul>
														</div>
												</div>
												<div class="online_resume_item clearfix">
													<div class="online_resume_item_l">
														<label for="">&nbsp;&nbsp;&nbsp;期望月薪</label> <input
															id="salary" class="w40 inp" type="text" name="salary"
															value="" style="text-align: right"> <span>k</span>
													</div>
													<!--
                  <div class="online_resume_item_r" style="position: relative;">
                    <label for="" style="width:auto"><span class="necessary">*</span>是否邮件订阅目标职位</label>
                    <select class="online_resume_select required" name="issubscribe" id="mailSubscription" message="选择是否订阅邮件" style="visibility: hidden;">
                      <option value="">请选择</option>
<option value="0" class="status0">否</option>
<option value="1" selected="selected" class="status1">是</option>

                    </select>
                  <div class="selectView selectView_mini" style="width: 130px; position: absolute; left: 177px; top: 0px;"><div class="ds_cont"><div class="ds_title" value="">是</div><div class="ds_button"></div></div><div class="ds_list" style="display: none;"><div class="dsl_cont"><p>请选择</p><p>否</p><p>是</p></div></div></div></div>
                -->
												</div>
											</div>
										</div>
										<!-- ./Occupation intention -->
										<div class="resume_spe_line">
											<span>当你给内推人发简历时，会展示以上内容</span>
										</div>
										<!-- Privacy settings -->
										<div class="online_resume_blk online_resume_privacy">
											<div class="online_resume_tit clearfix">
												<h3>&nbsp;&nbsp;&nbsp;简历隐私设置</h3>
											</div>
											<div class="online_resume_cont clearfix" id="forbiddomains">
												<div class="online_resume_item"
													style="z-index: 100; position: relative;">
													<label for="" class="w100"><span class="necessary">*</span>简历隐私状态</label>
													<select name="privatestatus" id="privatestatus"
														class="online_resume_select required"
														style="width: 174px; visibility: hidden;"
														message="选择简历隐私状态">
														<option value="" selected="">请选择</option>
														<option value="0" class="status0">观望中</option>
														<option value="1" class="status1">求内推</option>
														<option value="-1" class="status-1">勿扰我</option>

													</select>
													<div class="selectView selectView_mini"
														style="width: 174px; position: absolute; left: 125px; top: 0px;">
														<div class="ds_cont">
															<div class="ds_title" value="">请选择</div>
															<div class="ds_button"></div>
														</div>
														<div class="ds_list" style="display: none;">
															<div class="dsl_cont">
																<p>请选择</p>
																<p>观望中</p>
																<p>求内推</p>
																<p>勿扰我</p>
															</div>
														</div>
													</div>
												</div>
												<div class="online_resume_item online_resume_gam clearfix" style="display: none;">
													<label for="" class="online_resume_multiline w100">&nbsp;&nbsp;&nbsp;屏蔽公司<br>&nbsp;&nbsp;&nbsp;邮箱后缀</label>
													<div class="online_resume_list">
														<!--                  -->
														<div class="online_resume_input" index="0">
															<input id="0" class="w134 inp"
																style="padding-right: 28px;" type="text"
																name="forbiddomain[0]" value=""
																placeholder="如：baidu.com"> <a
																class="online_resume_cancel" href="javascript:void(0)"
																onclick="jianren_resume_removeforbiddomain(this)"
																style="display: none"></a>
														</div>
														<!--                  -->
													</div>
													<!--                    -->
													<!-- <a class="online_resume_cancel online_resume_add2" href="javascript:;" onclick="jianren_resume_addforbiddomain()"></a> -->
													<!--                  -->
												</div>
											</div>
										</div>
										<!-- ./Privacy settings -->
										<div class="bigpop">
											<div class="content">
												绑定了公司邮箱的「内推人」可能会看到你的简历。<br>你可以填写1个想屏蔽的公司邮箱后缀。<br>屏蔽后，该公司的「内推人」就看不到你的简历了。<!--  <a onclick="$(this).parent().parent().remove()" href="javascript:void(0)" class="close"></a>-->
											</div>
										</div>
										<div class="online_resume_blk">
											<input type="hidden" id="click" name="click" value="1">
												<input type="button" "online_resume_submit"
												id="btnResume" value="保存">
										</div>
					</form>
				</div>
			</div>
		</div>

		<div class="clearfloat"></div>

	</div>

	<div id="footer_box">
		<div id="footer">
			<div>见人网：备案号：。。。。 关于我们。。。。。。 版权所有....</div>
		</div>
	</div>
</body>
</html>