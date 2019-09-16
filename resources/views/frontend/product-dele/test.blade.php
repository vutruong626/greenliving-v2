@extends('frontend.master')
@section('content')
<div class="page_content_wrap page_paddings_yes">
    <div class="content_wrap">
        <div class="content">
            <div class="hero-image">
                <div class="hero-text">
                    <h3 style="font-size:30px;    color: #dcdcdc;">HỖ TRỢ GIÚP BỒI BỔ SỨC KHOẺ, TĂNG CƯỜNG SỨC ĐỀ KHÁNG CHO CƠ THỂ</h3>
                    <p>Cao Nấm Trùng Thảo Cordy-X là sản phẩm cao đặc chứa tinh chất Đông Trùng Hạ Thảo và tinh chất Nấm
                        Linh Chi</p>
                    <p>Công nghệ chiết xuất PHÂN TỬ giúp cao đặc hoà tan và thẩm thấu nhanh.</p>
                </div>
            </div>
            <style>
            .hero-image {
                background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
                url("{{asset('images/sregCttX03NnGCRdFfSu.jpg')}}");
                height: auto;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
            }

            .hero-text {
                text-align: center;
                position: relative;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -20%);
                color: white;
                padding: 1px 2px;
            }
            </style>
        </div>
    </div>
</div>
@endsection