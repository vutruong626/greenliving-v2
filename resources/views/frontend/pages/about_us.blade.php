@extends('frontend.master')


@section('content')
<div class="top_panel_title top_panel_style_6  title_present breadcrumbs_present scheme_original">
    <div class="top_panel_title_inner top_panel_inner_style_6  title_present_inner breadcrumbs_present_inner">
        <div class="content_wrap">
            <h1 class="page_title">Giới thiệu </h1>
            <div class="breadcrumbs">
                <a class="breadcrumbs_item home cut-link" href="/">Trang chủ</a>
                <span class="breadcrumbs_delimiter"></span>
                <span class="breadcrumbs_item current">Giới thiệu </span>
            </div>
        </div>
    </div>
</div>
<div class="page_content_wrap page_paddings_no">
    <div class="content_wrap">
        <div class="content">
            <article
                class="itemscope post_item post_item_single post_featured_default post_format_standard post-1056 page type-page status-publish hentry"
                itemscope itemtype="http://schema.org/Article">
                <section class="post_content" itemprop="articleBody">
                    @foreach($description_prdocuct as $item_description_prdocuct)
                    <div class="sc_reviews alignright">
                        <!-- #TRX_REVIEWS_PLACEHOLDER# -->
                    </div>
                    <div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div class="vc_empty_space" style="height: 1.5em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
                                    <h2 class="sc_title sc_title_regular sc_align_center"
                                        style="margin-bottom:1.4em;text-align:center;">
                                        {{$item_description_prdocuct->title}}</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="vc_row-full-width"></div>
                    <div class="vc_row wpb_row vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-6 vc_col-md-6 vc_col-xs-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div class="sc_section aligncenter">
                                        <div class="sc_section_inner">
                                            <figure class="sc_image  sc_image_shape_square">
                                                <img src="{{asset('storage/'.$item_description_prdocuct->image)}}"
                                                    alt="" />
                                            </figure>
                                        </div>
                                    </div>
                                    <div class="vc_empty_space" style="height: 2em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-6 vc_col-md-6 vc_col-xs-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div class="sc_section">
                                        <div class="sc_section_inner">

                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <span class="sc_icon alignleft"
                                                    style="display:block;margin-right:0.4em;font-size:5em; line-height: 1em;color:#80b500;"><img
                                                        src="{{asset('images/1.jpg')}}" alt="">
                                                </span>
                                                <p style="color: #4c4841;line-height: 1.75em;text-align: left"
                                                    class="vc_custom_heading">
                                                    {{$item_description_prdocuct->meta_description_cty}}</p>
                                                <div class="vc_empty_space" style="height: 0.4em">
                                                    <span class="vc_empty_space_inner"></span>
                                                </div>
                                            </div>

                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <span class="sc_icon alignleft"
                                                    style="display:block;margin-right:0.4em;font-size:5em; line-height: 1em;color:#80b500;"><img
                                                        src="{{asset('images/2.jpg')}}" alt="">
                                                </span>
                                                <p style="color: #4c4841;line-height: 1.75em;text-align: left"
                                                    class="vc_custom_heading">
                                                    {{$item_description_prdocuct->meta_description_cn}}</p>
                                                <div class="vc_empty_space" style="height: 0.4em">
                                                    <span class="vc_empty_space_inner"></span>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <span class="sc_icon alignleft"
                                                    style="display:block;margin-right:0.4em;font-size:5em; line-height: 1em;color:#80b500;"><img
                                                        src="{{asset('images/3.jpg')}}" alt="">
                                                </span>
                                                <p style="color: #4c4841;line-height: 1.75em;text-align: left"
                                                    class="vc_custom_heading">
                                                    {{$item_description_prdocuct->meta_description_sp}}</p>
                                                <div class="vc_empty_space" style="height: 1em">
                                                    <span class="vc_empty_space_inner"></span>
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
                                    <div class="vc_empty_space" style="height: 4em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="vc_row wpb_row vc_row-fluid vc_custom_1450458642786" style="    background: #f0f0f0;">
                        <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-5 vc_col-md-6 vc_col-xs-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div class="vc_empty_space" style="height: 4.5em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
                                    <div class="sc_section" style="margin-left:4em !important;">
                                        <div class="sc_section_inner">
                                            <div class="wpb_text_column wpb_content_element ">
                                                <div class="wpb_wrapper">
                                                    <p>
                                                        <a href="#">{{$gioithieu->function}}</a>
                                                    </p>
                                                </div>
                                            </div>
                                            <h2 class="sc_title sc_title_regular"
                                                style="text-transform: capitalize; letter-spacing: 0;margin-top:0.1em;margin-bottom:0.4em;font-weight:700;">
                                                {{$gioithieu->name}}</h2>
                                            <div class="wpb_text_column wpb_content_element ">
                                                <div class="wpb_wrapper">
                                                    <p>{!! $gioithieu->content !!}</p>

                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="vc_empty_space" style="height: 4.5em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-7 vc_col-md-6 vc_col-xs-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div class="vc_empty_space" style="height: 1em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
                                    <figure class="sc_image  sc_image_shape_square" style="padding-left: 65px;">
                                        <img src="{{asset('storage/'.$gioithieu->image)}}" alt="" />
                                    </figure>
                                    <div class="vc_empty_space" style="height: 1em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div data-vc-full-width="true" data-vc-full-width-init="false"
                        class="vc_row wpb_row vc_row-fluid vc_custom_1449136753813" style="opacity: 1; width: 112%;">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div class="vc_empty_space">
                                        <h2 style="font-weight: 700;">Chức năng sản phẩm </h2>
                                    </div>
                                    <div class="sc_section" style="    margin-right: 50px;">
                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                            <div class="sc_column_item sc_column_item_2 even">
                                                <div class="sc_price_block sc_price_block_style_2"
                                                    style="background: #f0f0f0;font-weight: 600;color: #3f2803;">
                                                    <img src="{{asset('images/chuc-nang-1.jpg')}}" alt="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="sc_price_block_description"></div>
                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                            <div class=" sc_column_item sc_column_item_2 even">
                                                <div class="sc_price_block sc_price_block_style_2"
                                                    style="background: #f0f0f0;font-weight: 600;color: #3f2803;">
                                                    <img src="{{asset('images/chuc-nang-2.jpg')}}" alt="">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                            <div class="sc_column_item sc_column_item_2 even">
                                                <div class="sc_price_block sc_price_block_style_2"
                                                    style="background: #f0f0f0;font-weight: 600;color: #3f2803;">
                                                    <img src="{{asset('images/chuc-nang-3.jpg')}}" alt="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <h2 class="sc_title sc_title_regular sc_align_center"
                                        style="margin-top:2.1em;margin-bottom:1.2em;font-weight: 700;"
                                        data-animation="animated fadeInUp normal">ĐỘI NGŨ NGHIÊN CỨU</h2>
                                    <div id="sc_team_1699295153_wrap" class="sc_team_wrap">
                                        <div id="sc_team_1699295153"
                                            class="sc_team sc_team_style_team-1  sc_slider_nopagination sc_slider_nocontrols"
                                            style="width:100%;" data-interval="5323" data-slides-per-view="4"
                                            data-slides-min-width="250" data-animation="animated fadeInUp normal">
                                            <div class="sc_columns columns_wrap">
                                                <div class="column-1_4 column_padding_bottom">
                                                    <div id="sc_team_1699295153_2"
                                                        class="sc_team_item sc_team_item_2 even">
                                                        <div class="aaasa" style="margin-left: 16px;">
                                                            <div class="sc_team_item_avatar_inner">
                                                                <img class="wp-post-image" width="240" height="240"
                                                                    alt="Valerie Anderson"
                                                                    src="{{asset('images/Ts-NTLT.png')}}">
                                                            </div>
                                                        </div>
                                                        <div class="sc_team_item_info">
                                                            <h3 class="sc_team_item_title" style="font-size: 18px;">TS.
                                                                Nguyễn Thị Liên Thương </h3>
                                                            <div class="sc_team_item_position"
                                                                style="color: #80b500;font-weight: bold;font-size: 16px;">
                                                                Đại Học Ulsan Hàn Quốc </div>
                                                            <div class="sc_team_item_position"
                                                                style="    color: #333333;font-weight: 600;">GS TT
                                                                Nghiên cứu & Thực nghiệm</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="column-1_4 column_padding_bottom">
                                                    <div id="sc_team_1699295153_2"
                                                        class="sc_team_item sc_team_item_2 even">
                                                        <div class="aaasa" style="margin-left: 16px;">
                                                            <div class="sc_team_item_avatar_inner">
                                                                <img class="wp-post-image" width="240" height="240"
                                                                    alt="Valerie Anderson"
                                                                    src="{{asset('images/Hinh1.jpg')}}">
                                                            </div>
                                                        </div>
                                                        <div class="sc_team_item_info">
                                                            <h3 class="sc_team_item_title" style="font-size: 18px;">PGS.
                                                                TS Nguyễn Thanh Bình </h3>
                                                            <div class="sc_team_item_position"
                                                                style="color: #80b500;font-weight: bold;font-size: 16px;">
                                                                ĐH Kobe Nhật Bản</div>
                                                            <div class="sc_team_item_position"
                                                                style="    color: #333333;font-weight: 600;">TK Khoa học
                                                                tự nhiên</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="column-1_4 column_padding_bottom">
                                                    <div id="sc_team_1699295153_2"
                                                        class="sc_team_item sc_team_item_2 even">
                                                        <div class="aaasa" style="margin-left: 16px;">
                                                            <div class="sc_team_item_avatar_inner">
                                                                <img class="wp-post-image" width="240" height="240"
                                                                    alt="Valerie Anderson"
                                                                    src="{{asset('images/Hinh2.jpg')}}">
                                                            </div>
                                                        </div>
                                                        <div class="sc_team_item_info">
                                                            <h3 class="sc_team_item_title" style="font-size: 18px;">TS
                                                                Ngô Đại Hùng</h3>
                                                            <div class="sc_team_item_position"
                                                                style="color: #80b500;font-weight: bold;font-size: 16px;">
                                                                ĐH Busan, Hàn Quốc</div>
                                                            <div class="sc_team_item_position"
                                                                style="    color: #333333;font-weight: 600;">Giảng viên
                                                                bộ môn Sinh học khoa KHTN</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- /.sc_team -->
                                    </div><!-- /.sc_team_wrap -->
                                    <div class="vc_empty_space" style="height: 3em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="vc_row-full-width"></div>
                    <div class="vc_row wpb_row vc_row-fluid vc_custom_1452766656212">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper ">
                                    <h2 class="title_center">CAO NẤM TRÙNG THẢO CORDY-X</br> QUÀ TẶNG SỨC KHỎE CHO NGƯỜI
                                        THÂN YÊU NHẤT!</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </article>
            <section class="related_wrap related_wrap_empty"></section>

        </div>
    </div>
</div>

@endsection