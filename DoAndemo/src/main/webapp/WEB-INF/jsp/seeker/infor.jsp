<%-- 
    Document   : infor
    Created on : Sep 12, 2021, 4:28:40 AM
    Author     : ADMINIS
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<h1 class="text-center text-danger">THONG TIN</h1>

<c:url value="/infor" var="action"/>
<c:url value="/level" var="act"/>
<form:form method="post" action="${action}" modelAttribute="infor">
    <div class="form-group">
        <label for="ho">Ho</label>
        <form:input type="text" id="ho" path="ho" class="form-control"/>       
    </div>
    <div class="form-group">
        <label for="ten">Ten</label>
        <form:input type="text" id="ten" path="ten" class="form-control"/>       
    </div>
    <div class="form-group">
        <label for="gioitinh">Gioi tinh</label>
        <form:input type="text" id="gioitinh" path="gioitinh" class="form-control"/>       
    </div>
    <div class="form-group">
        <label for="ngaysinh">Ngay sinh</label>
        <form:input type="date" id="ngaysinh" path="ngaysinh" class="form-control"/>       
    </div>
    <div class="form-group">
        <label for="diachi">Dia chi</label>
        <form:input type="text" id="diachi" path="diachi" class="form-control"/>       
    </div>
    <div class="form-group">
        <label for="mota">Mo ta trinh do</label>
        <form:textarea id="mota" path="mota" class="form-control"/>       
    </div>
    <div class="form-group">
        <label for="kinang">Mo ta ki nang</label>
        <form:textarea id="kinang" path="kinang" class="form-control"/>       
    </div>
    <div class="form-row">

    <div class="form-group col-md-1">
                <div><label></label></div>
                <div><a href="#addTrinhDoModal" class="btn" data-toggle="modal"><span class="material-icons-outlined">add</span></a></div>
       </div> 
    </div>
                
                
    <div class="form-group">
            <input type="submit" value="Them thong tin" class="btn btn-danger"/>
    </div>
   </form:form>


<div id="addTrinhDoModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form:form action="${act}" method="post" modelAttribute="level">
                        <div class="modal-header">
                            <h4 class="modal-title">Thêm trình độ</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="tenTrinhDo">Tên trình độ</label>
                                <form:input type="text" id="tenTrinhDo" path="tenTrinhDo" cssClass="form-control"/>
                            </div>
                        </div>
                          <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                           </div>
                    </form:form>
                </div>
            </div>
        </div>
           
    
    
       
  



     


