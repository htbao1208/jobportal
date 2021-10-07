<%-- 
    Document   : profile
    Created on : Oct 6, 2021, 8:31:53 PM
    Author     : kid03
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/seeker/profile" var="action"/>



<!DOCTYPE html>
<div class="container">
    <div class="row p-4">
        <div class="col-md-3">
            <div class="osahan-account-page-left shadow-sm bg-white h-100">
                <div class="border-bottom p-4">
                    <div class="osahan-user text-center">
                        <div class="osahan-user-media">
                            <img class="mb-3 rounded-pill shadow-sm mt-1" src="<c:url value="${tai_khoan_nguoi_dung.userImage}"/>" alt="avt">
                            <div class="osahan-user-media-body">
                                <h6 class="mb-2">${tai_khoan_nguoi_dung.username}</h6>
                                <p>${tai_khoan_nguoi_dung.email}</p>
                                <p class="mb-0 text-black font-weight-bold"><a class="text-primary mr-3" data-toggle="modal" href="#addOrEditInfo"> EDIT</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <ul class="nav nav-tabs flex-column border-0 pt-4 pl-4 pb-4" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link" id="orders-tab" data-toggle="tab" href="#orders" role="tab" aria-controls="orders" aria-selected="false"><i class="icofont-food-cart"></i> Orders</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-9">
            <div class="row">
                <div class="p-4">
                <div class="osahan-account-page-right shadow-sm bg-white p-4 h-100">
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane  fade  active show" id="orders" role="tabpanel" aria-labelledby="orders-tab">
                            <div class="row">
                                <div class="col-md-9">
                                <h4 class="font-weight-bold mt-0 mb-4 flex-auto">Past Orders</h4>
                            </div>
                            <div class="col-md-3">
                                <a href="<c:url value="/seeker/profile-level"/>"><i class="fa fa-plus" aria-hidden="true"></i></a>
                            </div>
                            </div>
                            <hr>

<!--                            <div class="bg-white card mb-4 order-list shadow-sm ">
                                <div class="gold-members p-4">
                                    
                                    <div class="media">
                                        <a href="#">
                                            <img class="mr-4" src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="Generic placeholder image">
                                        </a>
                                        <div class="media-body">
                                            
                                            <h6 class="mb-2">
                                                DH Mở
                                            </h6>
                                            <p class="text-gray mb-1"> Công nghệ thông tin </p>
                                            <p class="text-gray mb-3"> 8/2018 - 10/2022 </p>
                                            <p class="text-dark">Tốt nghiệp loại giỏi
                                            </p>
                                            <hr>
                                            <div class="float-right">
                                                <a class="btn btn-sm btn-outline-primary" href="#"><i class="icofont-headphone-alt"></i> HELP</a>
                                                <a class="btn btn-sm btn-primary" href="#"><i class="icofont-refresh"></i> REORDER</a>
                                            </div>
                                            <p class="mb-0 text-black text-primary pt-2"><span class="text-black font-weight-bold"> Total Paid:</span> $300
                                            </p>
                                        </div>
                                    </div>

                                </div>
                            </div>-->

                        </div>
                    </div>
                </div>
                </div>
                
                
                
                <div class="p-4">
                <div class="osahan-account-page-right shadow-sm bg-white p-4 h-100">
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane  fade  active show" id="orders" role="tabpanel" aria-labelledby="orders-tab">
                            <div class="row">
                                <div class="col-md-9">
                                <h4 class="font-weight-bold mt-0 mb-4 flex-auto">Past Orders</h4>
                            </div>
                            <div class="col-md-3">
                                <i class="fa fa-plus" aria-hidden="true"></i>
                            </div>
                            </div>
                            <hr>

<!--                            <div class="bg-white card mb-4 order-list shadow-sm ">
                                <div class="gold-members p-4">
                                    
                                    <div class="media">
                                        <a href="#">
                                            <img class="mr-4" src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="Generic placeholder image">
                                        </a>
                                        <div class="media-body">
                                            
                                            <h6 class="mb-2">
                                                DH Mở
                                            </h6>
                                            <p class="text-gray mb-1"> Công nghệ thông tin </p>
                                            <p class="text-gray mb-3"> 8/2018 - 10/2022 </p>
                                            <p class="text-dark">Tốt nghiệp loại giỏi
                                            </p>
                                            <hr>
                                            <div class="float-right">
                                                <a class="btn btn-sm btn-outline-primary" href="#"><i class="icofont-headphone-alt"></i> HELP</a>
                                                <a class="btn btn-sm btn-primary" href="#"><i class="icofont-refresh"></i> REORDER</a>
                                            </div>
                                            <p class="mb-0 text-black text-primary pt-2"><span class="text-black font-weight-bold"> Total Paid:</span> $300
                                            </p>
                                        </div>
                                    </div>

                                </div>
                            </div>-->

                        </div>
                    </div>
                </div>
                </div>
            </div>
            
        </div>
    </div>
</div>
                <!--ADD INFOR-->                 
<div id="addOrEditInfo" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form:form action="${action}" method="post" modelAttribute="infor">
                <div class="modal-header">
                    <h4 class="modal-title">Chỉnh sửa thông tin</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="ho">Họ và tên lót</label>
                        <form:input type="text" id="hoId" path="ho" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="ten">Tên</label>
                        <form:input type="text" id="tenId" path="ten" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="diachi">Địa chỉ</label>
                        <form:input type="text" id="addId" path="diachi" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="gioitinh">Tên</label>
                        <form:select id="gioiTinhId" path="gioitinh" class="form-control">
                            <option value="0">Nam</option>
                            <option value="1">Nữ</option>
                        </form:select>
                    </div>
                    <div class="form-group">
                        <label for="ngaysinh">Ngày sinh</label>
                        <form:input type="date" id="dateId" path="ngaysinh" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="diachi">Mo ta</label>
                        <form:textarea id="motaId" path="mota" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="kynang">Kỹ năng</label>
                        <form:textarea id="kynangId" path="kinang" class="form-control"/>
                    </div>
                    <div class="form-group" hidden="true">
                        
                        <form:input value="${tai_khoan_nguoi_dung.id_tai_khoan}" id="userId" path="user" class="form-control"/>
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

                                
                                <!--ADD LEVEL-->
