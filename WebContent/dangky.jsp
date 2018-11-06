<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ĐĂNG KÝ</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="JQuery/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
</head>
<body>

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
                        <a href="database.jsp">ĐĂNG KÝ</a>
                    </li>
                    <li>
                        <a href="database.jsp">ĐĂNG NHẬP</a>
                    </li>
                    <li>
                        <a href="database.jsp">THOÁT</a>
                    </li>
                    <li>
                        <a href="cart" style="color: white; font-weight: bold; text-decoration: none;">
                            <i class="fas fa-cart-plus"></i>Giỏ Hàng (0)
                        </a>

                    </li>
                </ul>
                <!--  
                 <div class="col-md-3 col-md-offset-3" style="margin-top: 10px;">   
                        <form class="form-inline">
                        	<input type="search" class="from-control" placeholder="Nhập sách cần tìm kiếm" name="txttk">
                        	<button class="btn btn-success btn-sm" type="submit">Tìm kiếm</button>
                        </form>                                
                              
                 </div>
                 -->          
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
<div class="container">
	<div>


                    <h2 style="text-align:center">ĐĂNG KÝ THÀNH VIÊN</h2><table align="center">

                        <form action="/Nguoidung/Dangky" method="post"></form>
                        <tbody>
                            <tr style="height:40px">
                                <td> Họ tên khách hàng:</td>
                                <td>
                                    <input id="HotenKH" name="HotenKH" type="text" value="">

                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td> Tên đăng nhập:</td>
                                <td>
                                    <input id="TenDN" name="TenDN" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td>  Mật khẩu:</td>
                                <td>
                                    <input id="Matkhau" name="Matkhau" type="password">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td>Mật khẩu nhập lại: </td>
                                <td>
                                    <input id="Matkhaunhatrlai" name="Matkhaunhatrlai" type="password">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td> Email:</td>
                                <td>
                                    <input id="Email" name="Email" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td> Địa chỉ:</td>
                                <td>
                                    <input id="Diachi" name="Diachi" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td>Điện thoại:</td>
                                <td>
                                    <input id="Dienthoai" name="Dienthoai" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td> Ngày sinh :</td>
                                <td>
                                    <input type="date" name="Ngaysinh">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td></td>
                                <td>
                                    <input type="Submit" value="Đăng ký">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
</div>
</body>
</html>