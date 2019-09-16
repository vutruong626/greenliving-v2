@extends('frontend.master')
@section('content')

<div class="row">
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
        <label class="label">thanh pho</label>
        <select name="city" id="city" class="form-control" required="required" >
            @foreach($province as $item_province)
            <option value="{{$item_province->id}}">{{$item_province->name}}</option>
            @endforeach
        </select>
    </div>

    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 append-district" >
        <label class="label">huyen</label>
        <select name="district" id="district" class="form-control" required="required">
            
        </select>
    </div>

    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 append-area">
        <label class="label">phuong</label>
        <select name="area" id="area" class="form-control" required="required">
            <option value="">chon xa phuong</option>
        </select>
    </div>
</div>

<div class="input-group">
    <input type="text">
</div>

<button type="button" class="btn btn-sm btn-default" id="getRequired" style="text-align: center;margin: 30px 755px;">button</button>
<div id="getRequiredDATA" style="    color: white;background: red;    text-align: center;"></div>
<script>
        $(document).ready(function () {
            $("#city").on('change', function(){
                var cityId = this.value;
                $.ajax({
                    url:"/getRequired/" + cityId,
                    type: "GET",
                    async: false,
                    data: {

                    },
                    success: function (data) {
                        var element = '<label class="label">huyen</label>';
                            element += '<select name="district" id="district" class="form-control" required="required">';
                        for(var i = 0; i < data.length; i++) {
                            element += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
                        }
                        element += '</select>';
                        $('.append-district').html(element);
                        
                    }
                })
            });
        })
        $(document).ready(function () {
            $("#district").on('change', function(){
                var districtId = this.value;
                $.ajax({
                    url:"/getRequireddistrict/1",
                    type: "GET",
                    async: false,
                    data: {
                    },
                    success: function (data) {
                        var element = '<label class="label">phuong</label>';
                            element += ' <select name="area" id="area" class="form-control" required="required">';
                        for(var i = 0; i < data.length; i++) {
                            element += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
                        }
                        element += '</select>';
                        $('.append-area').html(element);
                        console.log(data);
                    }
                })
            });
        })
        
</script>

@endsection