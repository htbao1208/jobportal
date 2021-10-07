<%-- 
    Document   : cv
    Created on : Sep 26, 2021, 4:12:36 PM
    Author     : ADMINIS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div>
<c:forEach items="${infors}" var="p">
     <a href="<c:url value="/infors/${p.id}"/>">  
       
    <div>
        <h1>${p.id} ${p.ten}</h1>
        
    </div>
     </a>           
</c:forEach> 
</div>
