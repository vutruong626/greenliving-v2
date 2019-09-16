@extends('frontend.master')
@section('content')
<div class="top_panel_title top_panel_style_4  title_present breadcrumbs_present scheme_original">
   <div class="top_panel_title_inner top_panel_inner_style_4  title_present_inner breadcrumbs_present_inner">
      <div class="content_wrap">
         <h1 class="page_title">Kiểm tra</h1>
         <div class="breadcrumbs">
            <a style="text-decoration: none;" class="breadcrumbs_item home" href="/">Trang chủ</a>
            <span class="breadcrumbs_delimiter"></span>
            <a style="text-decoration: none;" class="breadcrumbs_item home" href="{{route('show_thanhtoan_sanpham')}}">Giỏ hàng của bạn</a>
            <span class="breadcrumbs_delimiter"></span>
            <span class="breadcrumbs_item current">Kiểm tra</span>
         </div>
      </div>
   </div>
</div>
<div class="row">
   <div class="col-lg-12 col-md-12">
      @if ($message = Session::get('err'))
      <div class="panel-body">
         <div class="alert alert-warning" role="alert">
            {{$message}}
         </div>
      </div>
      @endif
   </div>
</div>
<div class="page_content_wrap page_paddings_yes">
   <div class="content_wrap">
      <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
         <div class="content" >
            <article class="itemscope post_item post_item_single post_featured_default post_format_standard post-6 page type-page status-publish hentry" itemscope="" itemtype="http://schema.org/Article">
               <section class="post_content" itemprop="articleBody">
                  <div class="woocommerce">
                     <div class="woocommerce-notices-wrapper"></div>
                     <div class="woocommerce-form-login-toggle">
                        <div class="woocommerce-notices-wrapper"></div>
                        <form name="checkout" method="post" class="checkout woocommerce-checkout" action="{{route('thong_tin_khach_hang')}}" enctype="multipart/form-data" novalidate="novalidate">
                           {{csrf_field()}}
                           <div class="col2-set" id="customer_details">
                              <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                 <div class="woocommerce-billing-fields">
                                    <h3>Thông tin thanh toán</h3>
                                    <div class="woocommerce-billing-fields__field-wrapper">
                                       <p class="form-row form-row-wide validate-required text-center" id="billing_last_name_field" data-priority="10">
                                       <div class="row ">
                                          <div class="col-12 col-sm-4 col-lg-4 mb-auto">
                                             <label for="billing_last_name" class="">Họ và tên&nbsp;
                                             <b class="required" style="color: red;" title="bắt buộc">*</b>
                                             </label>
                                          </div>
                                          <div class="col-12 col-sm-8 col-lg-8  mr-auto">
                                             <span class="woocommerce-input-wrapper" >
                                             <input type="text" class="input-text " name="name" id="billing_last_name" placeholder="Nhập đầy đủ họ và tên" value="">
                                             </span>@if ($errors->has('name'))
                                             <div class="text-danger">{{ $errors->first('name') }}</div>
                                             @endif    
                                          </div>
                                       </div>
                                       </p>
                                       <p class="form-row form-row-wide validate-required" id="billing_last_name_field" data-priority="10">
                                       <div class="row">
                                          <div class="col-12 col-sm-4 col-lg-4 mb-auto">
                                             <label for="billing_phone" class="">Số điện thoại&nbsp;
                                             <b class="required " style="color: red;" title="bắt buộc">*</b>
                                             </label>
                                          </div>
                                          <div class="col-12 col-sm-8 col-lg-8  mr-auto">
                                             <span class="woocommerce-input-wrapper" >
                                             <input type="tel" class="input-text " name="phone" id="billing_phone" placeholder="Số điện thoại" value="" autocomplete="tel">
                                             </span> @if ($errors->has('phone'))
                                             <div class="text-danger">{{ $errors->first('phone') }}</div>
                                             @endif   
                                          </div>
                                       </div>
                                       </p>
                                       <p class="form-row form-row-wide validate-required" id="billing_last_name_field" data-priority="10">
                                       <div class="row">
                                          <div class="col-12 col-sm-4 col-lg-4 mb-auto">
                                             <label for="billing_email" class="">Địa chỉ email&nbsp;
                                             <b class="required " style="color: red;" title="bắt buộc">*</b>
                                             </label>
                                          </div>
                                          <div class="col-12 col-sm-8 col-lg-8  mr-auto">
                                             <span class="woocommerce-input-wrapper">
                                             <input type="email" class="input-text " name="email" id="billing_email" placeholder="Địa chỉ email" value="" autocomplete="email username">
                                             </span>@if ($errors->has('email'))
                                             <div class="text-danger">{{ $errors->first('email') }}</div>
                                             @endif  
                                          </div>
                                       </div>
                                       </p>
                                       <p class="form-row form-row-wide validate-required" id="billing_last_name_field" data-priority="10">
                                       <div class="row">
                                          <div class="col-12 col-sm-4 col-lg-4 mb-auto">
                                             <label for="billing_address_1" >Địa chỉ nhận hàng&nbsp;
                                             <b class="required " style="color: red;" title="bắt buộc">*</b>
                                             </label>
                                          </div>
                                          <div class="col-12 col-sm-8 col-lg-8  mr-auto">
                                             <span class="woocommerce-input-wrapper" >
                                             <input type="text" class="input-text " name="address" id="billing_address_1" placeholder="Ví dụ: Số 20, ngõ 90" value="" autocomplete="address-line1">
                                             </span> @if ($errors->has('address'))
                                             <div class="text-danger">{{ $errors->first('address') }}</div>
                                             @endif 
                                          </div>
                                       </div>
                                       </p>
                                       <p class="form-row form-row-wide address-field update_totals_on_change validate-required woocommerce-validated" id="billing_state_field" data-priority="30">
                                       <div class="row">
                                          <div class="col-12 col-sm-4 col-lg-4 mb-auto">
                                             <label for="city" class="">Tỉnh/Thành phố&nbsp;
                                             <b class="required" style="color: red;" title="bắt buộc">*</b>
                                             </label>
                                          </div>
                                          <div class="col-12 col-sm-8 col-lg-8  mr-auto">
                                             <span class="woocommerce-input-wrapper" >
                                                <select name="city" id="city" class="js-example-basic-single btn-submit"  data-placeholder="Chọn tỉnh/thành phố" tabindex="-1" aria-hidden="true" >
                                                   <option value="all"></option>
                                                   @foreach($province as $item_province)
                                                   <option value="{{$item_province->id}}" >{{$item_province->name}}</option>
                                                   @endforeach
                                                </select>
                                                @if ($errors->has('city'))
                                                <div class="text-danger">{{ $errors->first('city') }}</div>
                                                @endif
                                             </span>
                                          </div>
                                       </div>
                                       </p>
                                       <p class="form-row form-row-wide address-field update_totals_on_change validate-required append-district" id="billing_city_field" data-priority="40">
                                       <div class="row">
                                          <div class="col-12 col-sm-4 col-lg-4 mb-auto">
                                             <label for="district" class="">Quận/Huyện&nbsp;
                                             <b class="required" style="color: red;" title="bắt buộc">*</b>
                                             </label>
                                          </div>
                                          <!-- <div class="col-12 col-sm-8 col-lg-8  mr-auto">
                                             <span class="woocommerce-input-wrapper">
                                                <select name="district" id="district" class="js-example-basic-single" data-allow_clear="true" data-placeholder="Chọn quận huyện" tabindex="-1" aria-hidden="true">
                                                   <option value=""></option>
                                                </select>
                                                @if ($errors->has('district'))
                                                <div class="text-danger">{{ $errors->first('district') }}</div>
                                                @endif
                                                <span class="dropdown-wrapper" aria-hidden="true"></span>
                                             </span>
                                          </div> -->
                                       </div>
                                       </p>
                                       <p class="form-row form-row-wide validate-required" id="billing_address_1_field" data-priority="60">
                                       <div class="row">
                                          <div class="col-12 col-sm-4 col-lg-4 mb-auto">
                                             <label for="billing_address_1" class="">Xã/Phường/thị trấn&nbsp;
                                             <b class="required" style="color: red;" title="bắt buộc">*</b>
                                             </label>
                                          </div>
                                          <div class="col-12 col-sm-8 col-lg-8  mr-auto">
                                             <span class="woocommerce-input-wrapper" >
                                             <input type="text" class="input-text " name="area" id="billing_address_1" placeholder="Ví dụ: Phường 1 or Phường 10" value="" autocomplete="address-line1">
                                             </span> @if ($errors->has('area'))
                                             <div class="text-danger">{{ $errors->first('area') }}</div>
                                             @endif
                                          </div>
                                       </div>
                                       </p>
                                       <script>
                                          $(document).ready(function () {
                                              $("#city").on('change', function(){
                                                  var cityId = this.value;
                                          
                                                  $.ajax({
                                                      url:"/getRequired/" + cityId,
                                                      type: "GET",
                                                      async: false,
                                                      data: {
                                          
                                                      },
                                                      success: function (data) {
                                                          // console.log(data);
                                                          var element = '<label for="city" class="">Quận / Huyện &nbsp;<abbr class="required" title="bắt buộc">*</abbr></label>';
                                                              element += '<select name="district" id="district" class="js-example-basic-single" data-allow_clear="true" data-placeholder="Chọn quận huyện" tabindex="-1" aria-hidden="true" style="width: 53%;margin-left: 43px;">';
                                                          for(var i = 0; i < data.length; i++) {
                                                              element += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
                                                          }
                                                          element += '</select>';
                                                          $('.append-district').html(element);
                                          
                                                      }
                                                  })
                                              });
                                          })
                                       </script>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                 <div class="woocommerce-shipping-fields"></div>
                                 <div class="woocommerce-additional-fields">
                                    <h3>Thông tin bổ sung</h3>
                                    <div class="woocommerce-additional-fields__field-wrapper">
                                       <p class="form-row notes" id="order_comments_field" data-priority="10">
                                          <label for="order_comments" class="">Ghi chú đơn hàng&nbsp;
                                          <span class="optional">(tuỳ chọn)</span>
                                          </label>
                                          <span class="woocommerce-input-wrapper" style="width: 100%;">
                                          <textarea name="note" class="input-text " id="order_comments" placeholder="Ghi chú về đơn hàng, ví dụ: thời gian hay chỉ dẫn địa điểm giao hàng chi tiết hơn."></textarea>
                                          </span>
                                       </p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <br><br>
                           <h3>Chọn hình thức thanh toán</h3>
                           <div class="container_vs2">
                              <div id="accordion">
                                 <div class="card">
                                    <div class="card-header">
                                       <label class="container_vs2">
                                       <input type="radio" checked="checked" name="radio_1" value="1">
                                       <span class="checkmark_vs2" style="margin-top: 16px;"></span>
                                       </label>
                                       <a style="padding-left: 50px;font-size: 16px;"> Thanh toán tiền mặt khi nhận hàng </a>
                                    </div>
                                 </div>
                                 <div class="card">
                                    <div class="card-header">
                                       <label class="container_vs2">
                                       <input type="radio" name="radio_1" value="2">
                                       <span class="checkmark_vs2" style="margin-top: 16px;"></span>
                                       <a href="https://www.nganluong.vn/vn/home.html"><img src="{{asset('images/logo-nganluong.png')}}" alt="" style="float: right;width: 40%;"></a>
                                       </label>
                                       <a style="padding-left: 50px;font-size: 16px;">Thanh toán trực tuyến</a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <button type="submit" class="btn btn-success" style="font-family: roboto;font-weight: bold;float: right;background-color: #80B500;">XÁC
                           NHẬN</button>
                        </form>
                     </div>
                  </div>
               </section>
               <section class="related_wrap related_wrap_empty"></section>
            </article>
         </div>
      </div>
      <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="float: right;">
         <div class="sidebar widget_area scheme_original right1101" role="complementary">
            <div class="sidebar_inner widget_area_inner">
               <aside id="woocommerce_widget_cart-2" class="widget_number_1 widget woocommerce widget_shopping_cart">
                  <h5 class="widget_title">GIỎ HÀNG</h5>
                  <div class="widget_shopping_cart_content" style="opacity: 1;">
                     @foreach($gd_cordy_pay as $item_gd_cordy_pay)
                     <ul class="woocommerce-mini-cart cart_list product_list_widget ">
                        <li class="woocommerce-mini-cart-item mini_cart_item">
                           <a href="{{asset('/cart/remove/'.$item_gd_cordy_pay->id),0}}" class="remove remove_from_cart_button" aria-label="Remove this item" data-product_id="2148" data-cart_item_key="e21e4e58ad9ab56e8a4634046da90113" data-product_sku="">×</a>
                           <a href="#" style="text-decoration: none; margin-bottom: -23px;">
                              <img width="570" height="703" src="{{asset('storage/'.$item_gd_cordy_pay->image)}}"
                                 class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt=""
                                 sizes="(max-width: 570px) 100vw, 570px" >
                              <p style="height: 23px; overflow-y: hidden;">{{$item_gd_cordy_pay->name}}</p>
                           </a>
                           <span class="quantity"> {{$item_gd_cordy_pay['qty']}}×
                           <span class="woocommerce-Price-amount amount">
                           <span class="woocommerce-Price-currencySymbol" id="p_{{$item_gd_cordy_pay->id}}"> {{number_format($item_gd_cordy_pay->price)}} VND</span>
                           </span>
                           </span>
                        </li>
                     </ul>
                     @endforeach
                     <p class="woocommerce-mini-cart__buttons buttons">
                     <p class="woocommerce-mini-cart__total total">
                        <strong>Tổng tiền:</strong>
                        <span class="woocommerce-Price-amount amount" style="color: red;">
                        <span class="woocommerce-Price-currencySymbol"></span>{{number_format($cart_detail['weight'],0)}} VNĐ</span>
                     </p>
                     <a href="{{route('show_thanhtoan_sanpham')}}" class="button checkout wc-forward">Kiểm tra</a>
                     </p>
                  </div>
               </aside>
               <aside id="woocommerce_product_search-2" class="widget_number_4 widget woocommerce widget_product_search">
                  <form role="search" method="get" class="search_form" action="{{asset('/tim-kiem')}}">
                     <input type="text" class="search_field" placeholder="Tìm kiếm &hellip;" value="" name="name" title="Search for products:" />
                     <button class="search_button icon-search" type="submit"></button>
                     <input type="hidden" name="post_type" value="product" />
                  </form>
               </aside>
               <aside id="woocommerce_product_categories-3" class="widget_number_3 widget woocommerce widget_product_categories">
                  <h5 class="widget_title">DANH  MỤC SẢN PHẨM </h5>
                  <ul class="product-categories">
                     <li class="cat-item cat-item-96">
                        <a style="text-decoration: none;" href="{{route('product')}}">Cordyx</a>
                        <span class="count">(1)</span>
                     </li>
                  </ul>
               </aside>
            </div>
         </div>
         <!-- /.sidebar -->
      </div>
   </div>
