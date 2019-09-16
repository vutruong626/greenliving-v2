<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Client;
use App\Models\Contact;
use App\Models\Content;
use App\Models\DescriptionPrdocuct;
use App\Models\DetailOrder;
use App\Models\District;
use App\Models\Faq;
use App\Models\Logo;
use App\Models\Order;
use App\Models\Product;
use App\Models\Province;
use App\Models\Slider;
use App\Models\Ward;
use App\Models\Category;
use App\Models\CategoryFaq;
use App\Services\NganluongServices;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Response;
// nganluong
use League\Flysystem\Config;
use Mail;
use Symfony\Component\Routing\Route;
use TongVanDuc\NganLuong;
use Validator;
use App\Models\Sanpham;
// nganluong
class PagesController extends Controller
{
    /**
     * getindex
     * Display a listing of the trang chu.
     *
     * @return \Illuminate\Http\Response
     */
    public function getindex(Request $request, $idsp, $qty = 0)
    {
        $param = $request->all();
        $slug = null;

        foreach ($param as $key => $value) {
            $slug = $key;
            break;
        }
        $meta_description = Product::first();
        $logos = Logo::orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $sliders = Slider::orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $gioithieu = Product::where('category_id', 1)->skip(0)->take(2)->get();
        $gd_cordy_index = Sanpham::orderBy('id', 'DESC')->get();
        $category = Category::where('parent_id', 3)->get();
        $categorychild = [3];
        foreach($category as $item_category){
            array_push($categorychild, $item_category->id);
        }
        $news = Product::whereIn('category_id', $categorychild)->orderBy('id', 'DESC')->paginate(12);
        $clients = Client::orderBy('id', 'DESC')->get();
        $contents = Content::orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $contact_munu = Contact::orderBy('id', 'DESC')->get();
        $contact = Contact::orderBy('id', 'DESC')->first();
        $faq = Faq::orderBy('id', 'DESC')->skip(0)->take(4)->get();
        // $privacy_policy = Product::where('category_id', 6)->orderBy('id', 'DESC')->skip(0)->take(2)->get();
        $category_faq = CategoryFaq::whereIn('id',[1,2])->orderBy('id', 'DESC')->get();

        $data = session()->get('cart');
        // print_r($data);die;
        $total = 0;
        $idsp = [];
        $gd_cordy = [];
        $cart_detail = [];
        if ($qty > 0) {
            $data[$id] = $qty;
        }
        if (count($data) > 0) {
            //print_r($data);die;
            foreach ($data as $key => $value) {
                $cordie = Sanpham::select('id', 'seo_title', 'image', 'price')
                    ->where('id', $key)
                    ->first();
                $total += $value;
                @$cart_detail['weight'] += $value * $cordie->price;
                $cordie['qty'] = $value;
                array_push($gd_cordy, $cordie);
            }
        } else {
            @$cart_detail['weight'] = 0;
        }
        //print_r($gd_cordy);die;
        return view('frontend.pages.index', compact('category_faq','category_faq','privacy_policy', 'meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'faq', 'contact', 'logos', 'sliders', 'gioithieu', 'gd_cordy_index', 'news', 'clients', 'contents'));
    }
    /**
     * getindex
     * Display a listing of the Chính sách bảo mật.
     *
     * @return \Illuminate\Http\Response
     */
    // public function getPrivacy_Policy(Request $request, $slug, $qty = 0)
    // {
    //     $meta_description = Product::select('meta_description', 'meta_keywords', 'seo_title')->first();
    //     $logos = Logo::select('image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
    //     $sliders = Slider::select('title', 'image', 'url')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
    //     $gioithieu = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->skip(0)->take(2)->get();
    //     $gd_cordy_index = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 2)->orderBy('id', 'DESC')->get();
    //     $news = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function', 'created_at')->where('category_id', 3)->orderBy('id', 'DESC')->get();
    //     $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
    //     $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
    //     $contact_munu = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->get();
    //     $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
    //     $faq = Faq::select('id', 'name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
    //     $privacy_policy = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function', 'created_at', 'meta_description', 'meta_keywords', 'seo_title')->where('slug', $slug)->first();
    //     // dd($privacy_policy);
    //     $data = session()->get('cart');
    //     // print_r($data);die;
    //     $total = 0;
    //     $idsp = [];
    //     $gd_cordy = [];
    //     $cart_detail = [];
    //     if ($qty > 0) {
    //         $data[$id] = $qty;
    //     }
    //     if (count($data) > 0) {
    //         //print_r($data);die;
    //         foreach ($data as $key => $value) {
    //             $cordie = Product::select('id', 'name', 'image', 'price')
    //                 ->where('id', $key)
    //                 ->first();
    //             $total += $value;
    //             @$cart_detail['weight'] += $value * $cordie->price;
    //             $cordie['qty'] = $value;
    //             array_push($gd_cordy, $cordie);
    //         }
    //     } else {
    //         @$cart_detail['weight'] = 0;
    //     }
    //     return view('frontend.pages.privacy_policy', compact('category_faq','privacy_policy', 'meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'faq', 'contact', 'logos', 'sliders', 'gioithieu', 'gd_cordy_index', 'news', 'clients', 'contents'));
    // }
    /**
     * getindex
     * Display a listing of the Gioi Thieu.
     *
     * @return \Illuminate\Http\Response
     */
    public function getAboutUs(Request $request, $idsp, $qty = 0)
    {
        $meta_description = Product::select('meta_description', 'meta_keywords', 'seo_title')->orderBy('id', 'DESC')->first();
        $param = $request->all();
        $id = null;

        foreach ($param as $key => $value) {
            $id = $key;
            break;
        }
        // print_r($id);die;
        $contact_munu = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->get();
        $logos = Logo::select('image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $sliders = Slider::select('title', 'image')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        // if($id){
        //     $gioithieu = Product::where('id',$id)->first();

        // }else{
        //     $gioithieu = Product::where('category_id',1)->first();
        // }
        $gioithieu = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->first();
        $gd_cordy = Sanpham::orderBy('id', 'DESC')->get();
        $news = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 3)->orderBy('id', 'DESC')->get();
        $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
        $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
        $faq = Faq::select('id', 'name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        // getindex
        // $about_us = Product::select('name','title','content','image','slug','price','save_title','function')->where('slug',$slug)->first();
        $description_prdocuct = DescriptionPrdocuct::select('image', 'title', 'meta_description_cty', 'meta_description_cn', 'meta_description_sp')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $data = session()->get('cart');
        $total = 0;
        $idsp = [];
        $gd_cordy = [];
        $cart_detail = [];
        if ($qty > 0) {
            $data[$id] = $qty;
        }
        if (count($data) > 0) {
            foreach ($data as $key => $value) {
                $cordie = Sanpham::select('id', 'seo_title', 'image', 'price')
                    ->where('id', $key)
                    ->first();
                $total += $value;
                @$cart_detail['weight'] += $value * $cordie->price;
                $cordie['qty'] = $value;
                array_push($gd_cordy, $cordie);
            }
        } else {
            @$cart_detail['weight'] = 0;
        }
        return view('frontend.pages.about_us', compact('category_faq','meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'description_prdocuct', 'faq', 'contact', 'logos', 'sliders', 'gioithieu', 'gd_cordy', 'news', 'clients', 'contents', 'about_us'));
    }

    /**
     * getindex
     * Display a listing of the SAn Pham.
     *
     * @return \Illuminate\Http\Response
     */
    // public function getListProduct(Request $request, $idsp, $qty = 0)
    // {
    //     $param = $request->all();
    //     $slug = null;

    //     foreach ($param as $key => $value) {
    //         $slug = $key;
    //         break;
    //     }
    //     $contact_munu = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->get();
    //     $logos = Logo::select('image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
    //     $sliders = Slider::select('title', 'image')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
    //     $gioithieu = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->orderBy('id', 'DESC')->skip(0)->take(2)->first();
    //     $news = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 3)->orderBy('id', 'DESC')->get();
    //     $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
    //     $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
    //     $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
    //     $faq = Faq::select('id', 'name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
    //     $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
    //     $faq = Faq::select('id', 'name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
    //     // getindex
    //     // SHOW SAN PHAM
    //     $gd_cordy_list =                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            Product::where('category_id', 4)->orderBy('id', 'DESC')->get();
    //     // dd($gd_cordy_list);
    //     // show loai san pham
    //     $categories = Category::where('parent_id', 4)->orderBy('id', 'DESC')->get();
    //     foreach($categories as $category){
    //         // tao bien ded show ra
    //         $tmp = Category::where('parent_id', $category->id)->get();
    //         // lay ra ban con
    //         $category['child'] = $tmp;
    //     }
    //     // dd($categories);
    //     $data = session()->get('cart');

    //     $total = 0;
    //     $ids = [];
    //     $gd_cordy = [];
    //     $cart_detail = [];
    //     if ($qty > 0) {
    //         $data[$id] = $qty;
    //     }
    //     if (count($data) > 0) {
    //         foreach ($data as $key => $value) {
    //             $cordie = Product::select('id', 'name', 'image', 'price')
    //                 ->where('id', $key)
    //                 ->first();
    //             $total += $value;
    //             @$cart_detail['weight'] += $value * $cordie->price;
    //             $cordie['qty'] = $value;
    //             array_push($gd_cordy, $cordie);
    //         }
    //     } else {
    //         @$cart_detail['weight'] = 0;
    //     }

    //     return view('frontend.product.list_product', compact('categories','category_faq','meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'faq', 'contact', 'data', 'gd_cordy_list', 'total', 'logos', 'sliders', 'gioithieu', 'gd_cordy', 'news', 'clients', 'contents', 'about_us'));
    // }
    /**
     * show produc ajax
     * Display a listing of the ajax
     *
     * @return \Illuminate\Http\Response
     */
    // public function getProductAjax(Request $request,$show_data_product){
    //     return $show_data_product;
    //     //  return 123456;
    //     if ($show_data_product > 0) {
    //         return Product::where('category_id', $show_data_product)->with('categories')->get();
    //     }
    // }
    /**
     * getindex
     * Display a listing of the chi tiet san pham.
     *
     * @return \Illuminate\Http\Response
     */
    // public function getDetailProduct(Request $request, $slug, $qty = 0)
    // {
    //     $meta_description = Product::select('meta_description', 'meta_keywords', 'seo_title')->orderBy('id', 'DESC')->first();
    //     $contact_munu = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->get();
    //     $logos = Logo::select('image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
    //     $sliders = Slider::select('title', 'image')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
    //     $gioithieu = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->orderBy('id', 'DESC')->skip(0)->take(2)->first();
    //     $news = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 3)->orderBy('id', 'DESC')->get();
    //     $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
    //     $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
    //     $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
    //     $faq = Faq::select('id', 'name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
    //     // getindex
    //     $gd_cordy_detail = Product::where('slug', $slug)->first();

    //     $data = session()->get('cart');
    //     $total = 0;
    //     $idsp = [];
    //     $gd_cordy = [];
    //     $cart_detail = [];
    //     if ($qty > 0) {
    //         $data[$id] = $qty;
    //     }
    //     if (count($data) > 0) {
    //         foreach ($data as $key => $value) {
    //             $cordie = Product::select('id', 'name', 'image', 'price')
    //                 ->where('id', $key)
    //                 ->first();
    //             $total += $value;
    //             @$cart_detail['weight'] += $value * $cordie->price;
    //             $cordie['qty'] = $value;
    //             array_push($gd_cordy, $cordie);
    //         }
    //     } else {
    //         @$cart_detail['weight'] = 0;
    //     }

    //     return view('frontend.product.detail_product', compact('category_faq','meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'faq', 'contact', 'logos', 'data', 'cart_detail', 'total', 'sliders', 'gioithieu', 'gd_cordy_detail', 'news', 'clients', 'contents', 'about_us'));
    // }

    // public function getCart(Request $request, $idsp, $qty = 0)
    // {
    //     $meta_description = Product::select('meta_description', 'meta_keywords', 'seo_title')->orderBy('id', 'DESC')->first();
    //     $contact_munu = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->get();
    //     $logos = Logo::select('image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
    //     $sliders = Slider::select('title', 'image')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
    //     $gioithieu = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->orderBy('id', 'DESC')->skip(0)->take(2)->first();
    //     $news = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 3)->orderBy('id', 'DESC')->get();
    //     $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
    //     $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
    //     $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
    //     $faq = Faq::select('id', 'name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
    //     // getindex
    //     $gd_cordy = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->first();

    //     $data = session()->get('cart');
    //     $total = 0;
    //     $ids = [];
    //     $gd_cordy = [];
    //     $cart_detail = [];
    //     if ($qty > 0) {
    //         $data[$id] = $qty;
    //     }
    //     if (count($data) > 0) {
    //         foreach ($data as $key => $value) {
    //             $cordie = Product::select('id', 'name', 'image', 'price')
    //                 ->where('id', $key)
    //                 ->first();
    //             $total += $value;
    //             @$cart_detail['weight'] += $value * $cordie->price;
    //             $cordie['qty'] = $value;
    //             array_push($gd_cordy, $cordie);
    //         }
    //     } else {
    //         @$cart_detail['weight'] = 0;
    //     }
    //     return view('frontend.product.cart', compact('category_faq','meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'faq', 'contact', 'logos', 'data', 'cart_detail', 'total', 'sliders', 'gioithieu', 'gd_cordy', 'news', 'clients', 'contents', 'about_us'));
    // }
    // public function postSessionCart(Request $request)
    // {

    //     $carts = session()->get('cart');
    //     // print_r($carts);die;
    //     $params = $request->all();
    //     $id_products = $params['id_product'];
    //     $num_products = $params['number_product'];
    //     for ($i = 0; $i < count($id_products); $i++) {
    //         $carts[$id_products[$i]] = $num_products[$i];
    //     }
    //     session()->put('cart', $carts);
    //     return redirect()->back()->with('msg', 'The Message');
    // }
    // public function handleCart($act, $idsp, $qty = 0)
    // {
    //     $data = session()->get('cart');
    //     if ($act == 'add') {
    //         @$data[$idsp]++;
    //     }
    //     if ($act == 'remove') {
    //         unset($data[$idsp]);
    //     }
    //     if ($qty > 0) {
    //         $data[$idsp] = $qty;
    //     }
    //     $cart_detail = [];
    //     foreach ($data as $key => $value) {
    //         $product = DB::table('products')
    //             ->select('name', 'price', 'image')
    //             ->where('id', $key)->first();

    //         $product->qty = $value;
    //         $cart_detail[$key] = $product;
    //         @$cart_detail['total'] += $value * $product->price;
    //     }
    //     session()->put('cart', $data);
    //     session()->put('cart_detail', $cart_detail);
    //     return redirect()->route('you_cart');
    // }

    // public function getClientInfo(Request $request, $idsp, $qty = 0)
    // {
    //     $meta_description = Product::select('meta_description', 'meta_keywords', 'seo_title')->orderBy('id', 'DESC')->first();
    //     $contact_munu = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->get();
    //     $logos = Logo::select('image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
    //     $sliders = Slider::select('title', 'image')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
    //     $gioithieu = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->orderBy('id', 'DESC')->skip(0)->take(2)->first();
    //     $gd_cordy = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 2)->orderBy('id', 'DESC')->get();
    //     $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
    //     $faq = Faq::select('id', 'name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
    //     $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
    //     $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
    //     // getindex
    //     $news = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 3)->orderBy('id', 'DESC')->get();

    //     $province = Province::select('id', 'name', 'code')->get();
    //     $district = District::select('id', 'name', 'province_id', 'code')->get();
    //     // print_r($district[2]->province_id);die;
    //     $ward = Ward::select('id', 'name', 'district_id', 'code')->get();

    //     $data = session()->get('cart');
    //     $total = 0;
    //     $ids = [];
    //     $gd_cordy_pay = [];
    //     $cart_detail = [];
    //     if ($qty > 0) {
    //         $data[$id] = $qty;
    //     }
    //     if (count($data) > 0) {
    //         foreach ($data as $key => $value) {
    //             $cordie = Product::select('id', 'name', 'image', 'price')
    //                 ->where('id', $key)
    //                 ->first();
    //             $total += $value;
    //             @$cart_detail['weight'] += $value * $cordie->price;
    //             $cordie['qty'] = $value;
    //             array_push($gd_cordy_pay, $cordie);
    //         }
    //     } else {
    //         @$cart_detail['weight'] = 0;
    //     }
    //     return view('frontend.product.client_info', compact('category_faq','ward', 'district', 'province', 'meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'faq', 'contact', 'data', 'gd_cordy_pay', 'total', 'logos', 'sliders', 'gioithieu', 'gd_cordy', 'news', 'clients', 'contents', 'about_us'));
    // }

    // public function postClientInfo(Request $request, $idsp, $qty = 0)
    // {
    //     $rules = [
    //         'name' => 'required',
    //         'email' => 'required|email',
    //         'phone' => 'required',
    //         'address' => 'required',
    //         'area' => 'required',
    //         'city' => 'required',
    //         'district' => 'required',
    //     ];
    //     $messages = [
    //         'name.required' => 'Vui lòng nhập họ tên',
    //         'city.required' => 'Vui lòng chọn Tỉnh/TP',
    //         'address.required' => 'Vui lòng chọn địa chỉ   ',
    //         'district.required' => 'Vui lòng chọn Quận/huyện',
    //         'phone.required' => 'Vui lòng nhập số điện thoại',
    //         'area.required' => 'Vui nhập lòng Phường Xã',
    //         'email.required' => 'Vui lòng nhập email',
    //         'email.email' => 'Vui lòng nhập đúng định dạng email',
    //     ];

    //     $validator = Validator::make($request->all(), $rules, $messages);
    //     if ($validator->fails()) {
    //         return redirect()->back()->withErrors($validator)->withInput();
    //     } else {
    //         $data_dh = new Order();
    //         $data_dh->name = $request->name;
    //         $data_dh->phone = $request->phone;
    //         $data_dh->address = $request->address;
    //         $data_dh->email = trim($request->email);
    //         $data_dh->city = $request->city;
    //         $data_dh->district = $request->district;
    //         $data_dh->area = $request->area;
    //         $data_dh->note = $request->note;
    //     }

    //     if ($data_dh->save()) {
    //         $data = session()->get('cart');
    //         // update chuyen qua mail
    //         $cart_detail = [];
    //         $total = 0;
    //         foreach ($data as $key => $value) {
    //             $cordie = Product::select('id', 'name', 'image', 'price')
    //                 ->where('id', $key)
    //                 ->first();
    //             $cordie['qty'] = $value;
    //             $total += $value * $cordie->price; // update chuyen qua mail
    //             array_push($cart_detail, $cordie); // update chuyen qua mail
    //             $ctdonhang = new DetailOrder();
    //             $ctdonhang->amount = $value;
    //             $ctdonhang->price = $cordie->price;
    //             $ctdonhang->id_products = $cordie->id;
    //             $ctdonhang->id_orders = $data_dh->id;
    //             $ctdonhang->save();
    //         }
    //         $cart_detail['total'] = $total; // update chuyen qua mail

    //     }
    //     $provinces = Province::select('id', 'name')
    //         ->where('id', $request->city)
    //         ->first();
    //     $area['city'] = trim($provinces->name);
    //     // print_r($area['city']);die;
    //     $district = District::select('id', 'name')
    //         ->where('id', $request->district)
    //         ->first();
    //     $area['district'] = trim($district->name);
    //     $area['payment_label'] = trim($request->payment_label);
    //     Mail::send('frontend.email.email', ['data_dh' => $data_dh, 'area' => $area, 'provinces' => $provinces, 'cart_detail' => $cart_detail], function ($message) use ($data_dh) {
    //         $message->from('cskh@mhdpharma.com', 'greenliving.vip');
    //         $message->subject('Đơn hàng #');
    //         $message->bcc($data_dh->email);
    //         $message->to('cskh@mhdpharma.com');
    //     });
    //     $request->session()->forget('cart');
    //     $request->session()->forget('cart_detail');

    //     if ($request->radio_1 == 1) {
    //         return redirect()->route('success');
    //     } else {
    //         $url = $this->connectNganLuong($data_dh->id, $total);
    //         return Redirect::to($url);
    //     }
    // }
    /**
     * ctrate the specified resource from connectNganLuong.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function connectNganLuong($order_code, $price)
    // {
    //     // Lấy các tham số để chuyển sang Ngânlượng thanh toán:

    //     //Khai báo url trả về
    //     $return_url = Route('success');
    //     // Link nut hủy đơn hàng
    //     $cancel_url = $_SERVER['HTTP_REFERER'];

    //     //Thông tin giao dịch
    //     $transaction_info = "Thong tin giao dich";
    //     //Khai báo đối tượng của lớp NL_Checkout=
    //     $nl = new NganluongServices();
    //     // dd($nl);
    //     $nl->nganluong_url = Config('nganluong.url_api');
    //     // dd(Config('nganluong'));
    //     $nl->merchant_site_code = Config('nganluong.merchant_id');
    //     // dd(Config('nganluong.merchant_id'));
    //     $nl->secure_pass = Config('nganluong.merchant_password');
    //     $receiver = Config('nganluong.receiver_email');
    //     //Tạo link thanh toán đến nganluong.vn
    //     $url = $nl->buildCheckoutUrl($return_url, $receiver, $transaction_info, $order_code, $price);
    //     // dd($url);
    //     //$url= $nl->buildCheckoutUrl($return_url, $receiver, $transaction_info, $order_code, $price);
    //     // dd($url);
    //     return $url;
    // }

    // public function getSuccess(Request $request, $idsp, $qty = 0)
    // {
    //     $meta_description = Product::select('meta_description', 'meta_keywords', 'seo_title')->orderBy('id', 'DESC')->first();
    //     $contact_munu = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->get();
    //     $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
    //     $faq = Faq::select('id', 'name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
    //     $logos = Logo::select('image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
    //     $sliders = Slider::select('title', 'image')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
    //     $gioithieu = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->orderBy('id', 'DESC')->skip(0)->take(2)->first();
    //     $gd_cordy = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 2)->orderBy('id', 'DESC')->get();

    //     $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
    //     $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
    //     // getindex
    //     $news = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 3)->orderBy('id', 'DESC')->get();
    //     $data = session()->get('cart');
    //     $total = 0;
    //     $idsp = [];
    //     $gd_cordy = [];
    //     $cart_detail = [];
    //     if ($qty > 0) {
    //         $data[$id] = $qty;
    //     }
    //     if (count($data) > 0) {
    //         foreach ($data as $key => $value) {
    //             $cordie = Product::select('id', 'name', 'image', 'price')
    //                 ->where('id', $key)
    //                 ->first();
    //             $total += $value;
    //             @$cart_detail['weight'] += $value * $cordie->price;
    //             $cordie['qty'] = $value;
    //             array_push($gd_cordy, $cordie);
    //         }
    //     } else {
    //         @$cart_detail['weight'] = 0;
    //     }
    //     return view('frontend.product.order_success', compact('category_faq','meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'faq', 'contact', 'logos', 'sliders', 'gioithieu', 'gd_cordy', 'news', 'clients', 'contents', 'about_us'));
    // }
    /**
     * getindex
     * Display a listing of the News.
     *
     * @return \Illuminate\Http\Response
     */
    public function getNews(Request $request, $idsp, $qty = 0)
    {
        $meta_description = Product::select('meta_description', 'meta_keywords', 'seo_title')->orderBy('id', 'DESC')->first();
        $contact_munu = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->get();
        $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
        $faq = Faq::select('id', 'name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $logos = Logo::select('image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $sliders = Slider::select('title', 'image')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $gioithieu = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->orderBy('id', 'DESC')->skip(0)->take(2)->first();
        $gd_cordy = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 2)->orderBy('id', 'DESC')->get();

        $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
        $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        // getindex
        $category = Category::where('parent_id', 3)->get();
        $categorychild = [3];
        foreach($category as $item_category){
            array_push($categorychild, $item_category->id);

        }
        
        $news = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function', 'created_at')->whereIn('category_id', $categorychild)->orderBy('id', 'DESC')->paginate(12);
        $data = session()->get('cart');
        $total = 0;
        $idsp = [];
        $gd_cordy = [];
        $cart_detail = [];
        if ($qty > 0) {
            $data[$id] = $qty;
        }
        if (count($data) > 0) {
            foreach ($data as $key => $value) {
                $cordie = Sanpham::select('id', 'seo_title', 'image', 'price')
                    ->where('id', $key)
                    ->first();
                $total += $value;
                @$cart_detail['weight'] += $value * $cordie->price;
                $cordie['qty'] = $value;
                array_push($gd_cordy, $cordie);
            }
        } else {
            @$cart_detail['weight'] = 0;
        }
        return view('frontend.news.list_news', compact('category_faq','category','meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'news_ss', 'faq', 'contact', 'logos', 'sliders', 'gioithieu', 'gd_cordy', 'news', 'clients', 'contents', 'about_us'));
    }

    public function getDetailNews(Request $request, $slug, $qty = 0)
    {
        $meta_description = Product::select('meta_description', 'meta_keywords', 'seo_title')->orderBy('id', 'DESC')->first();
        $contact_munu = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->get();
        $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
        $faq = Faq::select('id', 'name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $logos = Logo::select('image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $sliders = Slider::select('title', 'image')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $gioithieu = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->orderBy('id', 'DESC')->skip(0)->take(2)->first();
        $gd_cordy = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 2)->orderBy('id', 'DESC')->get();

        $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
        $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        // getindex
        $show_list = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function', 'created_at', 'meta_description', 'meta_keywords', 'seo_title')->where('category_id', 3)->orderBy('id', 'DESC')->skip(0)->take(10)->get();
        $news = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function', 'created_at', 'meta_description', 'meta_keywords', 'seo_title')->where('slug', $slug)->first();
        // $recent_posts = Product::select('id','name','title','content','image','slug','price','save_title','function','created_at')->orderBy('id','DESC')->get();
        $data = session()->get('cart');
        $total = 0;
        $idsp = [];
        $gd_cordy = [];
        $cart_detail = [];
        if ($qty > 0) {
            $data[$id] = $qty;
        }
        if (count($data) > 0) {
            foreach ($data as $key => $value) {
                $cordie = Sanpham::select('id', 'seo_title', 'image', 'price')
                    ->where('id', $key)
                    ->first();
                $total += $value;
                @$cart_detail['weight'] += $value * $cordie->price;
                $cordie['qty'] = $value;
                array_push($gd_cordy, $cordie);
            }
        } else {
            @$cart_detail['weight'] = 0;
        }
        return view('frontend.news.detail_news', compact('category_faq','show_list', 'meta_description', 'recent_posts', 'cart_detail', 'gd_cordy', 'contact_munu', 'faq', 'contact', 'logos', 'sliders', 'gioithieu', 'gd_cordy', 'news', 'clients', 'contents', 'about_us'));
    }
    /**
     * getindex
     * Display a listing of the Faq.
     *
     * @return \Illuminate\Http\Response
     */

    public function getFaq(Request $request, $id, $qty = 0)
    {
        $meta_description = Product::orderBy('id', 'DESC')->first();
        $contact = Contact::orderBy('id', 'DESC')->first();
        $logos = Logo::orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $sliders = Slider::orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $gioithieu = Product::where('category_id', 1)->orderBy('id', 'DESC')->skip(0)->take(2)->first();
        $gd_cordy = Product::where('category_id', 2)->orderBy('id', 'DESC')->get();
        $clients = Client::orderBy('id', 'DESC')->get();
        $contents = Content::orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $news = Product::where('category_id', 3)->orderBy('id', 'DESC')->get();
        $contact_munu = Contact::orderBy('id', 'DESC')->get();
        $faq = Faq::orderBy('id', 'DESC')->get();
        // $category_faq = CategoryFaq::whereIn('id',[1,2])->orderBy('id', 'DESC')->get();
        $sp_faq = CategoryFaq::where('parent_id', 1)->get();
        $cate_faq = CategoryFaq::where('parent_id', 2)->get();
        $param = $request->all();
        $id = null;
        foreach ($param as $key => $value) {
            $id = $key;
            break;
        }

        $select_id_faq = $id;
        // print_r($select_id_faq);die;
        $data = session()->get('cart');
        $total = 0;
        $idsp = [];
        $gd_cordy = [];
        $cart_detail = [];
        if ($qty > 0) {
            $data[$id] = $qty;
        }
        if (count($data) > 0) {
            foreach ($data as $key => $value) {
                $cordie = Sanpham::select('id', 'seo_title', 'image', 'price')
                    ->where('id', $key)
                    ->first();
                $total += $value;
                @$cart_detail['weight'] += $value * $cordie->price;
                $cordie['qty'] = $value;
                array_push($gd_cordy, $cordie);
            }
        } else {
            @$cart_detail['weight'] = 0;
        }
        return view('frontend.faq.faq', compact('sp_faq','cate_faq','catesp_faq','select_id_faq', 'meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'contact', 'faq', 'logos', 'sliders', 'gioithieu', 'gd_cordy', 'news', 'clients', 'contents', 'about_us'));

    }

    public function getCategoryFaq($show_data_faq){
        // su kien On change
        // return $show_data_faq;
        if ($show_data_faq > 0) {
            return Faq::where('category_faq_id', $show_data_faq)->get();
            }
    }

    public function getContact(Request $request, $idsp, $qty = 0)
    {
        $meta_description = Product::select('meta_description', 'meta_keywords', 'seo_title')->orderBy('id', 'DESC')->first();
        $contact_munu = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->get();
        $logos = Logo::select('image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $sliders = Slider::select('title', 'image')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $gioithieu = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->orderBy('id', 'DESC')->skip(0)->take(2)->first();
        $gd_cordy = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 2)->orderBy('id', 'DESC')->get();

        $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
        $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        // getindex
        $news = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 3)->orderBy('id', 'DESC')->get();
        $faq = Faq::select('name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->get();
        $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
        $data = session()->get('cart');
        $total = 0;
        $idsp = [];
        $gd_cordy = [];
        $cart_detail = [];
        if ($qty > 0) {
            $data[$id] = $qty;
        }
        if (count($data) > 0) {
            foreach ($data as $key => $value) {
                $cordie = Sanpham::select('id', 'seo_title', 'image', 'price')
                    ->where('id', $key)
                    ->first();
                $total += $value;
                @$cart_detail['weight'] += $value * $cordie->price;
                $cordie['qty'] = $value;
                array_push($gd_cordy, $cordie);
            }
        } else {
            @$cart_detail['weight'] = 0;
        }
        return view('frontend.pages.contact', compact('category_faq','meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'contact', 'faq', 'logos', 'sliders', 'gioithieu', 'gd_cordy', 'news', 'clients', 'contents', 'about_us'));
    }

    public function postMessages(Request $request)
    {
        // print_r($request->all());die;
        $rules = [
            'name' => 'required',
            'content' => 'required',
            'email' => 'required|email',
        ];
        $messages = [
            'name.required' => 'Vui lòng nhập họ tên',
            'content.required' => 'Vui lòng gửi thông báo',
            'emai.required' => 'Vui lòng nhập email',
            'emai.email' => 'Vui lòng nhập đúng định dạng email',
        ];
        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
            $message = new Message();
            $message->name = $request->name;
            $message->email = $request->email;
            $message->content = $request->content;
            $message->agree = $request->agree;
            $message->save();
        }
        return back()->with('success', 'Cảm ơn quý khách đã liên hệ đến MHD PHARMA. Chúng tôi sẽ phản hồi đến quý khách trong thời gian sớm nhất.');

    }

    public function getSearch(Request $request, $slug, $qty = 0)
    {
        $meta_description = Product::select('meta_description', 'meta_keywords', 'seo_title')->orderBy('id', 'DESC')->first();
        $contact_munu = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->get();
        $logos = Logo::select('image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $sliders = Slider::select('title', 'image')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $gioithieu = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->orderBy('id', 'DESC')->skip(0)->take(2)->first();
        $gd_cordy = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 2)->orderBy('id', 'DESC')->get();

        $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
        $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        // getindex
        $news = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 3)->orderBy('id', 'DESC')->get();
        $gd_cordy_detail = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->get();
        $faq = Faq::select('name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->get();
        $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
        $data = session()->get('cart');
        $total = 0;
        $idsp = [];
        $gd_cordy = [];
        $cart_detail = [];
        if ($qty > 0) {
            $data[$id] = $qty;
        }
        if (count($data) > 0) {
            foreach ($data as $key => $value) {
                $cordie = Sanpham::select('id', 'seo_title', 'image', 'price')
                    ->where('id', $key)
                    ->first();
                $total += $value;
                @$cart_detail['weight'] += $value * $cordie->price;
                $cordie['qty'] = $value;
                array_push($gd_cordy, $cordie);
            }
        } else {
            @$cart_detail['weight'] = 0;
        }
        $search = DB::table('sanphams')
        // ->where([
        //     ['name','like','%' . $request->content . '%'],
        //     ['title','like','%' . $request->content . '%']
        //   ])
            ->orWhere('name', 'like', '%' . $request->name . '%')
            ->orderBy('id', 'desc')->paginate(16);

        return view('frontend.pages.search', compact('category_faq','gd_cordy_detail', 'meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'search', 'contact', 'faq', 'logos', 'sliders', 'gioithieu', 'gd_cordy', 'news', 'clients', 'contents', 'about_us'));
    }   

    // ajax get data city
    public function getRequired($city)
    {
        // su kien On change
        return District::where('province_id', $city)->get();
    }
    // ajax get data product
    public function getProduct($show_data)
    {
        // su kien On change
        if ($show_data == 0) {
            $category = Category::where('parent_id', 3)->get();
            $categorychild = [3];
            foreach($category as $item_category){
                array_push($categorychild, $item_category->id);

            }
            return Product::whereIn('category_id', $categorychild)->orderBy('created_at', 'DESC')->get();
        }
        return Product::where('category_id', $show_data)->orderBy('created_at', 'DESC')->get();

    }

    public function test(Request $request, $slug, $qty = 0){
        $meta_description = Product::orderBy('id', 'DESC')->first();
        $contact_munu = Contact::orderBy('id', 'DESC')->get();
        $logos = Logo::orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $sliders = Slider::orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $gioithieu = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->orderBy('id', 'DESC')->skip(0)->take(2)->first();
        $gd_cordy = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 2)->orderBy('id', 'DESC')->get();
        $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
        $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        // getindex
        $category = Category::where('parent_id', 3)->get();
        $categorychild = [3];
        foreach($category as $item_category){
            array_push($categorychild, $item_category->id);
        }
        $news = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function', 'created_at')->whereIn('category_id', $categorychild)->orderBy('id', 'DESC')->paginate(12);
        $gd_cordy_detail = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->get();
        $faq = Faq::select('name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->get();
        $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
        $gd_cordy_list = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 2)->orderBy('id', 'DESC')->get();
        $category_faq = CategoryFaq::whereIn('id',[1,2])->orderBy('id', 'DESC')->get();
        $sp_faq = CategoryFaq::whereIn('parent_id', [1,2])->get();
        $categorychild = [1];
        foreach($sp_faq as $item_category){
            array_push($categorychild, $item_category->id);

        }
        $cte_faq = Faq::whereIn('category_faq_id',$categorychild)->orderBy('id', 'DESC')->get();

        // $category = Category::where('parent_id', 3)->get();
        $data = session()->get('cart');
        $total = 0;
        $idsp = [];
        $gd_cordy = [];
        $cart_detail = [];
        if ($qty > 0) {
            $data[$id] = $qty;
        }
        if (count($data) > 0) {
            foreach ($data as $key => $value) {
                $cordie = Product::select('id', 'name', 'image', 'price')
                    ->where('id', $key)
                    ->first();
                $total += $value;
                @$cart_detail['weight'] += $value * $cordie->price;
                $cordie['qty'] = $value;
                array_push($gd_cordy, $cordie);
            }
        } else {
            @$cart_detail['weight'] = 0;
        }
        return view('frontend.product.test', compact('gd_cordy_list','cte_faq','category_faq','category_faq','category','gd_cordy_detail', 'meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'search', 'contact', 'faq', 'logos', 'sliders', 'gioithieu', 'gd_cordy', 'news', 'clients', 'contents', 'about_us'));
    }
}