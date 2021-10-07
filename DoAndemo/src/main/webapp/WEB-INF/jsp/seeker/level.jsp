<%-- 
    Document   : level
    Created on : Sep 25, 2021, 3:19:03 PM
    Author     : ADMINIS
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:url value="/seeker/profile-level" var="action"/>

<div class="container bootstrap snippets bootdey">
    <h1 class="text-primary"><span class="glyphicon glyphicon-user"></span>Edit Profile</h1>
      <hr>

        </div>
      </div>
      
      <!-- edit form column -->
      <div class="col-md-9 personal-info">
        <div class="alert alert-info alert-dismissable">
          <a class="panel-close close" data-dismiss="alert">×</a> 
          <i class="fa fa-coffee"></i>
          This is an <strong>.alert</strong>. Use this to show important messages to the user.
        </div>
        <h3>Personal info</h3>
       
        <form:form class="form-horizontal" action="${action}"  method="post" modelAttribute="levelDetail">
                    <div class="form-group">
                        <label for="level">Trình độ</label>
                        <form:select id="levelId" path="level" class="form-control">
                            <c:forEach var="l" items="${level}">
                                <form:option value="${l.id}">${l.tenTrinhDo}</form:option>
                            </c:forEach>
                        </form:select>
                    </div>
                    <div class="form-group">
                        <label for="schoolname">Tên trường</label>
                        <form:input type="text" id="schoolnameId" path="schoolName" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="career">Chuyên ngành</label>
                        <form:input type="text" id="nganhId" path="nganh" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="time">Thời gian</label>
                        <div class="checkedbox">
                            <label for="ckDate">
                                <input type="checkbox" name="ckDate" onchange="valueChange()"> Tôi đang học ở đây
                            </label>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-6">
                                <p>Ngày bắt đầu</p>
                                <form:input type="date" id="startDayId" path="startDay" class="form-control" />
                                
                            </div>
                                
                             <div class="col-md-6" id="endDate">
                                <p>Ngày kết thúc</p>
                                <form:input type="date" id="endtDayId" path="endDay" class="form-control" />
                                
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="mota">Mô tả chi tiết</label>
                            <form:textarea id="motaId" path="mota" class="form-control"/>
                    </div>
                    <div class="form-group" hidden="true">
                        <form:input path="infor" value="${inF.id}" />
                        
                    </div>   

                    <div class="form-group">
                        <input type="submit" value="Them thong tin" class="btn btn-danger"/>
                    </div>
                        
        </form:form>
      </div>
  </div>
</div>

