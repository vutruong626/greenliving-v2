@extends('frontend.master')
@section('content')
<div class="top_panel_title top_panel_style_6  title_present breadcrumbs_present scheme_original">
    <div class="top_panel_title_inner top_panel_inner_style_6  title_present_inner breadcrumbs_present_inner">
        <div class="content_wrap">
            <h1 class="page_title">Chính sách Công ty</h1>
            <div class="breadcrumbs">
                <a class="breadcrumbs_item home cut-link" href="">Trang chủ</a>
                <span class="breadcrumbs_delimiter"></span>
                <a class="breadcrumbs_item home" href="{{route('news')}}">Thông tin cần quan tâm </a>
                <span class="breadcrumbs_item current"> {{ $privacy_policy->name }}</span>
            </div>
        </div>
    </div>
</div>
<div class="page_content_wrap page_paddings_yes">
    <div class="content_wrap">
        <div class="content">
            <article
                class="itemscope post_item post_item_single post_featured_default post_format_standard post-1085 post type-post status-publish format-standard has-post-thumbnail hentry category-masonry-2-columns category-masonry-3-columns category-portfolio-2-columns category-portfolio-3-columns tag-grocery"
                itemscope itemtype="http://schema.org/Article">
                <section class="post_content" itemprop="articleBody" style="font-size: 15px;margin-bottom: -35px;">
                    <h2>{{$privacy_policy->name}}</h2>
                </section>
                <div class="post_info">
                    <span class="post_info_item post_info_posted"> <a href="index.html"
                            class="post_info_date date updated" itemprop="datePublished"
                            content="2015-09-25">{{$privacy_policy->created_at}}</a></span>

                </div>
                <section class="post_content" itemprop="articleBody" style="font-size: 15px;">
                    <p>{!! $privacy_policy->content !!}
                    </p>
                </section>
            </article>
        </div>
    </div>
</div>
@endsection