<%-- 
    Document   : carts
    Created on : May 10, 2023, 9:26:23 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- meta configuration -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- link -->
      <!-- link set standard page-->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
      <!-- link css styles -->
      <link rel="stylesheet" href="./Styles/base.css">
      <link rel="stylesheet" href="./Styles/carts.css"/>
      <link rel="stylesheet" href="./Styles/header.css">
      <link rel="stylesheet" href="./Styles/footer.css">
      <!-- icon -->
      <link rel="icon" href="./imgs/pmc.png">
      <!-- font download -->
      <link rel="stylesheet" href="./fontawesome-free-6.4.0-web/css/all.min.css"> 
      <!-- font -->
      <link rel="preconnect" href="https://fonts.googleapis.com"> 
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

    <!-- title -->
    <title>Shoes Store</title>

    <!--Ajax-->
    <!--<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>-->
</head>
<body>
    <div class="app">
      <!-- header -->
        <%@include file="/header.jsp"%>
      <!-- container -->
      <div class="app__container">
        <div class="grid">
            <div class="grid__row home-carts">
                <div class="grid__column-8">
                  <div class="carts">
                    <h3 class="carts__heading">GIỎ HÀNG CỦA BẠN</h3>
                    <table class="carts-table">
                        <tr class="carts-item__list-heading">
                            <th class="carts-item__title">Hình ảnh</th>
                            <th class="carts-item__title">Tên sản phẩm</th>
                            <th class="carts-item__title">Số lượng</th>
                            <th class="carts-item__title">Đơn giá</th>
                            <th class="carts-item__title">Tổng cộng</th>
                            <th class="carts-item__title">Xóa sản phẩm</th>
                        </tr>
                        <tr class="carts-item__list">
                            <td class="carts-item">
                                <img src="/Web Pages/imgs/mrstev3.jpg"  alt="Hàng Xịn" class="carts-item__img">
                            </td>
                            <td class="carts-item">Mr.Stev3 HC</td>
                            <td class="carts-item"><span class="carts-item__quantity">12</span></td>
                            <td class="carts-item">1.200.000₫</td>
                            <td class="carts-item">20.000.000₫</td>
                            <td class="carts-item carts-item__delete">
                              <a href="" class="carts-item__delete-active">
                                <i class="carts-item__delete-icon fa-solid fa-trash"></i>
                              </a>
                            </td>
                          </tr>
                        <tr class="carts-item__list">
                            <td class="carts-item">
                                <img src="https://myshoes.vn/image/cache/catalog/2023/nike/nk08/giay-nike-air-zoom-pegasus-40-nam-den-trang-01-500x500.jpg"  alt="Hàng Xịn" class="carts-item__img">
                            </td>
                            <td class="carts-item">Mr.Stev3 HC</td>
                            <td class="carts-item"><span class="carts-item__quantity">12</span></td>
                            <td class="carts-item">1.200.000₫</td>
                            <td class="carts-item">20.000.000₫</td>
                            <td class="carts-item carts-item__delete">
                              <a href="" class="carts-item__delete-active">
                                <i class="carts-item__delete-icon fa-solid fa-trash"></i>
                              </a>
                            </td>
                        </tr>
                    </table>
                  </div>
                </div>
                <div class="grid__column-4">
                  <div class="carts-payment">
                    <h3 class="carts-payment__heading">THANH TOÁN ĐƠN HÀNG CỦA BẠN</h3>
                    <div class="carts-payment__detail">
                      <span class="carts-payment__detail-total">Thành tiền:	2.590.000₫</span>
                      <span class="carts-payment__detail-totalcost">Tổng:	2.590.000₫</span>
                    </div>
                    <button class="carts-payment__detail-submit btn">THANH TOÁN</button>
                  </div>
                </div>
            </div>
        </div>
      </div>

      <!-- footer -->
      <%@include file="/footer.jsp"%> 
    </div>
    <%@include file= "/modalLoginSignup.jsp"%>
    <script src="./js/modalLoginSignup.js"></script>
</body>
</html>
