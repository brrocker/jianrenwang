<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jianrenwang.commonservice.Constants"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%String userName = (String) session
.getAttribute(Constants.SESSION_NAME); %>
<div id="header_box">
	<div id="header">
    	<!-- menu options-->
        <a href="main.jsp"><div class="menu_item">首页</div></a>
        <a href="postJob.jsp"><div class="menu_item">发布职位</div></a>
        <div class="menu_item">搜索简历</div>
        <!--options end-->
        
        <div class="top-nav-profile">
			<a href="myPostedJob.jsp" class="top-nav-userinfo" id="">
				<span class="name"><%=userName %></span>
				<img class="profile_image" src="images/profile_image.jpg">
			</a>
			<ul class="top-nav-dropdown" id="top-nav-profile-dropdown">
			</ul>	
		</div>
    </div>
</div>
