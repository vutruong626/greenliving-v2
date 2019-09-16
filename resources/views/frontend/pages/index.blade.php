@extends('frontend.master')
@section('head')
<title>Cao Nấm Trùng Thảo Cordy-X MHD PHARMA </title>
<meta name="description"
    content="Cao Nấm Trùng Thảo Cordy-X là sản phẩm cao đặc chứa tinh chất Đông Trùng Hạ Thảo và tinh chất Nấm Linh Chi.">
<meta name="keywords" content="Cao Nấm Trùng Thảo, Đông Trùng Hạ Thảo, greenliving, green living" />
@parent
@endsection
@section('content')
<div class="page_content_wrap page_paddings_no">
    <div id="myCarousel" class="carousel slide dscorsoi" data-ride="carousel">
        <ol class="carousel-indicators">
            @foreach($sliders as $key=>$item_slider)
            <li data-target="#myCarousel" data-slide-to="{{$key}}" class=" @if($key == 0) active @endif "
                style="background: #80b500;"></li>
            @endforeach
        </ol>
        <div class="carousel-inner" role="listbox">
            @foreach($sliders as $key=>$item_slider)
            <div class="item @if($key == 0) active @endif">
                <a href="{{$item_slider->url}}">
                    <img class="first-slide" src="{{asset('storage/'.$item_slider->image)}}"
                        alt="{{$item_slider->name}}" style="width: 100%;">
                </a>
                <!-- <div class="container">
            <div class="carousel-caption sadw" >
                <h1 class="vt-carout">{{$item_slider->title}}</h1>
                <p><a class="btn btn-lg btn-success" href="{{$item_slider->url}}" role="button">ĐỌC THÊM</a></p>
            </div>
            </div> -->
            </div>
            @endforeach
        </div>
    </div>
    <div class="content_wrap">
        <div class="content">
            <article
                class="itemscope post_item post_item_single post_featured_default post_format_standard post-788 page type-page status-publish hentry"
                itemscope itemtype="http://schema.org/Article">
                <section class="post_content" itemprop="articleBody">
                    <div class="sc_reviews alignright"></div>
                    <div class="vc_row wpb_row vc_row-fluid" style="margin-top: 50px;">
                        @foreach($gioithieu as $item_gioithieu)
                        <div class="wpb_column vc_column_container vc_col-sm-6 vc_hidden-md vc_hidden-sm vc_hidden-xs">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div class="sc_section" style="background-color:#f2f5f8;">
                                        <div class="sc_section_inner">
                                            <div class="sc_section_overlay" style="">
                                                <div class="sc_section_content" style="">
                                                    <div class="vc_empty_space" style="height: 2.9em">
                                                        <span class="vc_empty_space_inner"></span>
                                                    </div>
                                                    <div class="columns_wrap sc_columns columns_nofluid sc_columns_count_2"
                                                        style="margin-left:25px;">
                                                        <div
                                                            class="column-1_2 sc_column_item sc_column_item_1 odd first">
                                                            <div class="sc_section aligncenter"
                                                                style="height:100%;height:100%;">
                                                                <div class="sc_section_inner">
                                                                    <figure class="sc_image  sc_image_shape_square"
                                                                        style="height:242px;">
                                                                        <img class="zoom"
                                                                            src="{{asset('storage/'.$item_gioithieu->image)}}"
                                                                            alt="{{$item_gioithieu->name}}" style="height:242px;" />
                                                                    </figure>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="column-1_2 sc_column_item sc_column_item_2 even">
                                                            <div class="sc_section">
                                                                <div class="sc_section_inner">
                                                                    <div class="wpb_text_column wpb_content_element ">
                                                                        <div class="wpb_wrapper">
                                                                            <p><a
                                                                                    href="#">{{$item_gioithieu->function}}</a>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <h2 class="sc_title sc_title_regular"
                                                                style="text-transform: capitalize; letter-spacing: 0px;margin-top:0px;margin-bottom:0.2em; font-weight:700; height: 85px; overflow-y: hidden;">
                                                                {{$item_gioithieu->name}}
                                                            </h2>
                                                            <div class="sc_section">
                                                                <div class="sc_section_inner">
                                                                    <div class="wpb_text_column wpb_content_element ">
                                                                        <div class="wpb_wrapper">
                                                                            <p
                                                                                style="height: 100px; overflow-y: hidden;">
                                                                                {{$item_gioithieu->title}}
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="vc_empty_space" style="height: 2.4em">
                                                                <span class="vc_empty_space_inner"></span>
                                                            </div>
                                                            <a href="{{route('about',$item_gioithieu->slug)}}" 
                                                                class="sc_button sc_button_square sc_button_style_filled sc_button_size_small  sc_button_iconed none">đọc
                                                                thêm</a>
                                                        </div>
                                                    </div>
                                                    <div class="vc_empty_space" style="height: 2.4em">
                                                        <span class="vc_empty_space_inner"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="vc_empty_space" style="height: 1.5em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <div class="vc_row wpb_row vc_row-fluid">
                        @foreach($gioithieu as $item_gioithieu)
                        <div class="wpb_column vc_column_container vc_col-sm-6 vc_hidden-lg">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div class="sc_section" style="background-color:#f2f5f8;">
                                        <div class="sc_section_inner">
                                            <div class="sc_section_overlay" style="">
                                                <div class="sc_section_content" style="">
                                                    <div class="vc_empty_space" style="height: 2.9em">
                                                        <span class="vc_empty_space_inner"></span>
                                                    </div>
                                                    <div class="columns_wrap sc_columns columns_nofluid sc_columns_count_2"
                                                        style="margin-left:25px;">
                                                        <div
                                                            class="column-1_2 sc_column_item sc_column_item_1 odd first">
                                                            <div class="sc_section aligncenter"
                                                                style="height:100%;height:100%;">
                                                                <div class="sc_section_inner">
                                                                    <figure class="sc_image  sc_image_shape_square"
                                                                        style="height:242px;">
                                                                        <img src="{{asset('storage/'.$item_gioithieu->image)}}"
                                                                            alt="" />
                                                                    </figure>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="column-1_2 sc_column_item sc_column_item_2 even">
                                                            <div class="sc_section">
                                                                <div class="sc_section_inner">
                                                                    <div class="wpb_text_column wpb_content_element ">
                                                                        <div class="wpb_wrapper">
                                                                            <p>{{$item_gioithieu->function}}</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <h2 class="sc_title sc_title_regular"
                                                                style="text-transform: capitalize; letter-spacing: 0px;margin-top:0px;margin-bottom:0.2em;font-weight:700;">
                                                                {{$item_gioithieu->name}}
                                                            </h2>
                                                            <div class="sc_section">
                                                                <div class="sc_section_inner">
                                                                    <div class="wpb_text_column wpb_content_element ">
                                                                        <div class="wpb_wrapper">
                                                                            <p
                                                                                style="height: 100px; overflow-y: hidden;">
                                                                                {{$item_gioithieu->title}}
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="vc_empty_space" style="height: 2.4em">
                                                                <span class="vc_empty_space_inner"></span>
                                                            </div>
                                                            <a href="{{route('about',$item_gioithieu->slug)}}" title="doc them"
                                                                class="sc_button sc_button_square sc_button_style_filled sc_button_size_small  sc_button_iconed none" >đọc
                                                                thêm</a>
                                                        </div>
                                                    </div>
                                                    <div class="vc_empty_space" style="height: 2.4em">
                                                        <span class="vc_empty_space_inner"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="vc_empty_space" style="height: 1.5em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    @foreach($contents as $item_contents)
                    <div class="vc_row wpb_row vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div class="vc_empty_space" style="height: 4.5em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
                                    <div id="sc_call_to_action_1312485239"
                                        class="sc_call_to_action sc_call_to_action_style_1 sc_call_to_action_align_center"
                                        data-animation="animated fadeIn normal" style="width:100%;">
                                        <div class="sc_call_to_action_info">
                                            <h3 class="sc_call_to_action_title sc_item_title">{{$item_contents->title}}
                                            </h3>
                                            <div class="sc_call_to_action_descr sc_item_descr">{!!
                                                $item_contents->content !!}<br />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="vc_row wpb_row vc_row-fluid" style="width: 1531px; margin-left: -181px;">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div class="sc_section imgc"
                                        style="background-image:url({{asset('storage/'.$item_contents->image)}});background-repeat:no-repeat;background-size:cover;">
                                        <div class="sc_section_inner">
                                            <div class="sc_section_overlay" style="">
                                                <div class="sc_section_content" style="">
                                                    <div
                                                        class="columns_wrap sc_columns columns_nofluid sc_columns_count_2">
                                                        <div
                                                            class="column-1_2 sc_column_item sc_column_item_1 odd first">
                                                        </div>
                                                    </div>
                                                    <div class="vc_empty_space" style="height: 30.5em">
                                                        <span class="vc_empty_space_inner"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
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
                    <div class="vc_row wpb_row vc_row-fluid vc_custom_1452766656212">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper ">
                                    <h1 class="title_center" style="font-size: 30px;">CAO NẤM TRÙNG THẢO CORDY-X </br>
                                        QUÀ TẶNG SỨC KHỎE CHO NGƯỜI THÂN YÊU NHẤT
                                    </h1>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="vc_row wpb_row vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <h3 class="sc_title sc_title_regular sc_align_left"
                                        style="margin-top:3.5em;margin-bottom:1.3em;text-align:left;"
                                        data-animation="animated fadeInUp normal">Thông tin cần Quan tâm</h3>
                                    <article class="myportfolio-container blogger2 source_type_post"
                                        id="esg-grid-21-2-wrap">
                                        <div id="esg-grid-21-2" class="esg-grid"
                                            style="background: transparent;padding: 0px 0px 0px 0px ; box-sizing:border-box; -moz-box-sizing:border-box; -webkit-box-sizing:border-box;">
                                            <article class="esg-filters esg-singlefilters"
                                                style="margin-bottom: 0px; text-align: right; ">
                                                <div class="esg-navigationbutton esg-left  esg-fgc-21"
                                                    style="margin-left: 2.5px !important; margin-right: 2.5px !important; display: none;">
                                                    <i class="eg-icon-left-open"></i>
                                                </div>
                                                <div class="esg-navigationbutton esg-right  esg-fgc-21"
                                                    style="margin-left: 2.5px !important; margin-right: 2.5px !important; display: none;">
                                                    <i class="eg-icon-right-open"></i>
                                                </div>
                                            </article>
                                            <div class="esg-clear-no-height"></div>
                                            <ul>
                                                @foreach($news as $item_news)
                                                <li id="eg-21-post-id-2001"
                                                    class="filterall filter-home-1-news filter-home-3-gallery eg-blogger-wrapper eg-post-id-2001"
                                                    data-date="1438431578">
                                                    <div class="esg-media-cover-wrapper">
                                                        <div class="esg-entry-media">
                                                            <img src="{{asset('storage/'.$item_news->image)}}" alt=""
                                                                width="870" height="490">
                                                        </div>
                                                        <div class="esg-entry-cover esg-fade" data-delay="0"
                                                            data-clickable="on">
                                                            <a class="eg-invisiblebutton"
                                                                href="{{route('detail_news',$item_news->slug)}}"
                                                                target="_self"></a>
                                                            <div class="esg-overlay esg-fade eg-blogger-container"
                                                                data-delay="0"></div>
                                                            <div class="esg-center eg-post-2001 eg-blogger-element-1-a">
                                                                <a class="eg-blogger-element-1 eg-post-2001"
                                                                    href="{{route('detail_news',$item_news->slug)}}"
                                                                    target="_self">
                                                                    <i class="eg-icon-eye"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="esg-entry-content eg-blogger-content">
                                                            <div
                                                                class="esg-content eg-post-2001 eg-blogger-element-0-a">
                                                                <a class="eg-blogger-element-0 eg-post-2001"
                                                                    href="{{route('detail_news',$item_news->slug)}}"
                                                                    target="_self"
                                                                    style="height: 43px; overflow-y: hidden;">{{$item_news->name}}</a>
                                                            </div>
                                                            <div class="esg-content eg-post-2001 eg-blogger-element-3">
                                                                {{$item_news->created_at}}
                                                            </div>
                                                            <div class="esg-content eg-post-2001 eg-handlehideunder eg-blogger-element-29"
                                                                data-hideunder="2000" data-hidetype="visibility">/</div>
                                                            <div class="esg-content eg-blogger-element-22 esg-none esg-clear"
                                                                style="height: 5px; visibility: hidden;"></div>
                                                            <div class="esg-content eg-post-2001 eg-blogger-element-6"
                                                                style="height: 85px; overflow-y: hidden;">
                                                                {{$item_news->title}}
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
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
                                                    amount: 4,
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
                                                    amount: 1,
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
                                            container = jQuery("#esg-grid-21-2");
                                        var cwidth = container.width(),
                                            ar = "3:2",
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
                                    var essapi_21;
                                    jQuery(document).ready(function() {
                                        essapi_21 = jQuery("#esg-grid-21-2").tpessential({
                                            gridID: 21,
                                            layout: "masonry",
                                            forceFullWidth: "off",
                                            lazyLoad: "off",
                                            row: 1,
                                            apiName: "essapi_21",
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
                                            mainhoverdelay: 2,
                                            filterType: "single",
                                            showDropFilter: "hover",
                                            filterGroupClass: "esg-fgc-21",
                                            filterNoMatch: "No Items for the Selected Filter",
                                            filterDeepLink: "off",
                                            googleFonts: ['Open+Sans:300,400,600,700,800',
                                                'roboto:100,200,300,400,500,600,700,800,900',
                                                'Droid+Serif:400,700'
                                            ],
                                            responsiveEntries: [{
                                                    width: 1400,
                                                    amount: 4,
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
                                                    amount: 1,
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
                                                transitionDuration: 500,
                                                hash: "group",
                                                arrows: true,
                                                wheel: false,
                                            };

                                        jQuery("#esg-grid-21-2").data("lightboxsettings", lightboxOptions);


                                    });
                                    </script>
                                    <div class="vc_empty_space" style="height: 1.7em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sc_section scheme_original">
                        <div class="content_wrap">
                            <div class="footer_shortcode_area">
                                <p>
                                    <h3 class="sc_title sc_title_regular sc_align_left"
                                        style="margin-top:3.5em;margin-bottom:1.35em;text-align:left;">Khách hàng nói
                                        gì?
                                    </h3>
                                    <div class="sc_testimonials_wrap sc_section"
                                        style="background: #f2f5f8;padding-bottom: 0px;">
                                        <div class="sc_section_overlay" style="">
                                            <div id="sc_testimonials_132390921"
                                                class="sc_testimonials sc_testimonials_style_testimonials-4  sc_slider_swiper swiper-slider-container sc_slider_pagination sc_slider_pagination_bottom sc_slider_nocontrols sc_slider_nopagination sc_slider_controls sc_slider_controls_bottom sc_slider_height_auto aligncenter"
                                                data-interval="3000" data-slides-per-view="1"
                                                data-slides-min-width="250" style="width:100%;">
                                                <div class="slides swiper-wrapper">
                                                    @foreach($clients as $item_clients)
                                                    <div class="swiper-slide" data-style="width:100%;"
                                                        style="width:100%; ">
                                                        <div id="sc_testimonials_132390921_1"
                                                            class="sc_testimonial_item" style="height: auto;">
                                                            <div class="sc_testimonial_content"
                                                                style="max-height: auto !important;">
                                                                <div>
                                                                    <p>{!!$item_clients->content!!}</p>
                                                                </div>
                                                            </div>
                                                            <div class="sc_testimonial_avatar"
                                                                style="margin-top: 15px;">
                                                                <a href="{{$item_clients->face}}">
                                                                    <img class="wp-post-image" width="75" height="75"
                                                                        alt="High speed and quality"
                                                                        src="{{asset('storage/'.$item_clients->image)}}">
                                                                </a>
                                                            </div>
                                                            <div class="sc_testimonial_author"
                                                                style="margin-top: 34px;">
                                                                <span
                                                                    class="sc_testimonial_author_name">{{$item_clients->name}}
                                                                </span>
                                                                <span
                                                                    class="sc_testimonial_author_position">{{$item_clients->email}}
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    @endforeach
                                                </div>
                                                <div class="sc_slider_controls_wrap">
                                                    <a class="sc_slider_prev" href="#"></a>
                                                    <a class="sc_slider_next" href="#"></a>
                                                </div>
                                                <!-- <div class="sc_slider_pagination_wrap"></div> -->
                                            </div>
                                        </div>
                                    </div>
                                </p>
                            </div>
                        </div>
                        <div class="content_wrap">
                            <div class="columns_wrap">
                                <aside id="organics_widget_socials-2"
                                    class="widget_number_1 column-1_4 widget widget_socials">
                                    <h5 class="widget_title">Kết nối với chúng tôi</h5>
                                    <div class="widget_inner">
                                        <div class="logo_descr">Để hỗ trợ tốt nhất cho quý khách hàng, có thể chia sẻ và
                                            tìm hiểu thêm sản phẩm của chúng tôi tại các liên kết xã hội dưới đây:
                                        </div>
                                        <div
                                            class="sc_socials sc_socials_type_icons sc_socials_shape_round sc_socials_size_tiny">
                                            <div class="sc_socials_item">
                                                <a href="{{$contact->youtube}}" target="_blank">
                                                    <img src="{{asset('images/youtube.png')}}" alt="">
                                                </a>
                                            </div>
                                            <div class="sc_socials_item">
                                                <a href="{{$contact->fanpage}}" target="_blank">
                                                    <img src="{{asset('images/facebook.png')}}" alt="">
                                                </a>
                                            </div>
                                            <div class="sc_socials_item">
                                                <a href="https://mhdpharma.com/" target="_blank" style="">
                                                    <img src="{{asset('images/icon-logo-mhd.png')}}" alt="">
                                                </a>
                                            </div>
                                        </div>
                                        <h5 style="margin-top: 1px;">Chính sách Công ty:</h5>
                                        
                                    </div>
                                </aside>
                                <aside id="organics_widget_recent_posts-5"
                                    class="widget_number_2 column-1_4 widget widget_recent_posts">
                                    <h5 class="widget_title">FAQ</h5>
                                    @foreach($faq as $item_faq)
                                    <article class="post_item with_thumb first">
                                        <div class="post_content">
                                            <p class="post_title">-
                                                <a class="cut-link" href="{{route('faq',$item_faq->id)}}"
                                                    style="color: #333333;">{{$item_faq->title}}</a>
                                            </p>
                                        </div>
                                    </article>
                                    @endforeach
                                </aside>
                                <aside id="organics_widget_recent_posts-6"
                                    class="widget_number_4 column-1_4 widget widget_recent_posts">
                                    <h5 class="widget_title">Liên Hệ </h5>
                                    <div class="vc_row wpb_row vc_row-fluid vc_custom_1439909374065"
                                        style="    margin-left: -63px;margin-right: -63px;">
                                        <div class="wpb_column vc_column_container vc_col-sm-12"
                                            style="    margin-left: 40px;">
                                            <div class="vc_column-inner ">
                                                <div class="wpb_wrapper">
                                                    <div id="sc_form_500373089_wrap" class="sc_form_wrap">
                                                        <div id="sc_form_500373089"
                                                            class="sc_form sc_form_style_form_2 aligncenter">
                                                            <div class="sc_columns columns_wrap">
                                                                <div class="sc_form_fields column-2_3">
                                                                    <form id="sc_form_500373089" data-formtype="form_2"
                                                                        method="post" action="">
                                                                        <div class="sc_form_info">
                                                                            <div
                                                                                class="sc_form_item sc_form_field label_over">
                                                                                <label class="required"
                                                                                    for="sc_form_username">Tên</label>
                                                                                <input id="sc_form_username" type="text"
                                                                                    name="username" placeholder="Tên *"
                                                                                    style="max-height: 0px;">
                                                                            </div>
                                                                            <div
                                                                                class="sc_form_item sc_form_field label_over">
                                                                                <label class="required"
                                                                                    for="sc_form_email">E-mail</label>
                                                                                <input id="sc_form_email" type="text"
                                                                                    name="email" placeholder="E-mail *"
                                                                                    style="max-height: 0px;">
                                                                            </div>
                                                                        </div>
                                                                        <div
                                                                            class="sc_form_item sc_form_message label_over">
                                                                            <label class="required"
                                                                                for="sc_form_message">Thông điệp</label>
                                                                            <textarea id="sc_form_message"
                                                                                name="message" placeholder="Thông điệp"
                                                                                style="min-height: 4.5em;"></textarea>
                                                                        </div>
                                                                        <div
                                                                            class="sc_form_field sc_form_field_checkbox">
                                                                            <input type="checkbox"
                                                                                id="i_agree_privacy_policy_sc_form_1"
                                                                                name="i_agree_privacy_policy"
                                                                                class="sc_form_privacy_checkbox"
                                                                                value="1">
                                                                            <label
                                                                                for="i_agree_privacy_policy_sc_form_1">I
                                                                                agree that my submitted data .</label>
                                                                        </div>
                                                                        <div class="sc_form_item sc_form_button">
                                                                            <button disabled="disabled">Gửi tin
                                                                                nhắn</button>
                                                                        </div>
                                                                        <div class="result sc_infobox"></div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </aside>
                            </div>
                        </div>
                </section>
            </article>
            <section class="related_wrap related_wrap_empty"></section>
        </div>
    </div>
</div>
@endsection