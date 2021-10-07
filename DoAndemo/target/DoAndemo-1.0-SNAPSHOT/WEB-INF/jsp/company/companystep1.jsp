<%-- 
    Document   : company-page
    Created on : Sep 18, 2021, 3:42:04 PM
    Author     : kid03
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<c:url value="/company/companystep1" var="action"/>

<div class="container">
    <form:form class="step1-form" method="post" action="${action}" modelAttribute="company" >
        <div class="form-group">
            <label for="compName" class="text-uppercase">Tên Công Ty</label>
            <form:input type="text" class="form-control" placeholder="tên ct" path="compName" id="compNameId"/>

        </div>
        <div class="form-group">
            <label for="createdDate" class="text-uppercase">Ngày thành lập</label>
            <form:input type="date" class="form-control" placeholder="date" path="createdDate" id="createdDateId"/>
        </div>
        <div class="form-group">
            <label for="compWeb" class="text-uppercase">Website</label>
            <form:input type="text" class="form-control" placeholder="link" path="compWeb" id="compWebId"/>

        </div>
        <div class="form-group">
            <label for="logo" class="text-uppercase">Password</label>
            <form:input type="text" class="form-control" placeholder="logo" path="logo" id="logoId"/>
        </div>
        <div class="form-check ">
            <button type="submit" class="btn btn-outline-dark float-right">Submit</button>
        </div>
    </form:form>
</div>
