@extends('frontend.master')
@section('content')
<div class="top_panel_title top_panel_style_4  title_present breadcrumbs_present scheme_original">
    <div class="top_panel_title_inner top_panel_inner_style_4  title_present_inner breadcrumbs_present_inner">
        <div class="content_wrap">
            <h1 class="page_title">Gia đình Cordy</h1>
            <div class="breadcrumbs">
                <a class="breadcrumbs_item home cut-link" href="/">Trang chủ</a>
                <span class="breadcrumbs_delimiter"></span>
                <span class="breadcrumbs_item current">Gia đình Cordy</span>
            </div>
        </div>
    </div>
</div>
<div class="site-content-contain" style="margin-top: 100px;">
    <div id="content" class="site-content">
        <div class="wrap">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                    <aside id="secondary" class="widget-area" role="complementary">
                        <div class="inner">
                            <section id="woocommerce_product_categories-2"
                                class="widget woocommerce widget_product_categories">
                                <h2 class="widget-title">Danh mục sản phẩm</h2>
                                <ul class="product-categories children">
                                    @foreach($categories as $item_category)
                                    <li class="cat-item cat-item-111 " data-id="2">
                                        <p>{{$item_category->name}}</p>

                                        <ul class="children">
                                            @foreach($item_category['child'] as $item_category_child)
                                            <li class="cat-item cat-item-104 item-click" data-id="{{$item_category_child->id}}">
                                                <span style="cursor: pointer;" >{{$item_category_child->name}}</span>
                                                <span class="count">{{$item_category_child->order}}</span>
                                            </li>
                                            @endforeach
                                        </ul>
                                    </li>
                                   @endforeach
                                </ul>
                            </section>
                        </div>
                    </aside>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                    <div id="primary" class="content-area">
                        <main id="main" class="site-main" role="main">
                            <header class="woocommerce-products-header">
                            </header>
                            <div class="osf-sorting-wrapper">
                                <div class="osf-sorting">
                                    <div class="osf-sorting-group col-lg-6 col-sm-12"><a href=""
                                            style="font-size: 20px;"><i class="fas fa-bars" style="color: #f6b823;"></i>
                                            Tất cả</a>
                                    </div>

                                </div>
                            </div>

                            <div class="woocommerce-notices-wrapper"></div>
                            <div class="columns-3">
                                <ul class=" products columns-3 ajax-showdata ">
                                    @foreach($gd_cordy_list as $item_gd_cordy)
                                    <li class="show_data_pro list_product product type-product post-2840 status-publish first instock product_cat-cough-cold-flu has-post-thumbnail shipping-taxable purchasable product-type-simple">
                                        <div class="product-block">
                                            <div class="product-transition">
                                                <div class="product-image">
                                                    <img width="400" height="534"
                                                        src="{{asset('storage/'.$item_gd_cordy->image)}}"
                                                        class="attachment-shop_catalog size-shop_catalog wp-post-image"
                                                        alt="">
                                                </div>
                                                <a href="{{route('detail_product',$item_gd_cordy->slug)}}"
                                                    class="woocommerce-LoopProduct-link woocommerce-loop-product__link"></a>
                                            </div>
                                            <h3 class="woocommerce-loop-product__title"><a href="{{route('detail_product',$item_gd_cordy->slug)}}">{{$item_gd_cordy->name}}</a></h3>

                                            <div class="woocommerce-product-details__short-description"
                                                style="font-size: 12px;line-height: 15px;">
                                                <p style="color: #f6b822;">{{$item_gd_cordy->title}}</p>
                                            </div>
                                            <div class="woocommerce-product-details__short-description"
                                                style="font-size: 12px;"></div>
                                            <!-- <div class="posted_in">Tiêu hóa - Gan mật</div> -->
                                            <div class="caption">
                                                <div class="group-label">
                                                    <span class="price">
                                                        <span class="woocommerce-Price-amount amount" style="font-size: 20px;font-weight: 800;">{{number_format($item_gd_cordy->price)}} VND </span>
                                                    </span>
                                                </div>
                                                <div class="opal-add-to-cart-button tooltipstered">
                                                    <a href="{{asset('/cart/add/'.$item_gd_cordy->id)}}" data-quantity="1"
                                                        class="button product_type_simple add_to_cart_button ajax_add_to_cart"
                                                        data-product_id="2840" data-product_sku="" style="font-size: 18px; text-decoration: none;"
                                                        aria-label="Add “Abreva Cold Sore Fever Blister Treatment Cream” to your cart"
                                                        rel="nofollow">Thêm vào giỏ hàng &emsp;&emsp;<i class="fas fa-shopping-basket"></i></a></div>
                                            </div>
                                        </div>
                                    </li>
                                    @endforeach
                                </ul>
                            </div>
                        </main><!-- #main -->
                    </div><!-- #primary -->
                </div>
            </div>
        </div>
    </div><!-- #content -->
</div>
<link rel='stylesheet' href="{{asset('css/vt-dfm/a0hs5.css')}}" type='text/css' media='all' />
<link rel='stylesheet' href="{{asset('css/dfm-vt/a0hs5.css')}}" type='text/css' media='all' />
<link rel='stylesheet' href="{{asset('css/dfm-vt/customstyle.css')}}" type='text/css' media='all' />

