<%@page import="bean.khachhangbean"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.coso" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BOOK STORE</title>
<title>NHA SACH MINH KHAI</title>
	 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="JQuery/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
  
<style>

    .list ul li a{
			text-decoration: none;
			color: black;
		}
		.list ul li:hover{
			background-color: #ccccff;
		}
		a{
  		color:white;
  	}
  	a:hover{
  		text-decoration: none;
  		color:white;
  	}
  	.sach{
  		height:326px;
  		
  		padding: 1.5%;
  		text-align: center;
  		position: relative;
  	}
  </style>
	
</head>
<body>
<%
	//coso cs = new coso();
	//cs.ketnoi();
	ArrayList<loaibean> dsloai = (ArrayList<loaibean>)request.getAttribute("dsloai");
	ArrayList<sachbean> dssach = (ArrayList<sachbean>)request.getAttribute("dssach");
	long sl = (long)request.getAttribute("sl");

%>
<div class="container">
	<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="loaiservlet">BOOK STORE</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                	<%khachhangbean khbean = (khachhangbean)request.getAttribute("khbean"); %>
                	<%if(khbean==null){ %>
                    <li>
                        <a href="dangky">ĐĂNG KÝ</a>
                    </li>
                    <li>
                        <a href="dangnhap">ĐĂNG NHẬP</a>
                    </li>
                   
                    <%}else{%>
                    	<li><a href=""><%=khbean.getTendn() %></a></li>
                    <%} %>
                    <li>
                        <a href="dangxuat">ĐĂNG XUẤT</a>
                    </li>
                    <li>
                        <a href="cart" style="color: white; font-weight: bold; text-decoration: none;">
                            <i class="fas fa-cart-plus"></i>Giỏ Hàng (<%=sl %>)
                        </a>

                    </li>
                    <li><a href="#">LỊCH SỬ MUA HÀNG</a></li>
                    <li>
                    <!--  
                    	 <div class="col-md-4 col-md-offset-2" style="margin-top: 10px;">   
	                        <form>
	                        	<input type="search" class="from-control" placeholder="Nhập sách cần tìm kiếm" name="txttk">
	                        	<button class="btn btn-success btn-sm" type="submit">Tìm kiếm</button>
	                        </form>                                
                              
                		 </div>
                         -->
                    </li>
                 </ul>
                 <form style="margin-top: 13px;">
	                        	<input type="search" class="from-control" placeholder="Nhập sách cần tìm kiếm" name="txttk">
	                        	<button class="btn btn-success btn-sm" type="submit">Tìm kiếm</button>
	                        </form>  
                  
                     
            </div>
            
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
</div>
<div class="container" style="margin-top: 7%;">	
	<div class="row content">
	
		<div class="col-md-3 list">
			<h4>CHỦ ĐỀ SÁCH</h4>
			<ul class="list-group">
				<%if(dsloai !=null){ %>
				<%for(loaibean lb : dsloai){ %>
					<li class="list-group-item"><a href="loaiservlet?maloai=<%=lb.getMaloai() %>"><%=lb.getTenloai() %></a></li>
			    <%}} %>
			</ul>
			
		</div>
		<div class="col-md-9">
			<div class="row carousel-holder">
                    <div class="col-md-12" style="margin-bottom: 5%;">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="images/ancient-place.jpg" alt="">

                                </div>
                                <div class="item">
                                    <img class="slide-image" src="images/riverside-city.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="images/kayaks.jpg" alt="">
                                </div>


                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>
			<div class="row">
				<%
				if(dssach.size()!=0){
				for(sachbean ss : dssach){ %>
					<div class="col-md-4 text-center" style="margin-bottom:30px;">
						<div class="sach" style="padding:5px";>
							<img alt="" src="<%=ss.getAnh() %>" width="160" height="200">
							<h5><%=ss.getTensach() %></h5>
							<p><b>Giá :</b><%=ss.getGia() %></p>
							<button class="btn btn-success" style="align:center"><a href="add?masach=<%=ss.getMasach()%>&tensach=<%=ss.getTensach()%>&soluongmua=1&anh=<%=ss.getAnh()%>&gia=<%=ss.getGia()%>">Đặt mua</a></button>
						</div>
					</div>
				<%}
				}
				%>
			</div>
			
		</div>
	</div>
</div>

</body>
</html>