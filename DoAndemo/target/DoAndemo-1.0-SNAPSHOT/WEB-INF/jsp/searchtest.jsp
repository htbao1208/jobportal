<%-- 
    Document   : search
    Created on : Oct 4, 2021, 11:35:45 AM
    Author     : kid03
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<div class="row justify-content-center">
            <div class="col-12 col-md-10 col-md-8">
                <form class="card card-sm">
                    <div class="card-body row no-gutters align-items-center">
                        <div class="col-auto">
                            <i class="fas fa-search h4 text-body"></i>
                        </div>
                        end of col
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
                        end of col
                        <div class="col-sm-1"></div>
                        <div class="col-auto">
                            <button class="btn btn-lg btn-success" type="submit">Search</button>
                        </div>
                        end of col
                    </div>
                </form>
            </div>-->
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="input-group rounded">
                <form class="form-inline mr-sm-2" action="<c:url value="/search"/>" >
                    <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search"aria-describedby="search-addon" name="kw" />
                    <span class="input-group-text border-0" id="search-addon">
                    <i class="fas fa-search"></i>
                    </span>
            </div>
        </div>
<!--        <div class="col-md-3">
                
            </div>
        </div>-->
    </div>
</div>
                    

   

<div class="container d-flex justify-content-center mt-50 mb-50">
    <div class="col-md-8">
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
                            <div class="text-muted">1985 reviews</div> <button type="button" class="btn btn-warning mt-4 text-white"><i class="icon-cart-add mr-2"></i> Follow</button>
                        </div>
                    </div>
               
            </div>
            </c:forEach>
        </div>
    </div>
    </div>
    <div class="col-md-4">
        
    </div>
    
</div>
    <nav aria-label="...">
      <ul class="pagination pagination-lg">
          <c:forEach begin="1" end="${Math.ceil(jCounter/9)}" var="page">
        <li class="page-item">
            <a class="page-link" href="<c:url value="/search"/>?page=${page}" tabindex="-1">${page}</a>
        </li>
          </c:forEach>
      </ul>
    </nav>


