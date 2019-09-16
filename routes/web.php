<?php

/*
|--------------------------------------------------------------------------
| Web greenliving.vip
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::prefix('/')->group(function () {
    Route::get('/','Frontend\\PagesController@getindex')->name('index');
    Route::get('/gioi-thieu','Frontend\\PagesController@getAboutUs')->name('about'); 
    // san Pham
    Route::get('/san-pham','Frontend\\PagesController@getListProduct')->name('product');
    // // Route::get('/getCategoryProduct/{show_data_product}','Frontend\\PagesController@getProductAjax')->name('ajax_product');

    // // Route::get('/chi-tiet-san-pham/{slug}','Frontend\\PagesController@getDetailProduct')->name('detail_product');
    // Route::get('/gio-hang','Frontend\\PagesController@getCart')->name('you_cart');
    // Route::post('/gio-hang-update','Frontend\\PagesController@postSessionCart')->name('update_giohang');
    // Route::get('/thanh-toan','Frontend\\PagesController@getClientInfo')->name('client_info');
    
    // Route::post('/thanh-toan','Frontend\\PagesController@postClientInfo')->name('client_info');
    // ajax get data city
    Route::get('/getRequired/{city}','Frontend\\PagesController@getRequired')->name('required');

    // Route::get('/thanh-toan-thanh-cong','Frontend\\PagesController@getSuccess')->name('success');
    // tin tuc va su kien
    Route::get('/thong-tin-can-quan-tam.html','Frontend\\PagesController@getNews')->name('news');
    // ajax get data product
    Route::get('/getProduct/{show_data}','Frontend\\PagesController@getProduct')->name('required_product');

    Route::get('/thong-tin-can-quan-tam/{slug}','Frontend\\PagesController@getDetailNews')->name('detail_news');

    // faq
    Route::get('/faq.html','Frontend\\PagesController@getFaq')->name('faq');
    Route::get('/getfaq/{show_data_faq}','Frontend\\PagesController@getCategoryFaq')->name('required_faq');
    // lien he
    Route::get('/lien-he.html','Frontend\\PagesController@getContact')->name('contact');
    Route::post('/lien-he.html','Frontend\\PagesController@postMessages');
    // tim kiem
    Route::get('/tim-kiem','Frontend\\PagesController@getSearch')->name('search');
    // chinh sach bao mat
    // Route::get('/{slug}.html','Frontend\\PagesController@getPrivacy_Policy')->name('privacy_policy');

    // IMPORTEXCEL
    Route::get('/import-excel.html','Frontend\\ImportCtityController@getImportExcel')->name('excel');

    // create san pham moi
    Route::get('/san-pham.html','Frontend\\SanphamController@ShowSanPham')->name('showsanpham');
    Route::get('/getCategoryProduct/{show_data_sanphams}','Frontend\\SanphamController@getProductAjax')->name('ajax_product');
    Route::get('/chi-tiet-san-pham/{slug}','Frontend\\SanphamController@ChiTietSanPham')->name('chitietsanpham');
    Route::get('/thanh-toan-san-pham','Frontend\\SanphamController@ShowThanhToanSanPham')->name('show_thanhtoan_sanpham');

    Route::post('/cap-nhat-gio-hang','Frontend\\SanphamController@CapNhatGioHang')->name('cap_nhat_gio_hang');


    Route::get('/thong-tin-khach-hang','Frontend\\SanphamController@getThongTinKhachHang')->name('thong_tin_khach_hang');
    Route::post('/thong-tin-khach-hang','Frontend\\SanphamController@postThongTinKhachHang')->name('thong_tin_khach_hang');
    Route::get('/thanh-toan-thanh-cong','Frontend\\SanphamController@getSuccess')->name('success');
    // test
    Route::get('/test','Frontend\\PagesController@test')->name('test');
});
Route::prefix('/cart')->group( function () {
    Route::get('/{act}/{idsp}/{qty?}','Frontend\\SanphamController@handleCart')->name('cart');
    // Route::post('/delivery', 'LaptopController@getDelivery');

  });
//   Route::prefix('/cart')->group( function () {
//     Route::get('/{act}/{idsp}/{qty?}','Frontend\\PagesController@handleCart')->name('cart');
//     // Route::post('/delivery', 'LaptopController@getDelivery');

//   });
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

