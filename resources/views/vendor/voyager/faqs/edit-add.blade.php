@extends('voyager::master')

@section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).'
'.$dataType->display_name_singular)

@section('css')
<style>
.panel .mce-panel {
    border-left-color: #fff;
    border-right-color: #fff;
}

.panel .mce-toolbar,
.panel .mce-statusbar {
    padding-left: 20px;
}

.panel .mce-edit-area,
.panel .mce-edit-area iframe,
.panel .mce-edit-area iframe html {
    padding: 0 10px;
    min-height: 350px;
}

.mce-content-body {
    color: #555;
    font-size: 14px;
}

.panel.is-fullscreen .mce-statusbar {
    position: absolute;
    bottom: 0;
    width: 100%;
    z-index: 200000;
}

.panel.is-fullscreen .mce-tinymce {
    height: 100%;
}

.panel.is-fullscreen .mce-edit-area,
.panel.is-fullscreen .mce-edit-area iframe,
.panel.is-fullscreen .mce-edit-area iframe html {
    height: 100%;
    position: absolute;
    width: 99%;
    overflow-y: scroll;
    overflow-x: hidden;
    min-height: 100%;
}
</style>
@stop

@section('page_header')
<h1 class="page-title">
    <i class="{{ $dataType->icon }}"></i>
    {{ __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->display_name_singular }}
</h1>
@include('voyager::multilingual.language-selector')
@stop

@section('content')
<div class="page-content container-fluid">
    <form class="form-edit-add" role="form"
        action="@if(isset($dataTypeContent->id)){{ route('voyager.faqs.update', $dataTypeContent->id) }}@else{{ route('voyager.faqs.store') }}@endif"
        method="POST" enctype="multipart/form-data">
        <!-- PUT Method if we are editing -->
        @if(isset($dataTypeContent->id))
        {{ method_field("PUT") }}
        @endif
        {{ csrf_field() }}

        <div class="row">
            <div class="col-md-8">
                <div class="panel">
                    @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                    @endif

                    <div class="panel-heading">
                        <h3 class="panel-title">
                            Tên bác sĩ
                        </h3>
                        <div class="panel-actions">
                            <a class="panel-action voyager-angle-down" data-toggle="panel-collapse"
                                aria-hidden="true"></a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <input type="text" class="form-control" id="name" name="name"
                            placeholder="{{ __('voyager::generic.name') }}"
                            value="@if(isset($dataTypeContent->name)){{ $dataTypeContent->name }}@endif">
                    </div>
                    <div class="form-group">
                        <label for="category_faq_id">Lọai bài viết </label>
                        <select class="form-control" name="category_faq_id">
                            @foreach(App\Models\CategoryFaq::all() as $category_faq)
                            <option value="{{ $category_faq->id }}" @if(isset($dataTypeContent->category_faq_id) &&
                                $dataTypeContent->category_faq_id == $category_faq->id)
                                selected="selected"@endif>{{ $category_faq->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            Học vấn
                        </h3>
                        <div class="panel-actions">
                            <a class="panel-action voyager-angle-down" data-toggle="panel-collapse"
                                aria-hidden="true"></a>
                        </div>
                    </div>

                    <div class="panel-body">
                        <input type="text" class="form-control" id="university" name="university" placeholder="Học vấn "
                            value="@if(isset($dataTypeContent->university)){{ $dataTypeContent->university }}@endif">
                    </div>
                    
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            Chuyên Ngành
                        </h3>
                        <div class="panel-actions">
                            <a class="panel-action voyager-angle-down" data-toggle="panel-collapse"
                                aria-hidden="true"></a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <input type="text" class="form-control" id="research" name="research"
                            placeholder="Chuyên Ngành "
                            value="@if(isset($dataTypeContent->research)){{ $dataTypeContent->research }}@endif">
                    </div>

                </div>
                <!-- ### TITLE ### -->
                <div class="panel">
                    @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                    @endif

                    <div class="panel-heading">
                        <h3 class="panel-title">
                            Câu hỏi
                            <span class="panel-desc"></span>
                        </h3>
                        <div class="panel-actions">
                            <a class="panel-action voyager-angle-down" data-toggle="panel-collapse"
                                aria-hidden="true"></a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <input type="text" class="form-control" id="title" name="title" placeholder="Câu hỏi"
                            value="@if(isset($dataTypeContent->title)){{ $dataTypeContent->title }}@endif">
                    </div>
                </div>

                <!-- ### CONTENT ### -->
                <div class="panel">
                    <div class="panel-heading">
                        <h3 class="panel-title">Trả lời của bác sĩ </h3>
                        <div class="panel-actions">
                            <a class="panel-action voyager-resize-full" data-toggle="panel-fullscreen"
                                aria-hidden="true"></a>
                        </div>
                    </div>

                    <div class="panel-body">

                        @php
                        $dataTypeRows = $dataType->{(isset($dataTypeContent->id) ? 'editRows' : 'addRows' )};
                        $row = $dataTypeRows->where('field', 'content')->first();
                        @endphp
                        {!! app('voyager')->formField($row, $dataType, $dataTypeContent) !!}
                    </div>
                </div><!-- .panel -->
                <!-- ### CONTENT ### -->
                <!-- ### EXCERPT ### -->


            </div>
            <div class="col-md-4">

                <!-- ### IMAGE ### -->
                <div class="panel panel-bordered panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="icon wb-image"></i> {{ __('voyager::post.image') }}</h3>
                        <div class="panel-actions">
                            <a class="panel-action voyager-angle-down" data-toggle="panel-collapse"
                                aria-hidden="true"></a>
                        </div>
                    </div>
                    <div class="panel-body">
                        @if(isset($dataTypeContent->images))
                        <img src="{{ filter_var($dataTypeContent->image, FILTER_VALIDATE_URL) ? $dataTypeContent->image : Voyager::image( $dataTypeContent->image ) }}"
                            style="width:100%" />
                        @endif
                        <input type="file" name="image">
                    </div>
                </div>

                <!-- ### SEO CONTENT ### -->

            </div>
        </div>

        <button type="submit" class="btn btn-primary pull-right">
            @if(isset($dataTypeContent->id)){{ __('voyager::post.update') }}@else <i class="icon wb-plus-circle"></i>
            {{ __('voyager::post.new') }} @endif
        </button>
    </form>

    <iframe id="form_target" name="form_target" style="display:none"></iframe>
    <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post"
        enctype="multipart/form-data" style="width:0px;height:0;overflow:hidden">
        {{ csrf_field() }}
        <input name="image" id="upload_file" type="file" onchange="$('#my_form').submit();this.value='';">
        <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
    </form>
</div>
@stop

@section('javascript')
<script>
$('document').ready(function() {
    $('#slug').slugify();

    @if($isModelTranslatable)
    $('.side-body').multilingual({
        "editing": true
    });
    @endif
});
</script>
@stop