</div>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<head>
   <style>
      .container_vs2 {
      display: block;
      position: relative;
      padding-left: 35px;
      margin-bottom: 12px;
      cursor: pointer;
      font-size: 22px;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
      }
      /* Hide the browser's default radio button */
      .container_vs2 input {
      position: absolute;
      opacity: 0;
      cursor: pointer;
      }
      /* Create a custom radio button */
      .checkmark_vs2 {
      position: absolute;
      top: 0;
      left: 0;
      height: 25px;
      width: 25px;
      background-color: #eee;
      border-radius: 50%;
      }
      /* On mouse-over, add a grey background color */
      .container_vs2:hover input ~ .checkmark_vs2 {
      background-color: #ccc;
      }
      /* When the radio button is checked, add a blue background */
      .container_vs2 input:checked ~ .checkmark_vs2 {
      background-color: #2196F3;
      }
      /* Create the indicator (the dot/circle - hidden when not checked) */
      .checkmark_vs2:after {
      content: "";
      position: absolute;
      display: none;
      }
      /* Show the indicator (dot/circle) when checked */
      .container_vs2 input:checked ~ .checkmark_vs2:after {
      display: block;
      }
      /* Style the indicator (dot/circle) */
      .container_vs2 .checkmark_vs2:after {
      top: 9px;
      left: 9px;
      width: 8px;
      height: 8px;
      border-radius: 50%;
      background: white;
      }
   </style>
   @endsection