<%-- 
    Document   : base
    Created on : Sep 4, 2021, 4:49:37 PM
    Author     : kid03
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset='UTF-8'>
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        <title><tiles:insertAttribute name="title" /></title>
            
        <%--boostrap css, js--%>
        
        <link type="text/css" rel="stylesheet" href="<c:url value="/css/style.css"/>"/>
        <link type="text/css" rel="stylesheet" href="<tiles:getAsString name="css"/>"/>
        

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"></link>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
              integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        
        
        
        
        

        
    </head>
    <body>
        <%--header--%>
        <tiles:insertAttribute name="header" />
        
        <!--subheader-->
        <tiles:insertAttribute name="subheader"/>
       
        <%--content--%>
        <tiles:insertAttribute name="content" />

        <%--footer--%>
        
        <tiles:insertAttribute name="footer" />
        
        <script type="text/javascript" src="<tiles:getAsString name="script" />"></script>
        
        

        
    </body>
</html>
