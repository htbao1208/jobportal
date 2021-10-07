<%-- 
    Document   : admin-subheader
    Created on : Oct 5, 2021, 8:16:36 AM
    Author     : kid03
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="fa fa-bars"></span>
    </button>
    <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav m-auto">
            <li class="nav-item active"><a href="<c:url value="/admin"/>" class="nav-link">Home</a></li>
<!--	    <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Page</a>
                <div class="dropdown-menu" aria-labelledby="dropdown04">
                    <a class="dropdown-item" href="#">Page 1</a>
                    <a class="dropdown-item" href="#">Page 2</a>
                    <a class="dropdown-item" href="#">Page 3</a>
                    <a class="dropdown-item" href="#">Page 4</a>
              </div>
            </li>-->
            <li class="nav-item"><a href="<c:url value="/admin/user"/>" class="nav-link">User</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Work</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Blog</a></li>
	        <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
                </ul>
	</div>
    </div>
</nav>
