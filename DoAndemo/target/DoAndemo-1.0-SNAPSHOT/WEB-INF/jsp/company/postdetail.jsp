<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<div class="job-post-company pt-120 pb-120">
            <div class="container">
                <div class="row justify-content-between">
                    <!-- Left Content -->
                    <div class="col-xl-7 col-lg-8">
                        <!-- job single -->
                        <div class="single-job-items mb-50">
                            <div class="job-items row">
                                <div class="company-img company-img-details">
                                    <a href="#"><img src="https://i.imgur.com/5Aqgz7o.jpg" alt="" height="150" width="150"></a>
                                </div>
                                <div class="job-tittle">
                                    <a href="#">
                                        <h4>${jPost.namePost}</h4>
                                    </a>
                                    <ul>
                                        <li>${jPost.career.name}</li>
                                        <li><i class="fas fa-map-marker-alt"></i>Ho Chi Minh</li>
                                        <li>${jPost.luong}</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                          <!-- job single End -->
                       
                        <div class="job-post-details">
                            <div class="post-details1 mb-50">
                                <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Job Description</h4>
                                </div>
                                <p>${jPost.description}</p>
                            </div>
                            <div class="post-details2  mb-50">
                                 <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Required Knowledge, Skills, and Abilities</h4>
                                </div>
                                 <p>${jPost.exp}</p>
                            </div>
                            <div class="post-details2  mb-50">
                                 <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Education + Experience</h4>
                                </div>
                                 <p>${jPost.level}</p>
                            </div>
                        </div>

                    </div>
                    <!-- Right Content -->
                    <div class="col-xl-4 col-lg-4">
                        <div class="post-details3  mb-50">
                            <!-- Small Section Tittle -->
                           <div class="small-section-tittle">
                               <h4>Job Overview</h4>
                           </div>
                          <ul>
                              <li>Ngày đăng : <span>${jPost.createdDate}</span></li>
<!--                              <li>Location : <span>New York</span></li>
                              <li>Vacancy : <span>02</span></li>-->
                              <li>Loại: : <span>${jPost.jobType.typeName}</span></li>
<!--                              <li>Salary :  <span>$7,800 yearly</span></li>
                              <li>Application date : <span>12 Sep 2020</span></li>-->
                          </ul>
                         <div class="apply-btn2">
                             <sec:authorize access="!isAuthenticated()">
                                <a type="button"  class="btn btn-outline-dark btn-lg mx-1 px-6 py-1 " href="<c:url value="/login"/>">Ứng tuyển</a>
                             </sec:authorize>
                            <sec:authorize access="isAuthenticated()">
                                <a type="button"  class="btn btn-outline-dark btn-lg mx-1 px-6 py-1 " href="<c:url value="#"/>">Ứng tuyển</a>
                             </sec:authorize>
                         </div>
                       </div>
                        <div class="post-details4  mb-50">
                            <!-- Small Section Tittle -->
                           <div class="small-section-tittle">
                               <h4>Company Information</h4>
                           </div>
                              <span>${jPost.compName}</span>
                              <p>________</p>
                            <ul>
                                <li>Name: <span>${jPost.compName} </span></li>
                                <li>Web : <span> ${jPost.website}</span></li>
<!--                                <li>Email: <span>carrier.colorlib@gmail.com</span></li>-->
                            </ul>
                       </div>
                    </div>
                </div>
            </div>
        </div>