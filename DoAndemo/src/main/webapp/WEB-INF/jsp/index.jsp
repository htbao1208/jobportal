<%-- 
    Document   : index
    Created on : Sep 3, 2021, 2:55:17 AM
    Author     : ADMINIS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- jumbotron -->
<div class="jumbotron jumbotron-fluid " style="background: url(./resources/images/job-finding1.jpg) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
    <div class="container">
        <h1 class="display-4 title-homepage">Việc làm cho ứng viên chuyên nghiệp</h1>
        <h4 class="h4-hp">Còn hàng nghìn cơ hội việc làm khác dành cho bạn, nhanh tay tìm kiếm những công việc phù hợp</h4>
        <div class="row justify-content-center">
            <div class="col-12 col-md-10 col-md-8">
                <form class="card card-sm">
                    <div class="card-body row no-gutters align-items-center">
                        <div class="col-auto">
                            <i class="fas fa-search h4 text-body"></i>
                        </div>
                        <!--end of col-->
                        <div class="col ">
                            <input class="form-control form-control-lg form-control-borderless" type="search" placeholder="Search topics or keywords">
                        </div>
                        <div class="col-sm-1"></div>

                        <div class="col-auto">
                            <i class="fas fa-map-marker h4 text-body"></i>
                        </div>

                        <div class="col">
                            <select class="mdb-select md-form colorful-select dropdown-primary form-control form-control-lg form-control-borderless" searchable="Search here..">
                                <option value="" disabled selected>Choose your country</option>
                                <option value="01">Thành phố Hà Nội</option>

                                <option value="02">Tỉnh Hà Giang</option>

                                <option value="04">Tỉnh Cao Bằng</option>

                                <option value="06">Tỉnh Bắc Kạn</option>

                                <option value="08">Tỉnh Tuyên Quang</option>

                                <option value="10">Tỉnh Lào Cai</option>

                                <option value="11">Tỉnh Điện Biên</option>

                                <option value="12">Tỉnh Lai Châu</option>

                                <option value="14">Tỉnh Sơn La</option>

                                <option value="15">Tỉnh Yên Bái</option>

                                <option value="17">Tỉnh Hoà Bình</option>

                                <option value="19">Tỉnh Thái Nguyên</option>

                                <option value="20">Tỉnh Lạng Sơn</option>

                                <option value="22">Tỉnh Quảng Ninh</option>

                                <option value="24">Tỉnh Bắc Giang</option>

                                <option value="25">Tỉnh Phú Thọ</option>

                                <option value="26">Tỉnh Vĩnh Phúc</option>

                                <option value="27">Tỉnh Bắc Ninh</option>

                                <option value="30">Tỉnh Hải Dương</option>

                                <option value="31">Thành phố Hải Phòng</option>

                                <option value="33">Tỉnh Hưng Yên</option>

                                <option value="34">Tỉnh Thái Bình</option>

                                <option value="35">Tỉnh Hà Nam</option>

                                <option value="36">Tỉnh Nam Định</option>

                                <option value="37">Tỉnh Ninh Bình</option>

                                <option value="38">Tỉnh Thanh Hóa</option>

                                <option value="40">Tỉnh Nghệ An</option>

                                <option value="42">Tỉnh Hà Tĩnh</option>

                                <option value="44">Tỉnh Quảng Bình</option>

                                <option value="45">Tỉnh Quảng Trị</option>

                                <option value="46">Tỉnh Thừa Thiên Huế</option>

                                <option value="48">Thành phố Đà Nẵng</option>

                                <option value="49">Tỉnh Quảng Nam</option>

                                <option value="51">Tỉnh Quảng Ngãi</option>

                                <option value="52">Tỉnh Bình Định</option>

                                <option value="54">Tỉnh Phú Yên</option>

                                <option value="56">Tỉnh Khánh Hòa</option>

                                <option value="58">Tỉnh Ninh Thuận</option>

                                <option value="60">Tỉnh Bình Thuận</option>

                                <option value="62">Tỉnh Kon Tum</option>

                                <option value="64">Tỉnh Gia Lai</option>

                                <option value="66">Tỉnh Đắk Lắk</option>

                                <option value="67">Tỉnh Đắk Nông</option>

                                <option value="68">Tỉnh Lâm Đồng</option>

                                <option value="70">Tỉnh Bình Phước</option>

                                <option value="72">Tỉnh Tây Ninh</option>

                                <option value="74">Tỉnh Bình Dương</option>

                                <option value="75">Tỉnh Đồng Nai</option>

                                <option value="77">Tỉnh Bà Rịa - Vũng Tàu</option>

                                <option value="79">Thành phố Hồ Chí Minh</option>

                                <option value="80">Tỉnh Long An</option>

                                <option value="82">Tỉnh Tiền Giang</option>

                                <option value="83">Tỉnh Bến Tre</option>

                                <option value="84">Tỉnh Trà Vinh</option>

                                <option value="86">Tỉnh Vĩnh Long</option>

                                <option value="87">Tỉnh Đồng Tháp</option>

                                <option value="89">Tỉnh An Giang</option>

                                <option value="91">Tỉnh Kiên Giang</option>

                                <option value="92">Thành phố Cần Thơ</option>

                                <option value="93">Tỉnh Hậu Giang</option>

                                <option value="94">Tỉnh Sóc Trăng</option>

                                <option value="95">Tỉnh Bạc Liêu</option>

                                <option value="96">Tỉnh Cà Mau</option>
    
                            </select>
                        </div>
                        <!--end of col-->
                        <div class="col-sm-1"></div>
                        <div class="col-auto">
                            <button class="btn btn-lg btn-success" type="submit">Search</button>
                        </div>
                        <!--end of col-->
                    </div>
                </form>
            </div>
            <!--end of col-->
        </div>
    </div>
</div>
<sec:authorize access="!isAuthenticated()">
<div class="container-fluid padding">
	<div class="row welcome text-center">
		<div class="col-12">
			<h1 class="display-5">Be sure that perfect candidate signs with your company</h1>
		</div>
		<!-- Horizontal Rule -->
		<hr> 
		<div class="col-12">
                    <h3 class="display-6 h4-hp">Share your authentic employer brand story on Website</p>
		</div>
                <div class="col-md-12 text-center">
                    <button type="button" class="btn btn-outline-dark btn-lg">Sign Up</button>
                </div>
                <div class="magin-10"></div>

	</div>
</div>
</sec:authorize>

