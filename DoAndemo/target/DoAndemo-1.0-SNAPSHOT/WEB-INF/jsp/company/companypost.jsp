    <%-- 
    Document   : companypost
    Created on : Oct 3, 2021, 3:38:12 PM
    Author     : kid03
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<h1 class="text-center text-danger">THONG TIN</h1>

<c:url value="/company/post" var="action"/>
<div class="container-fluid">
<form:form method="post" action="${action}" modelAttribute="jPost">
    <div class="form-group">
        <label for="namepost">Ten</label>
        <form:input type="text" id="namePostId" path="namePost" class="form-control"/>       
    </div>
    <div class="form-group">
        <label for="compname">Ten CT</label>
        <form:input type="text" id="compNameId" path="compName" class="form-control"/>       
    </div>
    <div class="form-group">
        <label for="website">Webstie</label>
        <form:input type="text" id="websiteId" path="website" class="form-control"/>       
    </div>
    <div class="form-group col-md-8">
        <label for="career">nganh nghe</label>
        <form:select id="careerId" path="career" class="form-control">
            <c:forEach items="${career}" var="c">
                <option value="${c.id}">${c.name}</option>
            </c:forEach> 
        </form:select> 
    </div>
    
    
    
    <div class="form-group col-md-8">
        <label for="jobtype">loai cong viec</label>
        <form:select id="jobTypeId" path="jobType" class="form-control">
            <c:forEach items="${jtype}" var="j">
                <option value="${j.id}">${j.typeName}</option>
            </c:forEach> 
        </form:select> 
    </div>
    
    
    
    <div class="form-group">
        <label for="description">Mo ta cong viec</label>
        <form:textarea id="descriptionId" path="description" class="form-control"/>       
    </div>
    
    <div class="form-group">
        <label for="level">Mo ta cong viec</label>
        <form:textarea id="levelId" path="level" class="form-control"/>       
    </div>
    
    <div class="form-group">
        <label for="exp">Mo ta cong viec</label>
        <form:textarea id="expId" path="exp" class="form-control"/>       
    </div>
    
    <div class="form-group" hidden="true">
        <form:input value="${tai_khoan_nguoi_dung.id_tai_khoan}" id="userId" path="user" class="form-control"/>
    </div>

                
                
    <div class="form-group">
            <input type="submit" value="Them thong tin" class="btn btn-danger"/>
    </div>
   </form:form>
</div>