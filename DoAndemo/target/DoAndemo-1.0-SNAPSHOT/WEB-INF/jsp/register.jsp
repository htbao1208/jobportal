<%-- 
    Document   : register
    Created on : Sep 7, 2021, 3:05:01 AM
    Author     : kid03
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<c:url value="/register" var="action" />

<section class="register-block">
    <div class="container">
	<div class="row">
            <div class="col-md-4 register-sec">
		<h2 class="text-center">Register Now</h2>
                <form:form class="register-form" method="post" action="${action}" modelAttribute="user" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="username" class="text-uppercase">Tên đăng nhập</label>
                        <form:input type="text" class="form-control" placeholder="Tên đăng nhập" path="username" id="usernameId"/>
                        <form:errors path="username" cssClass="text-danger" element="div" />

                    </div>
                    <div class="form-group">
                        <label for="email" class="text-uppercase">Email</label>
                        <form:input type="email" class="form-control" placeholder="Enter your email" path="email" id="emailId"/>

                    </div>
                    <div class="form-group">
                        <label for="password" class="text-uppercase">Mật khẩu</label>
                        <form:input type="password" class="form-control" placeholder="Nhập mật khẩu" id="passwordId" path="password"/>
                    </div>
                    <div class="form-group">
                        <label for="confirmPassword" class="text-uppercase">Xác nhận mật khẩu</label>
                        <form:input type="password" class="form-control" placeholder="Enter your confirm password" id="confirmPasswordId" path="confirmPassword"/>
                    </div>
                    <div class="form-group">
                        <label for="userRole" class="text-uppercase">Role</label>
                        <form:select class="form-control" id="userRoleId" path="userRole">
                            <form:option value="null" label="Choose your role" />
                            <form:option value="ROLE_SEEKER" label="Ứng viên"/>
                            <form:option value="ROLE_COMPANY" label="Nhà tuyển dụng"/>
                        </form:select>
                        <form:errors path="userRole" cssClass="text-danger" element="div" />
                    </div>
                    
                    <div class="form-group">
                        <label for="file" class="text-uppercase">Ảnh đại diện</label>
                        <form:input type="file" class="form-control" placeholder="" id="file" path="file"/>
                    </div>
                    
                    <div class="form-group">
                        
                    </div>
                    

                    <div class="form-check ">
                        <button type="submit" class="btn btn-outline-dark float-right">Submit</button>
                    </div>
  
                </form:form>

            </div>
            <div class="col-md-8 banner-sec">
                
            </div>
        </div>
    </div>
</section>
