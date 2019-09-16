@extends('frontend.master')
@section('head')
<title>{{ !empty($gd_cordy_detail->seo_title)?$gd_cordy_detail->seo_title:$gd_cordy_detail->title }}</title>
<meta name="description" content="{{ $gd_cordy_detail->meta_description }}" />
<meta name="keywords" content="{{ $gd_cordy_detail->meta_keywords }}" />
@parent
@endsection
@section('content')
<div class="top_panel_title top_panel_style_4  title_present breadcrumbs_present scheme_original">
    <div class="top_panel_title_inner top_panel_inner_style_4  title_present_inner breadcrumbs_present_inner">
        <div class="content_wrap">
            <h1 class="page_title">{{$gd_cordy_detail->name}}</h1>
            <div class="breadcrumbs">
                <a class="breadcrumbs_item home cut-link" href="/">Trang chủ</a>
                <span class="breadcrumbs_delimiter"></span>
                <span class="breadcrumbs_item current"></span>
                <a class="breadcrumbs_item home cut-link" href="{{route('product')}}">Gia đình Cordy</a>
                <span class="breadcrumbs_delimiter"></span>
                <span class="breadcrumbs_item current">{{$gd_cordy_detail->name}}</span>	
            </div>
        </div>
    </div>
</div>
<div class="page_content_wrap page_paddings_yes">
	<div class="content_wrap">
        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" >
            <div class="content">
                <article class="post_item post_item_single post_item_product">
                    <nav class="woocommerce-breadcrumb">
                        <a href="">Home</a>&nbsp;&#47;&nbsp;<a href=""></a>&nbsp;&#47;&nbsp;</nav>

                    <div id="product-2151" class="post-2151 product type-product status-publish has-post-thumbnail product_cat-organic-dairy product_cat-fresh-meal product_tag-best-selling-products product_tag-featured-products product_tag-new-products first instock featured shipping-taxable purchasable product-type-simple">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="woocommerce-product-gallery woocommerce-product-gallery--with-images woocommerce-product-gallery--columns-5 images" data-columns="5" style="opacity: 1; transition: opacity .25s ease-in-out;">
                                <figure class="woocommerce-product-gallery__wrapper">
                                    <div data-thumb="{{asset('storage/'.$gd_cordy_detail->image)}}" 
                                    class="woocommerce-product-gallery__image" style="    margin-top: 75px;">
                                        <a href="{{asset('storage/'.$gd_cordy_detail->image)}}">
                                            <img width="368" height="454" src="{{asset('storage/'.$gd_cordy_detail->image)}}" 
                                            class="wp-post-image" alt="" title="36" data-caption="" 
                                            data-src="{{asset('storage/'.$gd_cordy_detail->image)}}" 
                                            data-large_image="{{asset('storage/'.$gd_cordy_detail->image)}}" 
                                            data-large_image_width="368" data-large_image_height="454" 
                                            srcset="{{asset('storage/'.$gd_cordy_detail->image)}} 368w, {{asset('storage/'.$gd_cordy_detail->image)}} 243w, {{asset('storage/'.$gd_cordy_detail->image)}} 300w" sizes="(max-width: 368px) 100vw, 368px" />
                                        </a>
                                    </div>	
                                </figure>
                            </div>
                        </div>
                       <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 right112">
                            <div class="summary entry-summary">
                                    <h3 class="product_title entry-title">{{$gd_cordy_detail->name}}</h3>
                                    <p class="price">
                                        <span class="woocommerce-Price-amount amount" style="font-size: 18px;color: red;">
                                            <span class="woocommerce-Price-currencySymbol" >
                                                
                                            </span>{{number_format($gd_cordy_detail->price)}} VND</span>
                                    </p>
                                    <div class="woocommerce-product-details__short-description">
                                        <p>{!! $gd_cordy_detail->title !!}.</p>
                                    </div>
                                    <form class="cart" action="" method="post" enctype='multipart/form-data'>
                                        {{ csrf_field() }}
                                        <div class="quantity">
                                            <label class="screen-reader-text" for="quantity_5c24ee6d6488e">Quantity</label>
                                            <input
                                                    type="number"
                                                    id="quantity_5c24ee6d6488e"
                                                    class="input-text qty text"
                                                    step="1"
                                                    min="1"
                                                    max=""
                                                    name="quantity"
                                                    value="{{$gd_cordy_detail['qty']}}1"
                                                    title="Qty"
                                                    size="4"
                                                    pattern="[0-9]*"
                                                    inputmode="numeric"
                                                    aria-labelledby="" />
                                           
                                                <a type="submit" name="add-to-cart" value="2151" class="single_add_to_cart_button button alt " href="{{asset('/cart/add/'.$gd_cordy_detail->id)}}" style="color: white;width: 33%;background: #80b500;height: 30px;text-align: center;padding: 4px;">Thanh toán</a>
                                        </div>
                                    </form>
                            </div>
                        </div>
                       
                       <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                       <div class="container" style="width: 100%;">
                            <h3>MÔ TẢ SẢN PHẨM</h3>
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#">CHI TIẾT</a>
                                </li>
                            </ul>
                            <br>
                            <p>{!! $gd_cordy_detail->content !!}</p>
                        </div>
                       </div>
                </div>
                </article>	<!-- .post_item -->
            </div> <!-- </div> class="content"> -->	
        </div>
        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="    float: right;   ">
                <div class="sidebar widget_area scheme_original right1101" role="complementary">
                    <div class="sidebar_inner widget_area_inner">
                        <aside id="woocommerce_product_categories-3" class="widget_number_3 widget woocommerce widget_product_categories">
                            <h5 class="widget_title">DANH  MỤC SẢN PHẨM </h5>
                            <ul class="product-categories">
                                <li class="cat-item cat-item-96">
                                    <a class="cut-link" href="#">Cordyx</a> 
                                    <span class="count">(1)</span>
                                </li>
                            </ul>
                        </aside>
                        </br>
                        <aside id="woocommerce_product_search-2" class="widget_number_4 widget woocommerce widget_product_search">
                            <form role="search" method="get" class="search_form" action="{{asset('/tim-kiem')}}">
                                <input type="text" class="search_field" placeholder="Tìm kiếm &hellip;" value="" name="name" title="Search for products:" />
                                <button class="search_button icon-search" type="submit"></button>
                                <input type="hidden" name="post_type" value="product" />
                            </form>
                        </aside>
                        	
                    </div>
                </div> <!-- /.sidebar -->
            </div>
</div> <!-- </div> class="content_wrap"> -->
</div>		<!-- </.page_content_wrap> -->

@endsection