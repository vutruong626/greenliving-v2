@extends('frontend.master')
@section('content')
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<div class="top_panel_title top_panel_style_6  title_present breadcrumbs_present scheme_original">
    <div class="top_panel_title_inner top_panel_inner_style_6  title_present_inner breadcrumbs_present_inner">
        <div class="content_wrap">
            <h1 class="page_title" style="font-size: 44px">CÁC CÂU HỎI THƯỜNG GẶP</h1>
        </div>
    </div>
</div>
<div class="top_panel_title top_panel_style_6  title_present breadcrumbs_present scheme_original">
    <div class="page_content_wrap page_paddings_yes">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 ">
                <div class="container append-showdata" style="width: auto;">
                    <h2></h2>
                    @foreach($faq as $item_faq)
                    <div class="dropdown list_faq">
                        <button type="button" data-toggle="dropdown" @if($item_faq->id == $select_id_faq)
                            style="background: #80b500;color: #ffffff;width: 97%;margin-bottom: 10px;text-align:
                            left;" @else style="background: #f0f0f0;color: #3f2803;width: 97%;margin-bottom:
                            10px;text-align: left;" @endif >
                            {{$item_faq->title}}<span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" style="width: 97%;padding: 5px 30px 5px 30px;">
                            <li>
                                <p>{!!$item_faq->content!!}</p>
                            </li>
                        </ul>
                    </div>
                    @endforeach
                </div>
            </div>
            <div class="vl"></div>
            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                <aside id="woocommerce_product_categories-3"
                    class="widget_number_3 widget woocommerce widget_product_categories">
                    <h5 class="widget_title">LOẠI CÂU HỎI</h5>
                    <ul class="product-categories">
                        <div class="sidenav" style="font-weight: 600;">
                            <li class="dropdown-btn">Sản Phẩm
                            </li>
                            <ul id="myBtnContainer">
                                @foreach($sp_faq as $item_catesp_faq)
                                <button class="btn success" onclick="filterSelectionfaq('{{$item_catesp_faq->id}}')">
                                    {{$item_catesp_faq->name}}</button>
                                @endforeach
                            </ul>
                        </div>
                    </ul>
                    <ul class="product-categories">
                        <div class="sidenav" style="font-weight: 600;">
                            <li class="dropdown-btn">Bệnh Học
                            </li>
                            <ul id="myBtnContainer">
                                @foreach($cate_faq as $item_faq_list)
                                <button class="btn success" onclick="filterSelectionfaq('{{$item_faq_list->id}}')">
                                    {{$item_faq_list->name}}</button>
                                @endforeach
                            </ul>
                        </div>
                    </ul>

                </aside>
            </div>
        </div>
    </div>
</div>
<script>
function filterSelectionfaq(c) {
    var x, i;
    x = document.getElementsByClassName("list_faq");
    if (c == "all") c = "";
    for (i = 0; i < x.length; i++) {
        w3RemoveClass(x[i], "show");
        if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
    }
    $.ajax({
        url: '/getfaq/' + c,
        type: "GET",
        dataType: 'html',
        async: false,
        data: {

        },
        success: function(res) {
            data = JSON.parse(res);
            var element = '';
            if (data.length > 0) {
                for (var i = 0; i < data.length; i++) {
                    element += '<div class="dropdown list_faq">' +
                        ' <button type="button" data-toggle="dropdown" style="background: #f0f0f0;color: #3f2803;width: 97%;margin-bottom:10px;text-align: left;">' +
                        data[i].title +
                        '<span class="caret"></span>' +
                        '</button>' +
                        '<ul class="dropdown-menu" style="width: 97%;padding: 5px 30px 5px 30px;">' +
                        '<li>' +
                        '<p>' + data[i].content + '</p>' +
                        '</li>' +
                        '</div>';
                }
                $('.append-showdata').html(element);

            }

        }
    });
}

function w3AddClass(element, name) {
    var i, arr1, arr2;
    arr1 = element.className.split(" ");
    arr2 = name.split(" ");
    for (i = 0; i < arr2.length; i++) {
        if (arr1.indexOf(arr2[i]) == -1) {
            element.className += " " + arr2[i];
        }
    }
}

function w3RemoveClass(element, name) {
    var i, arr1, arr2;
    arr1 = element.className.split(" ");
    arr2 = name.split(" ");
    for (i = 0; i < arr2.length; i++) {
        while (arr1.indexOf(arr2[i]) > -1) {
            arr1.splice(arr1.indexOf(arr2[i]), 1);
        }
    }
    element.className = arr1.join(" ");
}

// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
    btns[i].addEventListener("click", function() {
        var current = document.getElementsByClassName("active");
        current[1].className = current[1].className.replace("active", "");
        this.className += " active";
    });
}
</script>
<!-- <script>
                $(document).ready(function() {
                    $(".flip").click(function() {
                        $(".panel").slideToggle("slow");
                    });
                });
                </script> -->
<style>
.success {
    border-color: #80b500;
    color: #80b500;
    margin: 2px;
}

.success:hover {
    background-color: #80b500;
    color: white;
}

.btn:hover {
    background-color: #80b500;
}

.btn.active {
    background-color: #80b500;
    color: white;
}
</style>
@endsection