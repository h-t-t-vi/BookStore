<%@page import="java.text.DecimalFormat"%>
<%@page import="bean.giohangbean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>GIO HANG</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="JQuery/bootstrap.min.js"></script>
  <script src="asset/JQuery/jquery.min.js"></script>
<script src="asset/JQuery/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
  
  <style>
  
  	h2{
  		text-align: center;
  		font-weight: bold;
  	}
  	a{
  		color:white;
  	}
  	a:hover{
  		text-decoration: none;
  		color:white;
  	}
  </style>
</head>
<body>
<%
ArrayList<loaibean> lstloai = (ArrayList<loaibean>)request.getAttribute("lstloai");
ArrayList<giohangbean> lsthangtronggio = (ArrayList<giohangbean>) request.getAttribute("lsthangtronggio");
Long thanhtien = (Long)request.getAttribute("thanhtien");
DecimalFormat formatter = new DecimalFormat("###,###,###");
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
                    <li>
                        <a href="loaiservlet">ĐĂNG KÝ</a>
                    </li>
                    <li>
                        <a href="loaiservlet">ĐĂNG NHẬP</a>
                    </li>
                    <li>
                        <a href="loaiservlet">THOÁT</a>
                    </li>
                    <li>
                        <a href="cart" style="color: white; font-weight: bold; text-decoration: none;">
                            <i class="fas fa-cart-plus"></i>Giỏ Hàng (<%=sl %>)
                        </a>

                    </li>
                </ul>
                 <div class="col-md-3 col-md-offset-3" style="margin-top: 10px;">   
                        <form class="form-inline">
                        	<input type="search" class="from-control" placeholder="Nhập sách cần tìm kiếm" name="txttk">
                        	<button class="btn btn-success btn-sm" type="submit">Tìm kiếm</button>
                        </form>                                
                              
                 </div>
                           
                     
            </div>
            
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
</div>
<div class="container">
	<h2>CHI TIẾT ĐƠN HÀNG</h2>
	<div class="row">
		<table id="giohang" class="table table table-striped">
			<tbody>
				<%
				if(lsthangtronggio !=null){
					for(giohangbean g :lsthangtronggio){%>
						<tr>
							<td>
								<div class="container">
									<div class="row">
										<div class="col-md-2">
											<img alt="" src="<%=g.getAnh()%>" width="100" height="150">
										</div>
										<div class="col-md-6">
											<ul class="list-group">
												<li class="list-group-item"><b>Tên sách :<%=g.getTensach() %></b></li>
												<li class="list-group-item"><b>Giá : <%out.print(formatter.format(g.getGia())); %> VND</b></li>
												<li class="list-group-item"><button class="btn btn-danger" ><a href="xoa?masach=<%=g.getMasach()%>">Xóa</a></button></li>
											</ul>
										</div>
										<div class="col-md-4">
										 
											<ul class="pagination">
												<li><a href="giam?masach=<%=g.getMasach()%>">-</a></li>
												<li><a href="soluonghang?masach=<%=g.getMasach()%>"><%=g.getSoluongmua() %></a></li>
												<li><a href="tang?masach=<%=g.getMasach()%>">+</a></li>
											</ul>
											
										</div>
									</div>
								</div>
							</td>
						</tr>
				<%	}
				}
				%>
			</tbody>
		</table>
		<div><button class="btn btn-success"><a href="xoahet">Xóa hết</a></button>
		<button class="btn btn-success"><a href="loaiservlet">Tiếp tục mua hàng</a></button>
		</div><br>
		<div><h1>Thành tiền :<span><%out.print(formatter.format(thanhtien)); %></span>VND</h1></div>
	</div>
</div>
</body>

</html>