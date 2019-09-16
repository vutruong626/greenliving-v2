@extends('frontend.master')
@section('head')
<title>{{ !empty($news->seo_title)?$news->seo_title:$news->title }}</title>
<meta name="description" content="{{ $news->meta_description }}" />
<meta name="keywords" content="{{ $news->meta_keywords }}" />
@parent
@endsection
@section('content')
<div class="top_panel_title top_panel_style_6  title_present breadcrumbs_present scheme_original">
    <div class="top_panel_title_inner top_panel_inner_style_6  title_present_inner breadcrumbs_present_inner">
        <div class="content_wrap">
            <h1 class="page_title">Thông tin cần quan tâm </h1>
            <div class="breadcrumbs">
                <a class="breadcrumbs_item home cut-link" href="">Trang chủ </a>
                <span class="breadcrumbs_delimiter"></span>
                <a class="breadcrumbs_item home cut-link" href="{{route('news')}}">Thông tin cần quan tâm </a>

                <span class="breadcrumbs_item current"> {{$news->name}}</span>
            </div>
        </div>
    </div>
</div>
<div class="page_content_wrap page_paddings_yes">
    <div class="content_wrap">
        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
            <div class="content">
                <article
                    class="itemscope post_item post_item_single post_featured_default post_format_standard post-1085 post type-post status-publish format-standard has-post-thumbnail hentry category-masonry-2-columns category-masonry-3-columns category-portfolio-2-columns category-portfolio-3-columns tag-grocery"
                    itemscope itemtype="http://schema.org/Article">
                    <section class="post_featured">
                        <div class="post_thumb" data-image="{{asset('storage/'.$news->image)}}"
                            data-title="Healthy Food Guide">
                            <a class="hover_icon hover_icon_view" href="{{asset('storage/'.$news->image)}}"
                                title="Healthy Food Guide"><img class="wp-post-image" width="1170" height="660"
                                    alt="Healthy Food Guide" src="{{asset('storage/'.$news->image)}}"
                                    itemprop="image"></a>
                        </div>
                    </section>
                    <section class="post_content" itemprop="articleBody" style="font-size: 15px;margin-bottom: -35px;">
                        <h2>{{$news->name}}</h2>
                    </section> 
                    <div class="post_info">
                        <span class="post_info_item post_info_posted"> <a href="index.html"
                                class="post_info_date date updated" itemprop="datePublished"
                                content="2015-09-25">{{$news->created_at}}</a></span>

                    </div>
                    <section class="post_content" itemprop="articleBody" style="font-size: 15px;">
                        <p>{!! $news->content !!}
                        </p>
                    </section> 
                </article>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="    float: right;">
            <div class="sidebar widget_area scheme_original right1101" role="complementary">
                <div class="sidebar_inner widget_area_inner">
                    <aside id="woocommerce_product_search-2"
                        class="widget_number_4 widget woocommerce widget_product_search">
                        <form role="search" method="get" class="search_form" action="{{asset('/tim-kiem')}}">
                            <input type="text" class="search_field" placeholder="Tìm kiếm &hellip;" value="" name="name"
                                title="Search for products:" />
                            <button class="search_button icon-search" type="submit"></button>
                            <input type="hidden" name="post_type" value="product" />
                        </form>
                    </aside>
                    <aside id="woocommerce_recently_viewed_products-2"
                        class="widget_number_5 widget woocommerce widget_recently_viewed_products">
                        <h5 class="widget_title">Tin tức liên quan</h5>
                        <ul class="product_list_widget">
                            @foreach($show_list as $item_show_list)
                            <li>
                                <a class="cut-link" href="{{route('detail_news',$item_show_list->slug)}}"
                                    style="overflow-y: hidden;height: 65px;width: 260px;">
                                    <img width="570" height="703" src="{{asset('storage/'.$item_show_list->image)}}"
                                        class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image"
                                        alt="" srcset="{{asset('storage/'.$item_show_list->image)}} 600w, 
                                            {{asset('storage/'.$item_show_list->image)}} 243w, 
                                            {{asset('storage/'.$item_show_list->image)}} 390w, 
                                            {{asset('storage/'.$item_show_list->image)}} 300w, 
                                            {{asset('storage/'.$item_show_list->image)}} 628w"
                                        sizes="(max-width: 570px) 100vw, 570px" style="width: 7.6875em;">
                                    <span class="product-title">{{$item_show_list->name}}</span>
                                </a>

                            </li>
                            @endforeach
                        </ul>
                    </aside>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection