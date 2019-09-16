@extends('frontend.master')

@section('content')
<div class="top_panel_title top_panel_style_4  title_present breadcrumbs_present scheme_original">
    <div class="top_panel_title_inner top_panel_inner_style_4  title_present_inner breadcrumbs_present_inner">
        <div class="content_wrap">
            <h1 class="page_title">Giỏ hàng của bạn</h1>
            <div class="breadcrumbs">
                <a class="breadcrumbs_item home cut-link" href="/">Trang chủ</a>
                <span class="breadcrumbs_delimiter"></span>
                <span class="breadcrumbs_item current">Giỏ hàng của bạn</span>
            </div>
        </div>
    </div>
</div>
<div class="page_content_wrap page_paddings_yes">
    <div class="content_wrap">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="content">
                <article
                    class="itemscope post_item post_item_single post_featured_default post_format_standard post-5 page type-page status-publish hentry"
                    itemscope="" itemtype="http://schema.org/Article">
                    <section class="post_content" itemprop="articleBody">
                        <div class="woocommerce">
                            <div class="woocommerce-notices-wrapper"></div>
                            <form class="woocommerce-cart-form" action="{{route('cap_nhat_gio_hang')}}" method="post">
                                {{ csrf_field() }}
                                <table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents"
                                    cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th class="product-remove">&nbsp;</th>
                                            <th class="product-thumbnail">Hình ảnh</th>
                                            <th class="product-name">Sản phẩm</th>
                                            <th class="product-price">Giá</th>
                                            <th class="product-quantity">Số lượng</th>
                                            <th class="product-subtotal">Toàn bộ</th>
                                        </tr>
                                    </thead>

                                    <tbody>

                                        @foreach($gd_cordy as $item_gd_cordy )

                                        <tr class="woocommerce-cart-form__cart-item cart_item">
                                            <td class="product-remove">
                                                <a href="{{asset('/cart/remove/'.$item_gd_cordy->id),0}}" class="remove"
                                                    aria-label="Remove this item" data-product_id="2148"
                                                    data-product_sku="">×</a>
                                            </td>
                                            <td class="product-thumbnail">
                                                <a href="#">
                                                    <img width="570" height="703"
                                                        src="{{asset('storage/'.$item_gd_cordy->image)}}"
                                                        class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail"
                                                        alt="" sizes="(max-width: 570px) 100vw, 570px">
                                                </a>
                                            </td>
                                            <td class="product-name" data-title="Product">
                                                <a href="#">{{$item_gd_cordy->seo_title}}</a>
                                            </td>
                                            <td class="product-price" data-title="Price">
                                                <span class="woocommerce-Price-amount amount"
                                                    id="total_price_money_{{$item_gd_cordy->id}}"
                                                    data-price="{{$item_gd_cordy->price}}"
                                                    data-id="{{$item_gd_cordy->id}}">
                                                    {{number_format($item_gd_cordy->price)}} VND</span>
                                            </td>
                                            <td class="product-quantity" data-title="Quantity">
                                                <div class="quantity">
                                                    <label class="screen-reader-text"
                                                        for="quantity_5c999d74bcddd">Quantity</label>
                                                    <input type="number" class="input-text qty text" step="1" `min="0"
                                                        max="" name="quantity" value="{{$item_gd_cordy['qty']}}"
                                                        title="Qty" size="4" pattern="[0-9]*" inputmode="numeric"
                                                        aria-labelledby="Carrot Juice quantity"
                                                        onchange="myFunction({{$item_gd_cordy->id}}, this.value)">

                                                </div>
                                            </td>
                                            <td class="product-subtotal" data-title="Total">
                                                <span class="woocommerce-Price-amount amount"
                                                    id="p_{{$item_gd_cordy->id}}">{{number_format($item_gd_cordy->price * $item_gd_cordy['qty'] )}}
                                                    VNĐ</span>
                                            </td>
                                        </tr>
                                        <input type="hidden" name="id_product[]" id="id_{{$item_gd_cordy->id}}" value="{{$item_gd_cordy->id}}">
                                        <input type="hidden" name="number_product[]" id="num_{{$item_gd_cordy->id}}" value="{{$item_gd_cordy['qty']}}">
                                        
                                        @endforeach
                                        
                                        <tr>
                                            <td colspan="6" class="actions">
                                                <div class="coupon">
                                                    <label for="coupon_code">Coupon:</label>
                                                    @if(count($gd_cordy) > 0)
                                                    <input type="text" name="coupon_code" class="input-text"
                                                        id="coupon_code" value="" placeholder="MÃ ƯU ĐÃI ">
                                                    @endif
                                                </div>
                                                @if(count($gd_cordy) > 0)
                                                <button type="submit" class="button" name="update_cart"
                                                    value="Update_cart" id="demo" disabled> CẬP NHẬT GIỎ HÀNG</button>
                                                @endif
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>
                            <div class="cart-collaterals">
                                @if(count($gd_cordy) > 0)
                                <div class="cart_totals ">
                                    <h2>Đơn hàng của bạn</h2>
                                    <table cellspacing="0" class="shop_table shop_table_responsive">
                                        <tbody>
                                            <tr class="order-total">
                                                <th>Tổng</th>
                                                <td data-title="Total">
                                                    <strong>
                                                        <span class="woocommerce-Price-amount amount">
                                                            <span class="woocommerce-Price-currencySymbol"
                                                                id="p_"></span>{{number_format($cart_detail['weight'],0)}}
                                                            VNĐ</span>
                                                    </strong>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="wc-proceed-to-checkout">
                                        <a href="{{route('thong_tin_khach_hang')}}"
                                            class="checkout-button button alt wc-forward">Tiến hành thanh toán</a>
                                    </div>
                                </div>
                                @endif

                            </div>
                        </div>
                    </section>
                    <section class="related_wrap related_wrap_empty"></section>
                </article>
            </div>
        </div>
        
    </div>
</div>
<script>
function myFunction(id, num) {

    var total_price_money = document.getElementById("total_price_money_" + id)
        .getAttribute('data-price');
    document.getElementById("p_" + id).innerHTML = currencyFormat(
        total_price_money * num);
    var id = document.getElementById("total_price_money_" + id).getAttribute(
        'data-id');
    document.getElementById("id_" + id).value = id;
    
    document.getElementById("num_" + id).value = num;
    document.getElementById("demo").disabled = false;

}

function currencyFormat(num) {
    return num.toFixed(0).replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,') + 'VND'
}

function addtocart(prod_qty) {
    var quantity = parseInt(prod_qty);
    if (quantity == 0) {
        document.getElementById("addtocartButton").disabled = true;
    }

}
</script>
@endsection