<%-- 
    Document   : header
    Created on : Sep 4, 2021, 4:49:46 PM
    Author     : kid03
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<nav class="navbar navbar-expand-md navbar-light sticky-top">
    <div class="container-fluid">
        <a class="navbar-branch" href="#"> <%-- logo --%>
            <%-- add ảnh logo --%>
            <img src="<c:url value="/images/logo.png"/>" alt="logo" style="height: 40px"/>
            
            <a class>FINDING JOB</a>
            
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="myNav">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link active nav-link-with-icon" href="<c:url value="/"/>">
                        <i class="fas fa-home"></i>
                        <span>Home</span>
                    </a>
                </li>
                <li class="nav-item">
                    <sec:authorize access="hasRole('SEEKER') or !isAuthenticated()">
                        <a class="nav-link nav-link-with-icon" href="<c:url value="/search"/>">
                        <i class="fa fa-search"></i>
                        <span>Tìm việc</span>
                    </a>
                    </sec:authorize>
                    <sec:authorize access="hasRole('COMPANY')">
                        <a class="nav-link nav-link-with-icon" href="#">
                        <i class="fa fa-search"></i>
                        <span>Tìm ứng viên</span>
                        </a>
                    </sec:authorize>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-with-icon" href="#">
                        <i class="far fa-building"></i>
                        <span>Công ty</span>
                    </a>
                </li>
                <sec:authorize access="hasRole('ADMIN')">
                    <li class="nav-item">
                    <a class="nav-link nav-link-with-icon" href="<c:url value="/admin"/>">
                        <i class="far fa-building"></i>
                        <span>Admin</span>
                    </a>
                </li>
                </sec:authorize>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle border rounded font-weight-bolder mx-1" role="button" data-toggle="dropdown" id="dropdownMenuButton" aria-haspopup="true" aria-expanded="false">
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <img class="mr-2" src="<c:url value="/images/user.png"/>" width="25" height="25" alt="avatar">
                            <span>Đăng ký</span>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <img class="mr-2 rounded-circle" src="<c:url value="${tai_khoan_nguoi_dung.userImage}"/>" width="25" height="25" alt="avatar"/>
                            <span>${pageContext.request.userPrincipal.name}</span>
                        </c:if>
                    </a>
                    <div class="dropdown-menu dropdown-menu-center" aria-labelledby="dropdownMenuButton">
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <div class="content row no-gutters  ">
                            <div class="d-flex col-12 justify-content-center mb-2 font-weight-bold">
                                <a type="button"  class="btn btn-outline-dark btn-lg mx-1 px-6 py-1 " href="<c:url value="/register"/>">Đăng ký</a>

                                <a type="button"  class="btn btn-primary btn-lg mx-1 px-6 py-1"  href="<c:url value="/login"/>">Đăng nhập</a>

                            </div>
                            </div>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            
                            <a href="<c:url value="/seeker/profile"/>">Cập nhật thông tin</a>
                            <a href="<c:url value="/logout"/>">Logout</a>
                        </c:if>
                    </div>
                </li>
                <li class="nav-item">
                    <sec:authorize access="hasRole('SEEKER') or !isAuthenticated()">
                        <a class="nav-link" href="<c:url value="/company"/>">Nhà tuyển dụng</a>
                    </sec:authorize>
                    <sec:authorize access="hasRole('COMPANY')">
                        <a class="nav-link" href="<c:url value="/company"/>">Ứng viên</a>
                    </sec:authorize>
                </li>
            </ul>
        </div>
    </div>
</nav>
