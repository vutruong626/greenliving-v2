<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:0px">
	<tbody>
		<tr>
			<td align="center" valign="top" style="padding-top:20px">

				<table width="700" border="0" align="center" cellpadding="0" style="background-color:#fff;width: 100%;" cellspacing="0">

					<tbody><tr>
						<td align="center" valign="top" bgcolor="#0070ce" style="border-left:1px solid #2e4d8d;border-right:1px solid #2e4d8d;border-top:1px solid #2e4d8d;padding:3px;color:#fff    background: #60f508">
							<a style="color:#fff" href="https://greenliving.vip/" target="_blank" data-saferedirecturl="https://www.google.com/url?q=http://greenliving.vip&amp;source=gmail&amp;ust=1537777122118000&amp;usg=AFQjCNHs_vWG2wyOSVnO8DGbKy-LcQMn2Q">greenliving.vip</a></td>
						</tr>
						<tr>
							<td align="center" valign="top" style="border-left:1px solid #c9d7f1;border-right:1px solid #c9d7f1;padding:10px">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tbody>
										<tr>
											<td align="left" valign="top" style="padding-bottom:10px">
												<table width="100%" border="0" cellspacing="0" cellpadding="0">
													<tbody>
														<tr>
															<td align="left" valign="top">

																<div style="border:1px solid #c9d7f1;padding:5px;font-size:12px;width:auto;margin:0px">
																	Xin chào quý khách:&nbsp;<strong style="color:#5fef0a">{{$data_dh->name}} </strong><br>
																	Thông tin đơn hàng của quý khách tại <a href="https://greenliving.vip/" style="color:#0070ce;text-decoration:none" target="_blank" data-saferedirecturl="https://www.google.com/url?q=https://greenliving.vip/&amp;source=gmail&amp;ust=1537777122118000&amp;usg=AFQjCNFR0uCvW0T9sxh5zUBPcp4MLyDZHw">greenliving.vip</a>						  </div>
																	<br>	
															</td>
														</tr>
														<tr>
															<td align="left" valign="top">

																<p>

																</p>
																<table cellpadding="0" cellspacing="0" width="100%" style="width:100%;border-top:solid 1px #bebdbd;border:solid 1px #5fef0a">
																	<thead>
																		<th>Hình</th>
																		<th>Tên sản phẩm</th>
																		<th style="text-align:left">Giá bán</th>
																		<th>Số lượng</th>
																		<th colspan="2">Thành tiền</th>

																	</thead>

																	<tbody class="yourcartdetails_all">
																	@foreach($cart_detail as $k=>$v)
																		@if(is_numeric($k))
																			<tr>
																				<td>
																					<a href="" target="_blank" data-saferedirecturl="">
																						<img id="" src="{{asset('storage/'.$v->image)}}" alt="{{$v->seo_title}}" border="0" width="50" height="60" >
																					</a>
																				</td>
																				<td>
																					<a href="" target="_blank" data-saferedirecturl="">{{$v->seo_title}}</a>
																				</td>
																				<td style="color:#3a9504">{{number_format($v->price,0)}} <b> </b>
																				</td>
																				<td class="acenter" align="center">{{$v->qty}}</td>
																				<td>&nbsp;</td>
																				<td>
																					<b>
																						<span id="pTotal_20631">{{number_format($v->price*$v->qty,0)}}<b> </b></span>
																					</b>
																				</td>
																			</tr>
																			@endif
																		@endforeach
																	</tbody>
																	<tfoot>
																		<tr style="background-color: #ddd;">
																			<td colspan="" class="cart_totla" style="text-align:right;padding-right:20px"><b>Tổng tiền</b></td>
																			<td colspan="" class="cart_totla_price">{{number_format($cart_detail['total'],0)}} VND</td>
																			<!-- <td colspan="" class="cart_totla"><b>Phí Ship</b></td> -->
																			<!-- <td colspan="" class="cart_totla_price">
																				<strong style="color:red"></strong>
																			</td> -->
																			<td colspan="" class="cart_totla"><b>Thanh toán</b></td>
																			<td colspan="" class="cart_totla_price"><strong style="color:red">{{number_format($cart_detail['total'],0)}} VND</strong></td>
																		</tr>
																		<tr class="yourcartdetails_title">
																			<td colspan="7" style="text-align:left;padding-top:20px;padding-bottom:20px;">
																				<b>THÔNG TIN NGƯỜI MUA</b></td>
																		</tr>
																		<tr>
																			<td colspan="7" style="text-align:left">
																				<table width="100%" class="info_cart_title_all" border="0" cellspacing="0" cellpadding="0">
																					<tbody>
																						<tr>
																							<td align="left" class="info_cart_title" valign="middle">HỌ VÀ TÊN</td>
																							<td align="left" valign="top">{{$data_dh['name']}}</td>
																						</tr>
																						<tr>
																							<td align="left" class="info_cart_title" valign="middle">SỐ ĐIỆN THOẠI LIÊN HỆ</td>
																							<td align="left" valign="top">{{$data_dh['phone']}}</td>
																						</tr>
																						<tr>
																							<td align="left" class="info_cart_title" valign="middle">EMAIL</td>
																							<td align="left" valign="top"><a href="mailto:{{$data_dh['email']}}" target="_blank">{{$data_dh['email']}}</a></td>
																						</tr>
																						<tr>
																							<td align="left" class="info_cart_title" valign="middle">ĐỊA CHỈ</td>
																							<td align="left" valign="top">{{$data_dh['address']}}</td>
																						</tr>
																						<tr>
																							<td align="left" class="info_cart_title" valign="middle">TỈNH/THÀNH PHỐ</td>
																							<td align="left" valign="top">{{$area['city']}} </td>
																						</tr>

																						<tr>
																							<td align="left" class="info_cart_title" valign="middle">QUẬN/HUYỆN</td>
																							<td align="left" valign="top">
																								<div id="districtdiv">{{$area['district']}}</div>
																							</td>
																						</tr>
																						<tr>
																							<td align="left" class="info_cart_title" valign="middle">Xã/Phường/thị trấn</td>
																							<td align="left" valign="top">{{$data_dh['area']}}
																							</td>
																						</tr>
																						
																						
																						
																					</tbody>
																				</table>

																			</td>
																		</tr>

																		<tr>
																			<td colspan="7" style="text-align:left">
																			Ghi chú về đơn hàng</td>
																		</tr>
																		<tr>
																			<td colspan="7">
																			{{$data_dh['note']}}
																			</td>
																		</tr>
																		<!-- <tr>
																			<td colspan="7">
																				<p style="padding-top:20px;padding-bottom:20px;"><strong>Hình thức thanh toán: </strong></p>
																			</td>
																		</tr> -->
																	</tfoot>
																</table>
																<br>
																	<p>CẢM  ƠN  QUÝ KHÁCH MUA HÀNG  TẠI <a href="https://greenliving.vip/" style="color:#0070ce;text-decoration:none" target="_blank" data-saferedirecturl="https://www.google.com/url?q=https://greenliving.vip/&amp;source=gmail&amp;ust=1537777122118000&amp;usg=AFQjCNFR0uCvW0T9sxh5zUBPcp4MLyDZHw">greenliving.vip</a>
																	</p>

																<br>
																<p>
																	<img src="https://greenliving.vip/storage/logos/April2019/ODNfGnqmsJJs27y7piLa.png" alt="">

																</p>
																
															</td>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>
										<tr>
											<td style="border-bottom:1px dotted #999999">&nbsp;</td>
										</tr>
										<tr>
											<td align="center" valign="middle" style="padding-top:10px">
											</td>
										</tr>

									</tbody>
								</table>
							</td>
						</tr>
						<tr>
							<td bgcolor="#0070ce" height="20" style="border-left:1px solid #2e4d8d;border-right:1px solid #2e4d8d;border-bottom:1px solid #2e4d8d;padding:4px;color:#5fef0a;    background: #60f508">	</td>
						</tr>
						<tr>
							<td height="20" align="left" valign="top" style="color:#666666;background-color:#f2f2f2;font-size:10px">Chúng tôi thành thật xin lỗi nếu email này làm phiền bạn. </td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>	
	</tbody>
</table>