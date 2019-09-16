<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
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
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Response;
// nganluong
use League\Flysystem\Config;
use Mail;
use Symfony\Component\Routing\Route;
use TongVanDuc\NganLuong;
use Validator;
use App\Models\LoaiSanpham;
use App\Models\Sanpham;
class SanphamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function ShowSanPham(Request $request, $slug, $qty = 0)
    {
        $meta_description = Product::first();
        $logos = Logo::orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $sliders = Slider::orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $gioithieu = Product::where('category_id', 1)->skip(0)->take(2)->get();
        $gd_cordy_index = Product::where('category_id', 2)->orderBy('id', 'DESC')->get();
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
        // $privacy_policy = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function', 'created_at', 'meta_description', 'meta_keywords', 'seo_title')->where('slug', $slug)->first();
        // dd($privacy_policy);
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
        $show_loaisanpham = $category = LoaiSanpham::all();
        $show_sanpham = Sanpham::orderBy('id', 'DESC')->get();
        return view('frontend.sanpham.show-san-pham', compact('show_sanpham','show_loaisanpham','category_faq','category_faq','privacy_policy', 'meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'faq', 'contact', 'logos', 'sliders', 'gioithieu', 'gd_cordy_index', 'news', 'clients', 'contents'));
    }
    
    public function getProductAjax(Request $request,$show_data_sanphams){
        // return $show_data_sanphams;
        //  return 123456;
        if ($show_data_sanphams > 0) {
            return Sanpham::where('loai_sanphams_id', $show_data_sanphams)->get();
        }
        // dd()
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function ChiTietSanPham(Request $request, $slug, $qty = 0)
    {
        $meta_description = Product::select('meta_description', 'meta_keywords', 'seo_title')->orderBy('id', 'DESC')->first();
        $contact_munu = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->get();
        $logos = Logo::select('image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $sliders = Slider::select('title', 'image')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $gioithieu = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->orderBy('id', 'DESC')->skip(0)->take(2)->first();
        $news = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 3)->orderBy('id', 'DESC')->get();
        $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
        $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
        $faq = Faq::select('id', 'name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        // getindex
        $gd_cordy_index = Sanpham::orderBy('id', 'DESC')->get();
       



        $gd_cordy_detail = Sanpham::where('slug', $slug)->first();

        // $shop = collect([]);
        // //dd($detail_shop->category_id);
        // $categories = LoaiSanpham::where('parent_id',$gd_cordy_detail->loai_sanphams->parent_id)->get();
        // dd($categories);
        // foreach($categories as $item_category){
            
        //     $post = Sanpham::where('category_id',$item_category->id)->orderBy('id','DESC')->get();
        //     $shop = $shop->concat($post);
        // }

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

        return view('frontend.sanpham.ct-san-pham', compact('gd_cordy_index','category_faq','meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'faq', 'contact', 'logos', 'data', 'cart_detail', 'total', 'sliders', 'gioithieu', 'gd_cordy_detail', 'news', 'clients', 'contents', 'about_us'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function ShowThanhToanSanPham(Request $request, $idsp, $qty = 0)
    {
        $meta_description = Product::select('meta_description', 'meta_keywords', 'seo_title')->orderBy('id', 'DESC')->first();
        $contact_munu = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->get();
        $logos = Logo::select('image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $sliders = Slider::select('title', 'image')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $gioithieu = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->orderBy('id', 'DESC')->skip(0)->take(2)->first();
        $news = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 3)->orderBy('id', 'DESC')->get();
        $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
        $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
        $faq = Faq::select('id', 'name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        // getindex

        $gd_cordy = Sanpham::first();
        $data = session()->get('cart');
        $total = 0;
        $ids = [];
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
        return view('frontend.sanpham.thanh-toan', compact('show_sanpham','show_loaisanpham','category_faq','category_faq','privacy_policy', 'meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'faq', 'contact', 'logos', 'sliders', 'gioithieu', 'gd_cordy_index', 'news', 'clients', 'contents'));
    }


    public function CapNhatGioHang(Request $request)
    {
        // dd($request->all());
        $carts = session()->get('cart');
        // dd($carts);
        $params = $request->all();
        // dd($params);
        $id_products = $params['id_product'];
        $num_products = $params['number_product'];
        for ($i = 0; $i < count($id_products); $i++) {
            $carts[$id_products[$i]] = $num_products[$i];
        }
        session()->put('cart', $carts);
        return redirect()->back()->with('msg', 'The Message');
    }



    public function handleCart($act, $idsp, $qty = 0)
    {
        $data = session()->get('cart');
        if ($act == 'add') {
            @$data[$idsp]++;
        }
        if ($act == 'remove') {
            unset($data[$idsp]);
        }
        if ($qty > 0) {
            $data[$idsp] = $qty;
        }
        $cart_detail = [];
        foreach ($data as $key => $value) {
            $product = DB::table('sanphams')
                ->select('seo_title', 'price', 'image')
                ->where('id', $key)->first();

            $product->qty = $value;
            $cart_detail[$key] = $product;
            @$cart_detail['total'] += $value * $product->price;
        }
        session()->put('cart', $data);
        session()->put('cart_detail', $cart_detail);
        return redirect()->route('show_thanhtoan_sanpham');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function getThongTinKhachHang(Request $request, $idsp, $qty = 0)
    {
        $meta_description = Product::select('meta_description', 'meta_keywords', 'seo_title')->orderBy('id', 'DESC')->first();
        $contact_munu = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->get();
        $logos = Logo::select('image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        $sliders = Slider::select('title', 'image')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $gioithieu = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 1)->orderBy('id', 'DESC')->skip(0)->take(2)->first();
        $gd_cordy = Product::select('id', 'name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 2)->orderBy('id', 'DESC')->get();
        $contact = Contact::select('name', 'email', 'phone', 'address', 'fanpage', 'youtube')->orderBy('id', 'DESC')->first();
        $faq = Faq::select('id', 'name', 'title', 'content', 'image', 'university', 'research')->orderBy('id', 'DESC')->skip(0)->take(4)->get();
        $clients = Client::select('name', 'email', 'face', 'content', 'image')->orderBy('id', 'DESC')->get();
        $contents = Content::select('title', 'content', 'image')->orderBy('id', 'DESC')->skip(0)->take(1)->get();
        // getindex
        $news = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 3)->orderBy('id', 'DESC')->get();

        $province = Province::select('id', 'name', 'code')->get();
        $district = District::select('id', 'name', 'province_id', 'code')->get();
        // print_r($district[2]->province_id);die;
        $ward = Ward::select('id', 'name', 'district_id', 'code')->get();

        $data = session()->get('cart');
        $total = 0;
        $ids = [];
        $gd_cordy_pay = [];
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
                array_push($gd_cordy_pay, $cordie);
            }
        } else {
            @$cart_detail['weight'] = 0;
        }
        return view('frontend.sanpham.thong-tin-khach-hang', compact('category_faq','ward', 'district', 'province', 'meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'faq', 'contact', 'data', 'gd_cordy_pay', 'total', 'logos', 'sliders', 'gioithieu', 'gd_cordy', 'news', 'clients', 'contents', 'about_us'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function postThongTinKhachHang(Request $request, $idsp, $qty = 0)
    {
        // dd($request->all());
        $rules = [
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'address' => 'required',
            'area' => 'required',
            'city' => 'required',
            'district' => 'required',
        ];
        $messages = [
            'name.required' => 'Vui lòng nhập họ tên',
            'city.required' => 'Vui lòng chọn Tỉnh/TP',
            'address.required' => 'Vui lòng chọn địa chỉ   ',
            'district.required' => 'Vui lòng chọn Quận/huyện',
            'phone.required' => 'Vui lòng nhập số điện thoại',
            'area.required' => 'Vui nhập lòng Phường Xã',
            'email.required' => 'Vui lòng nhập email',
            'email.email' => 'Vui lòng nhập đúng định dạng email',
        ];

        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
            $data_dh = new Order();
            $data_dh->name = $request->name;
            $data_dh->phone = $request->phone;
            $data_dh->address = $request->address;
            $data_dh->email = trim($request->email);
            $data_dh->city = $request->city;
            $data_dh->district = $request->district;
            $data_dh->area = $request->area;
            $data_dh->note = $request->note;
        }

        if ($data_dh->save()) {
            $data = session()->get('cart');
            // update chuyen qua mail
            $cart_detail = [];
            $total = 0;
            foreach ($data as $key => $value) {
                $cordie = Sanpham::select('id', 'seo_title', 'image', 'price')
                    ->where('id', $key)
                    ->first();
                $cordie['qty'] = $value;
                $total += $value * $cordie->price; // update chuyen qua mail
                array_push($cart_detail, $cordie); // update chuyen qua mail
                $ctdonhang = new DetailOrder();
                $ctdonhang->amount = $value;
                $ctdonhang->price = $cordie->price;
                $ctdonhang->id_sanphams = $cordie->id;
                $ctdonhang->id_orders = $data_dh->id;
                $ctdonhang->save();
            }
            $cart_detail['total'] = $total; // update chuyen qua mail

        }
        $provinces = Province::select('id', 'name')
            ->where('id', $request->city)
            ->first();
        $area['city'] = trim($provinces->name);
        // print_r($area['city']);die;
        $district = District::select('id', 'name')
            ->where('id', $request->district)
            ->first();
        $area['district'] = trim($district->name);
        $area['payment_label'] = trim($request->payment_label);
        Mail::send('frontend.email.email', ['data_dh' => $data_dh, 'area' => $area, 'provinces' => $provinces, 'cart_detail' => $cart_detail], function ($message) use ($data_dh) {
            $message->from('cskh@mhdpharma.com', 'greenliving.vip');
            $message->subject('Đơn hàng #');
            $message->bcc($data_dh->email);
            $message->to('cskh@mhdpharma.com');
        });
        $request->session()->forget('cart');
        $request->session()->forget('cart_detail');

        if ($request->radio_1 == 1) {
            return redirect()->route('success');
        } else {
            $url = $this->connectNganLuong($data_dh->id, $total);
            return Redirect::to($url);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function connectNganLuong($order_code, $price)
    {
        // Lấy các tham số để chuyển sang Ngânlượng thanh toán:

        //Khai báo url trả về
        $return_url = Route('success');
        // Link nut hủy đơn hàng
        $cancel_url = $_SERVER['HTTP_REFERER'];

        //Thông tin giao dịch
        $transaction_info = "Thong tin giao dich";
        //Khai báo đối tượng của lớp NL_Checkout=
        $nl = new NganluongServices();
        // dd($nl);
        $nl->nganluong_url = Config('nganluong.url_api');
        // dd(Config('nganluong'));
        $nl->merchant_site_code = Config('nganluong.merchant_id');
        // dd(Config('nganluong.merchant_id'));
        $nl->secure_pass = Config('nganluong.merchant_password');
        $receiver = Config('nganluong.receiver_email');
        //Tạo link thanh toán đến nganluong.vn
        $url = $nl->buildCheckoutUrl($return_url, $receiver, $transaction_info, $order_code, $price);
        // dd($url);
        //$url= $nl->buildCheckoutUrl($return_url, $receiver, $transaction_info, $order_code, $price);
        // dd($url);
        return $url;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getSuccess(Request $request, $idsp, $qty = 0)
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
        $news = Product::select('name', 'title', 'content', 'image', 'slug', 'price', 'save_title', 'function')->where('category_id', 3)->orderBy('id', 'DESC')->get();
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
                $cordie = Sanpham::select('id', 'name', 'image', 'price')
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
        return view('frontend.sanpham.tt-thanh-cong', compact('category_faq','meta_description', 'cart_detail', 'gd_cordy', 'contact_munu', 'faq', 'contact', 'logos', 'sliders', 'gioithieu', 'gd_cordy', 'news', 'clients', 'contents', 'about_us'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
