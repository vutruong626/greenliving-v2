@extends('frontend.master')
@section('content')
<div class="top_panel_title top_panel_style_6  title_present breadcrumbs_present scheme_original">
    <div class="top_panel_title_inner top_panel_inner_style_6  title_present_inner breadcrumbs_present_inner">
        <div class="content_wrap">
            <h1 class="page_title">Thông tin cần quan tâm </h1>
            <div class="breadcrumbs">
                <a class="breadcrumbs_item home cut-link" href="">Trang chủ</a>
                <span class="breadcrumbs_delimiter"></span>
                <span class="breadcrumbs_item current">Thông tin cần quan tâm </span>
            </div>
        </div>
    </div>
</div>
<div class="page_content_wrap page_paddings_yes">
    <div class="content_wrap">
        <div class="content">
            <div id="myBtnContainer" class="btn21center">
                <button class="btn active" onclick="filterSelection(0)">Tất cả</button>
                @foreach($category as $item_category)
                <button class="btn" onclick="filterSelection('{{$item_category->id}}')">
                    {{$item_category->name}}</button>
                @endforeach

                <!-- <button class="btn" onclick="filterSelection('cars')"> Cars</button>
                <button class="btn" onclick="filterSelection('people')"> People</button> -->
            </div>
            <div class="row append-showdata">
                @foreach($news as $item_news)
                <div class="column zoom">
                    <div class="card">
                        <a href="{{route('detail_news',$item_news->slug)}}" style="text-decoration: none;">
                            <img src="{{asset('storage/'.$item_news->image)}}" alt="{{$item_news->id}}"
                                style="width:100%"></a>
                        <div class="container">
                            <a href="{{route('detail_news',$item_news->slug)}}" style="text-decoration: none;">
                                <h6 style="margin-top: 20px;font-size: 16px;font-weight: bold;">
                                    {{$item_news->name}}</h6>
                            </a>
                            <p class="title">{{$item_news->created_at}}</p>
                            <p style="margin-top: 20px;overflow-y: hidden;height: 86px;">{{$item_news->title}}</p>
                        </div>
                    </div>
                </div>

                @endforeach
            </div>
            <div class="bt1121" style="text-align: center;">{{ $news->links() }}</div>

            <!-- <section class="related_wrap related_wrap_empty"></section> -->

        </div>
    </div>
</div>
<script>
// filterSelection("all")

function filterSelection(c) {
    var x, i;
    x = document.getElementsByClassName("column");
    if (c) {
      $('.bt1121').hide();
    } else {
      $('.bt1121').show();
    }
    for (i = 0; i < x.length; i++) {
        w3RemoveClass(x[i], "show");
        if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
    }
    $.ajax({
        url: '/getProduct/' + c,
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
                    var slug = data[i].slug;
                    element += '<div class="column zoom">' +
                        '<div class="card">' +
                            '<a href="{{ route('detail_news','') }}/'+ slug +'">' +
                                '<img src="storage/' + data[i].image + '" alt="Mountains" style="width:100%">' +
                            '</a>' +
                            '<div class="container">' +
                                '<a href="{{ route('detail_news','') }}/'+ slug +'">' +
                                    '<h6 style="margin-top: 20px;font-size: 16px;font-weight: bold;">' + data[i].name + '</h6>' +
                                '</a>' +
                                '<p class="title">'+ data[i].created_at +'</p>'+
                                '<p style="margin-top: 20px;overflow-y: hidden;height: 86px;">' + data[i].title +'</p>'+
                            '</div>' +
                        '</div></div>';
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
<style>
.column {
    float: left;
    width: 24.3%;
    margin-bottom: 16px;
    padding: 0 8px;
}

@media screen and (max-width: 650px) {
    .column {
        width: 100%;
        display: block;
    }
}
/*
.card {
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
} */

.container {
    width: 100%;
    padding: 0 16px;
}

.title {
    color: grey;
}
.button:hover {
    background-color: #555;
}

/* The "show" class is added to the filtered elements */
.show {
    display: block;
}

.card {
      border: 1px solid rgb(255, 255, 255);
}
/* Style the buttons */
.btn {
       /* border: none; */
       outline: none;
    padding: 12px 16px;
    background-color: white;
    cursor: pointer;
    border-radius: 50px;
    border: 0px solid;
    padding: 7px;
}

.btn:hover {
    background-color: #80b500;
}

.btn.active {
    background-color: #80b500;
    color: white;
}
#myBtnContainer{
    text-align: center;
    padding: 0px 0px 32px
}
</style>

@endsection
