<%-- 
    Document   : userM
    Created on : Oct 4, 2021, 10:34:00 AM
    Author     : kid03
--%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="container">
<div class="row">
	<div class="col-lg-12">
            
                <form class="form-inline mr-sm-2" action="<c:url value="/admin/user"/>" >
<!--                                            <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search"aria-describedby="search-addon" name="kw" />-->
                    <select id="kwId" name="kw" class="form-control">
                        <option value="">Sắp xếp bằng vai trò</option>
                        <option value="ADMIN">Admin</option>
                        <option value="SEEKER">Ứng viên</option>
                        <option value="COMPANY">Nhà tuyển dụng</option>
                    </select>
                    <button class="btn btn-lg btn-success" type="submit">Search</button>
                </form>
            
		<div class="main-box clearfix">
			<div class="table-responsive">
				<table class="table user-list">
					<thead>
						<tr>
							<th><span>Người dùng</span></th>
							<th><span>Ngày tạo</span></th>
							<th class="text-center"><span>Trạng thái</span></th>
							<th><span>Email</span></th>
                                                        <th>&nbsp;</th>
						</tr>
					</thead>
					<tbody>
                                            <c:forEach var="u" items="${user}">
                                                <tr>
							<td>
								<img src="${u.userImage}" alt="">
								<a href="#" class="user-link">${u.username}</a>
								<span class="user-subhead">${u.userRole}</span>
							</td>
							<td>
								${u.createdDate}
							</td>
							<td class="text-center">
								<span class="label label-default">Inactive</span>
							</td>
							<td>
								<a href="#">${u.email}</a>
							</td>
							<td style="width: 20%;">
								<a href="#viewUser" class="table-link" data-toggle="modal" >
									<span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
									</span>
								</a>
								<a href="#" class="table-link">
									<span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-pen fa-stack-1x fa-inverse"></i>
									</span>
								</a>
								<a href="#" class="table-link danger">
									<span class="fa-stack">
										<i class="fa fa-square fa-stack-2x"></i>
										<i class="fa fa-trash fa-stack-1x fa-inverse"></i>
									</span>
								</a>
							</td>
						</tr>
                                            </c:forEach>
						
					</tbody>
				</table>
			</div>
			<ul class="pagination pull-right">
                            <c:forEach begin="1" end="${Math.ceil(userC/9)}" var="page">
                                <li class="page-item">
                                    <a class="page-link" href="<c:url value="/admin/user"/>?page=${page}" tabindex="-1">${page}</a>
                                </li>
                            </c:forEach>
			</ul>
		</div>
	</div>
</div>
</div>

