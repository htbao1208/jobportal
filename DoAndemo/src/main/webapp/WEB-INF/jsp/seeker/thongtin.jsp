<%-- 
    Document   : thongtin
    Created on : Sep 26, 2021, 11:04:05 PM
    Author     : ADMINIS
--%>

<<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div>
    <h1>Họ và tên : ${infor.ho} ${infor.ten}</h1>
    <h1>Địa chỉ: ${infor.diachi}</h1>
    <h1>Ngày sinh:${infor.ngaysinh} </h1>
    <h1>Giới tính:${infor.gioitinh} </h1>
    <h1>Mô tả kinh nghiệm:${infor.mota} </h1>       
    </div>
    
</div>
