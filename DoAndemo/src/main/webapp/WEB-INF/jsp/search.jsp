<%-- 
    Document   : test
    Created on : Oct 6, 2021, 2:45:17 PM
    Author     : kid03
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="container">
    <div class="row">
        <div class="col-lg-3">
            <div class="sidebar">
                <form class="form-inline mr-sm-2" action="<c:url value="/search"/>" >
                <div class="widget border-0">
                    <div class="search">
                        <input type="search" class="form-control rounded"   placeholder="Search Keywords" name="kw"/>
                        <button type="submit">search</button>
                    </div>
                </div>
                <div class="widget border-0">
                    <div class="locations">
                        <input class="form-control" type="text" placeholder="All Locations">
                    </div>
                </div>
                <div class="widget">
                    <div class="widget-title widget-collapse">
                        <h6>Date Posted</h6>
                        <a class="ml-auto" data-toggle="collapse" href="#dateposted" role="button" aria-expanded="false" aria-controls="dateposted"> <i class="fas fa-chevron-down"></i> </a>
                    </div>
                    <div class="collapse show" id="dateposted">
                        <div class="widget-content">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="dateposted1">
                                <label class="custom-control-label" for="dateposted1">Last hour</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="dateposted2">
                                <label class="custom-control-label" for="dateposted2">Last 24 hour</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="dateposted3">
                                <label class="custom-control-label" for="dateposted3">Last 7 days</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="dateposted4">
                                <label class="custom-control-label" for="dateposted4">Last 14 days</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="dateposted5">
                                <label class="custom-control-label" for="dateposted5">Last 30 days</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="widget">
                    <div class="widget-title widget-collapse">
                        <h6>Specialism</h6>
                        <a class="ml-auto" data-toggle="collapse" href="#specialism" role="button" aria-expanded="false" aria-controls="specialism"> <i class="fas fa-chevron-down"></i> </a>
                    </div>
                    <div class="collapse show" id="specialism">
                        <div class="widget-content">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="specialism1">
                                <label class="custom-control-label" for="specialism1">IT Contractor</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="specialism2">
                                <label class="custom-control-label" for="specialism2">Clinical Psychology</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="specialism3">
                                <label class="custom-control-label" for="specialism3">Digital &amp; Creative</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="specialism4">
                                <label class="custom-control-label" for="specialism4">Estate Agency</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="specialism5">
                                <label class="custom-control-label" for="specialism5">Graduate</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="widget">
                    <div class="widget-title widget-collapse">
                        <h6>Job Type</h6>
                        <a class="ml-auto" data-toggle="collapse" href="#jobtype" role="button" aria-expanded="false" aria-controls="jobtype"> <i class="fas fa-chevron-down"></i> </a>
                    </div>
                    <div class="collapse show" id="jobtype">
                        <div class="widget-content">
                            <div class="custom-control custom-checkbox fulltime-job">
                                <input type="checkbox" class="custom-control-input" id="jobtype1">
                                <label class="custom-control-label" for="jobtype1">Full Time</label>
                            </div>
                            <div class="custom-control custom-checkbox parttime-job">
                                <input type="checkbox" class="custom-control-input" id="jobtype2">
                                <label class="custom-control-label" for="jobtype2">Part-Time</label>
                            </div>
                            <div class="custom-control custom-checkbox freelance-job">
                                <input type="checkbox" class="custom-control-input" id="jobtype3">
                                <label class="custom-control-label" for="jobtype3">Freelance</label>
                            </div>
                            <div class="custom-control custom-checkbox temporary-job">
                                <input type="checkbox" class="custom-control-input" id="jobtype4">
                                <label class="custom-control-label" for="jobtype4">Temporary</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="widget">
                    <div class="widget-title widget-collapse">
                        <h6>Experience</h6>
                        <a class="ml-auto" data-toggle="collapse" href="#experience" role="button" aria-expanded="false" aria-controls="experience"> <i class="fas fa-chevron-down"></i> </a>
                    </div>
                    <div class="collapse show" id="experience">
                        <div class="widget-content">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="experience1">
                                <label class="custom-control-label" for="experience1">fresher</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="experience2">
                                <label class="custom-control-label" for="experience2">Less than 1 year</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="experience3">
                                <label class="custom-control-label" for="experience3">2 Year</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="experience4">
                                <label class="custom-control-label" for="experience4">3 Year</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="experience5">
                                <label class="custom-control-label" for="experience5">4 Year</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="widget">
                    <div class="widget-title widget-collapse">
                        <h6>Offered Salary</h6>
                        <a class="ml-auto" data-toggle="collapse" href="#Offeredsalary" role="button" aria-expanded="false" aria-controls="Offeredsalary"> <i class="fas fa-chevron-down"></i> </a>
                    </div>
                    <div class="collapse show" id="Offeredsalary">
                        <div class="widget-content">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="Offeredsalary1">
                                <label class="custom-control-label" for="Offeredsalary1">10k - 20k</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="Offeredsalary2">
                                <label class="custom-control-label" for="Offeredsalary2">20k - 30k</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="Offeredsalary3">
                                <label class="custom-control-label" for="Offeredsalary3">30k - 40k</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="Offeredsalary4">
                                <label class="custom-control-label" for="Offeredsalary4">40k - 50k</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="Offeredsalary5">
                                <label class="custom-control-label" for="Offeredsalary5">50k - 60k</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="widget">
                    <div class="widget-title widget-collapse">
                        <h6>Gender</h6>
                        <a class="ml-auto" data-toggle="collapse" href="#gender" role="button" aria-expanded="false" aria-controls="gender"><i class="fas fa-chevron-down"></i></a>
                    </div>
                    <div class="collapse show" id="gender">
                        <div class="widget-content">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="gender1">
                                <label class="custom-control-label" for="gender1">Male</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="gender2">
                                <label class="custom-control-label" for="gender2">Female</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="widget">
                    <div class="widget-title widget-collapse">
                        <h6>Qualification</h6>
                        <a class="ml-auto" data-toggle="collapse" href="#qualification" role="button" aria-expanded="false" aria-controls="qualification"> <i class="fas fa-chevron-down"></i></a>
                    </div>
                    <div class="collapse show" id="qualification">
                        <div class="widget-content">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="qualification1">
                                <label class="custom-control-label" for="qualification1">Matriculation</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="qualification2">
                                <label class="custom-control-label" for="qualification2">Intermediate</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="qualification3">
                                <label class="custom-control-label" for="qualification3">Graduate</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="widget border-0">
                    <div class="widget-add">
                        <img class="img-fluid" src="images/add-banner.png" alt=""></div>
                </div>
            </div>
        </div>
        <div class="col-lg-9">
            <div class="row mb-4">
                <div class="col-12">
                    <h6 class="mb-0">Showing 1-10 of <span class="text-primary">28 Candidates</span></h6>
                </div>
            </div>
            <div class="job-filter mb-4 d-sm-flex align-items-center">
                <div class="job-alert-bt"> <a class="btn btn-md btn-dark" href="#"><i class="fa fa-envelope"></i>Get job alert </a> </div>
                <div class="job-shortby ml-sm-auto d-flex align-items-center">
                    <form class="form-inline">
                        <div class="form-group mb-0">
                            <label class="justify-content-start mr-2">Sort by :</label>
                            <div class="short-by">
                                <select class="form-control basic-select select2-hidden-accessible" data-select2-id="1" tabindex="-1" aria-hidden="true">
                                    <option data-select2-id="3">Newest</option>
                                    <option>Oldest</option>
                                </select>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col">
                <c:forEach var="j" items="${jobType}">
                        <div class="card card-body mt-3">

                                <div class="media align-items-center align-items-lg-start text-center text-lg-left flex-column flex-lg-row">
                                    <div class="mr-2 mb-3 mb-lg-0"> 
                                        <img src="https://i.imgur.com/5Aqgz7o.jpg" width="150" height="150" alt=""> 
                                    </div>
                                    <div class="media-body">
                                        <h6 class="media-title font-weight-semibold"> <a href="<c:url value="/post/${j.id}"/>" data-abc="true">${j.namePost}</a> </h6>

                                        <p class="mb-3">${j.compName} </p>
                                        <p class="mb-3">${j.career.name} </p>

                                    </div>
                                    <div class="mt-3 mt-lg-0 ml-lg-3 text-center">

                                        <div> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
                                        <a type="button" class="btn btn-warning mt-4 text-white" href="#message" data-toggle="modal"><i class="icon-cart-add mr-2"></i> Follow</a>
                                    </div>
                                </div>

                        </div>
                </c:forEach>
        </div>
            </div>
            <div class="row">
                <div class="col-12 text-center mt-4 mt-sm-5">
                    <ul class="pagination justify-content-center mb-0">
                        <c:forEach begin="1" end="${Math.ceil(jCounter/9)}" var="page">
                            <li class="page-item">
                                <a class="page-link" href="<c:url value="/search"/>?page=${page}" tabindex="-1">${page}</a>
                            </li>
                        </c:forEach>


                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
                

<div id="message" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form:form action="${act}" method="post" modelAttribute="level">
                        <div class="modal-header">
                            <h4 class="modal-title">Thông báo</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="tenTrinhDo">Bạn cần đăng nhập để thực hiện chức năng này</label>
                                
                            </div>
                        </div>
                          <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Bỏ qua">
                            <a type="button" class="btn btn-success" href="<c:url value="/login"/>">Tiếp tục</a>
                           </div>
                    </form:form>
                </div>
            </div>
        </div>                