<script>
    $(document).on('click', '.item-click', function () {
        //active or remove menu
        $(".item-click").removeClass("active-menu");
        $(this).addClass( "active-menu" );
        var id = $(this).attr('data-id');
        // console.log(id);
        $.ajax({
            url: '/getCategoryProduct/' + id,
            type: "GET",
            dataType: 'json',
            async: false,
            data: {

            },
            success: function(res) {
                // console.log(res);
                var element = '';
                if (res.length > 0) {
                    for (var i = 0; i < res.length; i++) {
                        var slug = res[i].slug;
                        element += '<li class="show_data_pro list_product product type-product post-2840 status-publish first instock product_cat-cough-cold-flu has-post-thumbnail shipping-taxable purchasable product-type-simple">' +
                                        '<div class="product-block">' +
                                            '<div class="product-transition">' +
                                                '<div class="product-image">'+
                                                '<img width="400" height="534" src="storage/' + res[i].image +
                                                '" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" />' +
                                                '</div>'+
                                                '<a href="{{ route('detail_product','') }}/'+ slug +'" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">'+
                                                '</a>'+
                                            '</div>' +
                                            '<h3 class="woocommerce-loop-product__title">'+
                                                '<a href="{{ route('detail_product','') }}/'+ slug +'">'+ res[i].name +
                                                '</a>'+
                                            '</h3>'+
                                            '<div class="woocommerce-product-details__short-description" style="font-size: 12px;line-height: 15px;">'+
                                                '<p style="color: #f6b822;">'+ res[i].title +
                                                '</p>'+
                                            '</div>'+
                                            '<div class="woocommerce-product-details__short-description" style="font-size: 12px;">'+
                                            '</div>'+
                                            '<div class="caption">'+
                                                '<div class="group-label">'+
                                                    '<span class="price">'+
                                                        '<span class="woocommerce-Price-amount amount" style="font-size: 20px;font-weight: 800;">'+  number_format(res[i].price) +'&emsp;' +'VND'+ 
                                                        '</span>'+
                                                    '</span>'+
                                                '</div>'+
                                                '<div class="opal-add-to-cart-button tooltipstered">'+
                                                    '<a data-quantity="1" class="button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="2840" data-product_sku="" style="font-size: 18px; text-decoration: none;" aria-label="Add “Abreva Cold Sore Fever Blister Treatment Cream” to your cart" rel="nofollow" href="{{ asset('/cart/add/','') }}/'+ id +'" >'+ 'Thêm vào giỏ hàng' + '&emsp;&emsp;<i class="fas fa-shopping-basket"></i>'+
                                                    '</a>'
                                                '</div>'+


                                            '</div>'+
                                        '</div>'+





                                    '</li>';
                    }
                    $('.ajax-showdata').html(element);

                }

            }

        });
        console.log($(this).attr('data-id'));
    });
    // tao gia tien viet nam
    function number_format (number, decimals, decPoint, thousandsSep) { // eslint-disable-line camelcase
        number = (number + '').replace(/[^0-9+\-Ee.]/g, '')
        var n = !isFinite(+number) ? 0 : +number
        var prec = !isFinite(+decimals) ? 0 : Math.abs(decimals)
        var sep = (typeof thousandsSep === 'undefined') ? ',' : thousandsSep
        var dec = (typeof decPoint === 'undefined') ? '.' : decPoint
        var s = ''

        var toFixedFix = function (n, prec) {
            if (('' + n).indexOf('e') === -1) {
            return +(Math.round(n + 'e+' + prec) + 'e-' + prec)
            } else {
            var arr = ('' + n).split('e')
            var sig = ''
            if (+arr[1] + prec > 0) {
                sig = '+'
            }
            return (+(Math.round(+arr[0] + 'e' + sig + (+arr[1] + prec)) + 'e-' + prec)).toFixed(prec)
            }
        }

        // @todo: for IE parseFloat(0.55).toFixed(0) = 0;
        s = (prec ? toFixedFix(n, prec).toString() : '' + Math.round(n)).split('.')
        if (s[0].length > 3) {
            s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep)
        }
        if ((s[1] || '').length < prec) {
            s[1] = s[1] || ''
            s[1] += new Array(prec - s[1].length + 1).join('0')
        }

        return s.join(dec)
        }

    </script>
<style type="text/css">
@media screen and (min-width:1200px) {

    .container,
    #content,
    .single-product .related.products,
    .single-product .up-sells.products,
    ul.elementor-nav-menu--dropdown.mega-containerwidth>li.mega-menu-item>.elementor {
        max-width: 1200px;
    }
}

@media screen and (min-width:1400px) {
    body.opal-layout-boxed {
        margin: 0px auto;
        width: 1400px;
    }

    body.opal-layout-boxed .elementor-section.elementor-section-stretched {
        max-width: 1400px;
    }
}

@media screen and (max-width: 1024px) {
    .elementor-1217 .elementor-element.elementor-element-e28060e>.elementor-element-populated {
        padding: 0px 0px 0px 0px;
    }
}

@media (min-width: 769px) {

    body.tax-product_cat.opal-content-layout-2cl #secondary,
    body.tax-product_cat.opal-content-layout-2cr #secondary,
    body.post-type-archive-product.opal-content-layout-2cl #secondary,
    body.post-type-archive-product.opal-content-layout-2cr #secondary {
        flex: 0 0 300px;
        max-width: 300px;
    }
}

body.custom-background {
    background-color: #a9cedf;
    background-image: url("{{asset('images/Lee/Background-nen.jpg')}}");
    background-position: center top;
    background-size: auto;
    background-repeat: no-repeat;
    background-attachment: fixed;
}

/* Style the buttons */
.btn {
    border: none;
    outline: none;
    padding: 10px 16px;
    background-color: #ffffff;
    cursor: pointer;
    font-size: 18px;
}

/* Style the active class, and buttons on mouse-over */
.active,
.btn:hover,
.active-menu {
    background-color: #fff;
    color: #f6b823;
}
</style>
@endsection