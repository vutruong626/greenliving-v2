@extends('frontend.master')


@section('content')

<div class="page_content_wrap page_paddings_no">
    <div class="content_wrap">
        <div class="content">
            <article
                class="itemscope post_item post_item_single post_featured_default post_format_standard post-767 page type-page status-publish hentry"
                itemscope="" itemtype="http://schema.org/Article">
                <section class="post_content" itemprop="articleBody">
                    <div class="sc_reviews alignright"></div>
                    <div data-vc-full-width="true" data-vc-full-width-init="true" data-vc-stretch-content="true"
                        class="vc_row wpb_row vc_row-fluid vc_row-no-padding"
                        style="position: relative; left: -160.5px; box-sizing: border-box; width: 1351px;">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div id="sc_googlemap_1301519261" class="sc_googlemap"
                                        style="width:100%;height:450px;" data-zoom="17" data-style="pleasant">
                                        <iframe
                                            src="https://maps.google.com/maps?t=m&amp;output=embed&amp;iwloc=near&amp;z=17&amp;q=10.719126,106.664384&,15+Cypress+Hills+Street%2C+HO+Chi+Minh"
                                            scrolling="no" marginheight="0" marginwidth="0" frameborder="0"
                                            aria-label="Our Address:"></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="vc_row-full-width"></div>
                    <div class="vc_row wpb_row vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div class="wpb_text_column wpb_content_element ">
                                        <div class="wpb_wrapper">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="vc_row wpb_row vc_row-fluid vc_custom_1439909374065">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div class="vc_empty_space" style="height: 7.5em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
                                    <div id="sc_form_500373089_wrap" class="sc_form_wrap">
                                        <div id="sc_form_500373089" class="sc_form sc_form_style_form_2 aligncenter">
                                            <h6 class="sc_form_subtitle sc_item_subtitle">Bạn còn thắc mắc về sản phẩm
                                            </h6>
                                            <h2 class="sc_form_title sc_item_title"><b>HÃY LIÊN HỆ VỚI CHÚNG TÔI</b>
                                            </h2>
                                            <div class="sc_form_descr sc_item_descr"> CAO NẤM ĐÔNG TRÙNG THẢO - Quà tặng
                                                sức khỏe cho người thân yêu nhất.</div>
                                            <div class="sc_columns columns_wrap">
                                                <div class="sc_form_address column-1_3">
                                                    <div class="sc_form_address_field">
                                                        <h6 class="sc_form_subtitle sc_item_subtitle"
                                                            style="float: left;">Kết nối với chúng tôi</h6>
                                                        <br>
                                                        <p style="display: inline-block;">Để hỗ trợ tốt nhất cho quý
                                                            khách hàng, có thể chia sẻ và tìm hiểu thêm sản phẩm của
                                                            chúng tôi tại các liên kết xã hội dưới đây:</p>
                                                        <div
                                                            class="sc_socials sc_socials_type_icons sc_socials_shape_round sc_socials_size_tiny">
                                                            <div class="sc_socials_item">
                                                                <a href="https://www.youtube.com/channel/UCRUPmvS6bOyWTvrKgkRnaZw" target="_blank">
                                                                    <img src="{{asset('images/youtube.png')}}"
                                                                        alt="">
                                                                </a>
                                                            </div>
                                                            <div class="sc_socials_item">
                                                                <a href="https://www.facebook.com/GreenLivingSongXanh/?ref=br_tf&amp;epa=SEARCH_BOX"
                                                                    target="_blank">
                                                                    <img src="{{asset('images/facebook.png')}}"
                                                                        alt="">
                                                                </a>
                                                            </div>
                                                            <div class="sc_socials_item">
                                                                <a href="https://mhdpharma.com/" target="_blank"
                                                                    style="">
                                                                    <img src="{{asset('images/icon-logo-mhd.png')}}"
                                                                        alt="">
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="sc_form_address_field">
                                                        <h6 class="sc_form_subtitle sc_item_subtitle"
                                                            style="float: left;">Địa chỉ </h6></br>
                                                        <div class="result sc_infobox"></div>
                                                        <span class="sc_form_address_data"
                                                            style="display: inline-block;"><i
                                                                class="fa fa-map-marker Edit-Contact"
                                                                aria-hidden="true"></i> {{$contact->address}}</span>
                                                    </div>
                                                    <div class="sc_form_address_field">
                                                        <h6 class="sc_form_subtitle sc_item_subtitle"
                                                            style="float: left;font-size: 0.823em;">Số điện thoại </h6>
                                                        </br>
                                                        <span class="sc_form_address_data ">
                                                            <a style="text-decoration: none;"
                                                                href="tel:(123) 456-78-90">
                                                                <i class="fas fa-phone-volume Edit-Contact"></i>
                                                                {{$contact->phone}}
                                                            </a>
                                                        </span>
                                                    </div>
                                                    <div class="sc_form_address_field">
                                                        <h6 class="sc_form_subtitle sc_item_subtitle cut-link"
                                                            style="float: left;font-size: 0.823em;">Email </h6></br>
                                                        <span class="sc_form_address_data">
                                                            <a style="text-decoration: none;"
                                                                href="https://www.google.com/gmail/about/#"><i
                                                                    class="fa fa-envelope Edit-Contact"
                                                                    aria-hidden="true"></i> {{$contact->email}}</a>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="sc_form_fields column-2_3">
                                                    <form id="sc_form_500373089" data-formtype="form_2" method="post"
                                                        action="">
                                                        <div class="sc_form_info">
                                                            <div class="sc_form_item sc_form_field label_over">
                                                                <label class="required"
                                                                    for="sc_form_username">Name</label>
                                                                <input id="sc_form_username" type="text" name="username"
                                                                    placeholder="Name *">
                                                            </div>
                                                            <div class="sc_form_item sc_form_field label_over">
                                                                <label class="required"
                                                                    for="sc_form_email">E-mail</label>
                                                                <input id="sc_form_email" type="text" name="email"
                                                                    placeholder="E-mail *">
                                                            </div>
                                                        </div>
                                                        <div class="sc_form_item sc_form_message label_over">
                                                            <label class="required"
                                                                for="sc_form_message">Message</label>
                                                            <textarea id="sc_form_message" name="message"
                                                                placeholder="Message"></textarea>
                                                        </div>
                                                        <div class="sc_form_field sc_form_field_checkbox">
                                                            <input type="checkbox" id="i_agree_privacy_policy_sc_form_1"
                                                                name="i_agree_privacy_policy"
                                                                class="sc_form_privacy_checkbox" value="1">
                                                            <label for="i_agree_privacy_policy_sc_form_1">I agree that
                                                                my submitted data is being collected and stored.</label>
                                                        </div>
                                                        <div class="sc_form_item sc_form_button text-center">
                                                            <button disabled="disabled">Gửi tin nhắn</button>
                                                        </div>
                                                        <div class="result sc_infobox"></div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="vc_empty_space" style="height: 7.5em">
                                        <span class="vc_empty_space_inner"></span>
                                    </div>
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