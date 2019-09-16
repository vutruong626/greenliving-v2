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
            <h1 class="page_title">Sản phẩm: {{$gd_cordy_detail->seo_title}}</h1>
            <div class="breadcrumbs">
                <a class="breadcrumbs_item home cut-link" href="/">Trang chủ</a>
                <span class="breadcrumbs_delimiter"></span>
                <span class="breadcrumbs_item current"></span>
                <a class="breadcrumbs_item home cut-link" href="{{route('showsanpham')}}">Gia đình Cordy</a>
                <span class="breadcrumbs_delimiter"></span>
                <span class="breadcrumbs_item current">{{$gd_cordy_detail->name}}</span>	
            </div>
        </div>
    </div>
</div>
<div class="page_content_wrap page_paddings_yes">
	<div class="content_wrap">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
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
                                    <h3 class="product_title entry-title">{{$gd_cordy_detail->seo_title}}</h3>
                                    <p class="price">
                                        <span class="woocommerce-Price-amount amount" style="font-size: 18px;color: red;">
                                            <span class="woocommerce-Price-currencySymbol" >
                                            </span>{{number_format($gd_cordy_detail->price)}} VND</span>
                                    </p>
                                    <div class="woocommerce-product-details__short-description">
                                        <p>{!! $gd_cordy_detail->excerpt !!}</p>
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
                            <p>{!! $gd_cordy_detail->body !!}</p>
                        </div>
                       </div>
                </div>
                </article>	<!-- .post_item -->
                <div class="vc_row wpb_row vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <h3 class="sc_title sc_title_regular sc_align_left"
                                        style="margin-top:3.5em;text-align:left;"
                                        data-animation="animated fadeIn normal">Sản Phẩm</h3>
                                    <article class="myportfolio-container shop-organics source_type_post"
                                        id="esg-grid-18-1-wrap">
                                        <div id="esg-grid-18-1" class="esg-grid"
                                            style="background: transparent;padding: 0px 0px 0px 0px ; box-sizing:border-box; -moz-box-sizing:border-box; -webkit-box-sizing:border-box;">
                                            <article class="esg-filters esg-singlefilters"
                                                style="margin-bottom: 0px; text-align: right; ">
                                                <div class="esg-navigationbutton esg-left  esg-fgc-18"
                                                    style="margin-left: 15px !important; margin-right: 15px !important; display: none;">
                                                    <i class="eg-icon-left-open"></i>
                                                </div>
                                                <div class="esg-navigationbutton esg-right  esg-fgc-18"
                                                    style="margin-left: 15px !important; margin-right: 15px !important; display: none;">
                                                    <i class="eg-icon-right-open"></i>
                                                </div>
                                            </article>
                                            <div class="esg-clear-no-height"></div>
                                            <ul>
                                                @foreach($gd_cordy_index as $item_gd_cordy)
                                                @if($item_gd_cordy->id != $gd_cordy_detail->id)
                                                <li id="eg-18-post-id-1346"
                                                    class="filterall filter-simple filter-featured filter-organic-dairy filter-fresh-meal filter-best-selling-products filter-featured-products filter-new-products eg-arthur-organic-wrapper eg-post-id-1346"
                                                    data-date="1441459331">
                                                    <div class="esg-media-cover-wrapper">
                                                        <div class="esg-entry-media">
                                                            <img src="{{asset('storage/'.$item_gd_cordy->image)}}"
                                                                alt="" width="628" height="775">
                                                        </div>
                                                        <div class="esg-entry-cover esg-fade" data-delay="0">
                                                            <div class="esg-overlay esg-fade eg-arthur-organic-container"
                                                                data-delay="0"></div>
                                                            <div class="esg-center eg-post-1346 eg-arthur-organic-element-32-a esg-slideup"
                                                                data-delay="0.1">
                                                                <a class="eg-arthur-organic-element-32 eg-post-1346 esgbox"
                                                                    href="{{asset('storage/'.$item_gd_cordy->image)}}"
                                                                    data-width="628" data-height="775">Quick View</a>
                                                            </div>
                                                            <div class="esg-center eg-arthur-organic-element-34 esg-none esg-clear"
                                                                style="height: 5px; visibility: hidden;"></div>
                                                            <div class="esg-center eg-post-1346 eg-arthur-organic-element-28-a esg-slideup"
                                                                data-delay="0.25">
                                                                <a href="{{asset('/cart/add/'.$item_gd_cordy->id)}}"
                                                                    rel="" data-product_id="1346" data-product_sku=""
                                                                    class="eg-arthur-organic-element-28 eg-post-1346 button add_to_cart_button ">
                                                                    Thêm vào giỏ hàng</a>
                                                            </div>
                                                        </div>
                                                        <div class="esg-entry-content eg-arthur-organic-content">
                                                            <div
                                                                class="esg-content eg-post-1346 eg-arthur-organic-element-36-a">
                                                                <a class="eg-arthur-organic-element-36 eg-post-1346"
                                                                    href="{{route('chitietsanpham',$item_gd_cordy->slug)}}"
                                                                    target="_self"
                                                                    style="height: 40px; overflow-y: hidden;">{{$item_gd_cordy->seo_title}}</a>
                                                            </div>
                                                            
                                                            
                                                            <div
                                                                class="esg-content eg-post-1346 eg-arthur-organic-element-25">
                                                                <ins>
                                                                    <span class="woocommerce-Price-amount amount"><span
                                                                            class="woocommerce-Price-currencySymbol"></span>{{ number_format($item_gd_cordy->price)}}
                                                                        VND</span>
                                                                </ins>
                                                            </div>
                                                            <div
                                                                class="esg-content eg-post-1346 eg-arthur-organic-element-1-a">
                                                                <a class="eg-arthur-organic-element-1 eg-post-1346"
                                                                    href="product-category/organic-dairy/index.html"
                                                                    rel="tag">{{$item_gd_cordy->title}}</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                @endif
                                                @endforeach
                                            </ul>
                                        </div>
                                    </article>
                                    <div class="clear"></div>
                                    <script type="text/javascript">
                                    function eggbfc(winw, resultoption) {
                                        var lasttop = winw,
                                            lastbottom = 0,
                                            smallest = 9999,
                                            largest = 0,
                                            samount = 0,
                                            lamount = 0,
                                            lastamount = 0,
                                            resultid = 0,
                                            resultidb = 0,
                                            responsiveEntries = [{
                                                    width: 1400,
                                                    amount: 5,
                                                    mmheight: 0
                                                },
                                                {
                                                    width: 1170,
                                                    amount: 4,
                                                    mmheight: 0
                                                },
                                                {
                                                    width: 1024,
                                                    amount: 4,
                                                    mmheight: 0
                                                },
                                                {
                                                    width: 960,
                                                    amount: 3,
                                                    mmheight: 0
                                                },
                                                {
                                                    width: 778,
                                                    amount: 3,
                                                    mmheight: 0
                                                },
                                                {
                                                    width: 640,
                                                    amount: 3,
                                                    mmheight: 0
                                                },
                                                {
                                                    width: 480,
                                                    amount: 2,
                                                    mmheight: 0
                                                }
                                            ];
                                        if (responsiveEntries != undefined && responsiveEntries.length > 0)
                                            jQuery.each(responsiveEntries, function(index, obj) {
                                                var curw = obj.width != undefined ? obj.width : 0,
                                                    cura = obj.amount != undefined ? obj.amount : 0;
                                                if (smallest > curw) {
                                                    smallest = curw;
                                                    samount = cura;
                                                    resultidb = index;
                                                }
                                                if (largest < curw) {
                                                    largest = curw;
                                                    lamount = cura;
                                                }
                                                if (curw > lastbottom && curw <= lasttop) {
                                                    lastbottom = curw;
                                                    lastamount = cura;
                                                    resultid = index;
                                                }
                                            });
                                        if (smallest > winw) {
                                            lastamount = samount;
                                            resultid = resultidb;
                                        }
                                        var obj = new Object;
                                        obj.index = resultid;
                                        obj.column = lastamount;
                                        if (resultoption == "id")
                                            return obj;
                                        else
                                            return lastamount;
                                    }
                                    if ("masonry" == "even") {
                                        var coh = 0,
                                            container = jQuery("#esg-grid-18-1");
                                        var cwidth = container.width(),
                                            ar = "4:5",
                                            gbfc = eggbfc(jQuery(window).width(), "id"),
                                            row = 1;
                                        ar = ar.split(":");
                                        var aratio = parseInt(ar[0], 0) / parseInt(ar[1], 0);
                                        coh = cwidth / aratio;
                                        coh = coh / gbfc.column * row;
                                        var ul = container.find("ul").first();
                                        ul.css({
                                            display: "block",
                                            height: coh + "px"
                                        });
                                    }
                                    var essapi_18;
                                    jQuery(document).ready(function() {
                                        essapi_18 = jQuery("#esg-grid-18-1").tpessential({
                                            gridID: 18,
                                            layout: "masonry",
                                            forceFullWidth: "off",
                                            lazyLoad: "off",
                                            row: 1,
                                            apiName: "essapi_18",
                                            loadMoreAjaxToken: "12561bf45f",
                                            loadMoreAjaxUrl: "{{asset('js/wp-admin/admin-ajax.php')}}",
                                            loadMoreAjaxAction: "Essential_Grid_Front_request_ajax",
                                            ajaxContentTarget: "ess-grid-ajax-container-",
                                            ajaxScrollToOffset: "0",
                                            ajaxCloseButton: "off",
                                            ajaxContentSliding: "on",
                                            ajaxScrollToOnLoad: "on",
                                            ajaxCallbackArgument: "off",
                                            ajaxNavButton: "off",
                                            ajaxCloseType: "type1",
                                            ajaxCloseInner: "false",
                                            ajaxCloseStyle: "light",
                                            ajaxClosePosition: "tr",
                                            space: 30,
                                            pageAnimation: "horizontal-slide",
                                            paginationScrollToTop: "off",
                                            paginationAutoplay: "off",
                                            spinner: "spinner0",
                                            lightBoxMode: "single",
                                            lightboxHash: "group",
                                            lightboxPostMinWid: "75%",
                                            lightboxPostMaxWid: "75%",
                                            lightboxSpinner: "off",
                                            lightBoxFeaturedImg: "off",
                                            lightBoxPostTitle: "off",
                                            lightBoxPostTitleTag: "h2",
                                            lightboxMargin: "0|0|0|0",
                                            lbContentPadding: "0|0|0|0",
                                            lbContentOverflow: "auto",
                                            animSpeed: 1200,
                                            delayBasic: 1,
                                            mainhoverdelay: 1,
                                            filterType: "single",
                                            showDropFilter: "hover",
                                            filterGroupClass: "esg-fgc-18",
                                            filterNoMatch: "No Items for the Selected Filter",
                                            filterDeepLink: "off",
                                            googleFonts: ['Open+Sans:300,400,600,700,800',
                                                'roboto:100,200,300,400,500,600,700,800,900',
                                                'Droid+Serif:400,700'
                                            ],
                                            responsiveEntries: [{
                                                    width: 1400,
                                                    amount: 5,
                                                    mmheight: 0
                                                },
                                                {
                                                    width: 1170,
                                                    amount: 4,
                                                    mmheight: 0
                                                },
                                                {
                                                    width: 1024,
                                                    amount: 4,
                                                    mmheight: 0
                                                },
                                                {
                                                    width: 960,
                                                    amount: 3,
                                                    mmheight: 0
                                                },
                                                {
                                                    width: 778,
                                                    amount: 3,
                                                    mmheight: 0
                                                },
                                                {
                                                    width: 640,
                                                    amount: 3,
                                                    mmheight: 0
                                                },
                                                {
                                                    width: 480,
                                                    amount: 2,
                                                    mmheight: 0
                                                }
                                            ]
                                        });

                                        var arrows = true,
                                            lightboxOptions = {
                                                margin: [0, 0, 0, 0],
                                                buttons: ["share", "thumbs", "close"],
                                                infobar: true,
                                                loop: true,
                                                slideShow: {
                                                    "autoStart": false,
                                                    "speed": 3000
                                                },
                                                animationEffect: "fade",
                                                animationDuration: 500,
                                                beforeShow: function(a, c) {
                                                    if (!arrows) {
                                                        jQuery("body").addClass("esgbox-hidearrows");
                                                    }
                                                    var i = 0,
                                                        multiple = false;
                                                    a = a.slides;
                                                    for (var b in a) {
                                                        i++;
                                                        if (i > 1) {
                                                            multiple = true;
                                                            break;
                                                        }
                                                    }
                                                    if (!multiple) jQuery("body").addClass("esgbox-single");
                                                    if (c.type === "image") jQuery(".esgbox-button--zoom")
                                                        .show();
                                                },
                                                beforeLoad: function(a, b) {
                                                    jQuery("body").removeClass("esg-four-by-three");
                                                    if (b.opts.$orig.data("ratio") === "4:3") jQuery("body")
                                                        .addClass("esg-four-by-three");
                                                },
                                                afterLoad: function() {
                                                    jQuery(window).trigger("resize.esglb");
                                                },
                                                afterClose: function() {
                                                    jQuery("body").removeClass(
                                                        "esgbox-hidearrows esgbox-single");
                                                },
                                                transitionEffect: "fade",
                                                transitionDuration: 366,
                                                hash: "group",
                                                arrows: true,
                                                wheel: false,
                                            };

                                        jQuery("#esg-grid-18-1").data("lightboxsettings", lightboxOptions);


                                        try {
                                            jQuery("#esg-grid-18-1 .esgbox").esgbox(lightboxOptions);
                                        } catch (e) {}

                                    });
                                    </script>
                                    <div class="vc_empty_space" style="height: 1.7em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div> <!-- </div> class="content"> -->	
        </div>
</div>		<!-- </.page_content_wrap> -->

@endsection