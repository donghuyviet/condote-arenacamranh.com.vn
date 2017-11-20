@extends('frontend.layouts.app')
@section('title')
Liên hệ phòng kinh doanh | Liên Hệ : 0906.212.388
@endsection
@section('main')
<div class="uk-container uk-container-center " style="padding: 0 10px; background-color: #ffffff;">
	<div class="bottom-top"></div>
	<div class="container">
		<div class="contact ">
                <div class="breadcrumb">
                <ul class="uk-breadcrumb">
                    <li><a href="{{ url('/')}}">Trang chủ</a></li>
                    <li class="uk-active"><span>Liên hệ</span></li>
                </ul>
            </div>
                <div class="title-contact">LIÊN HỆ PHÒNG KINH DOANH</div>
                <h1><div class="uk-container uk-container-center uk-text-center">The Arena Cam Ranh</div></h1>
                <div class="line-bottom"></div>
                <div class="desc-contact uk-container-center uk-text-cente">
                    Xin chân thành cám ơn Quý khách đã quan tâm đến dự án. Để biết thêm thông tin chi tiết, Quý khách vui lòng liên hệ trực tiếp thông qua số điện thoại của chúng tôi - Đại lý phân phối chính thức của The Arena Cam Ranh , hoặc để lại thông tin theo form bên dưới. Chúng tôi sẽ hồi âm trong thời gian sớm nhất.
                </div>
                <div class="policy-contact">
                    <div class="policy-list uk-grid">
                        <div class="item-contact submit uk-width-large-1-2 uk-width-medium-1-2 uk-width-small-1-1">
                            <div class="title-policy-contact"> Nhận thông tin dự án - chính sách bán hàng</div>
                            <!-- <div class="line-bottom"></div> -->
                            <p>
                                Nhận ngay thông tin chính thức từ chủ đầu tư Vinhomes bao gồm mặt bằng tổng thể, mặt bằng căn hộ, hình ảnh căn hộ mẫu, bảng giá, hợp đồng mẫu.
                            </p>
                            @if(Session::has('flash_message'))
							<div class="uk-alert uk-alert-success"><em> {!! session('flash_message') !!}</em></div>
							@endif
							@if($errors->any())
						    <div class="uk-alert uk-alert-danger uk-alert-dismissible fade in" user="uk-alert">
						        <button type="button" class="uk-close" data-dismiss="uk-alert" aria-label="Close"><span aria-hidden="true">×</span>
						        </button>
						        <strong>Lỗi!</strong> 

						        <ul>
						            @foreach ($errors->all() as $message) 
						            <li>{{$message}}</li>
						            @endforeach
						        </ul>

						    </div>
						    @endif
                            <form action="{{ route('contact-submit') }}" method="post" accept-charset="utf-8" class="uk-form">
							 {{ csrf_field() }}
							<div class="uk-grid">
								<div class="uk-width-large-1-2 uk-width-medium-1-2 uk-width-small-1-1">
							    <input type="text" placeholder="Họ Tên (*)" name="name" required=""> <span class="uk-form-help-inline">	</span>
								</div>
								<div class="uk-width-large-1-2 uk-width-medium-1-2 uk-width-small-1-1">
								    <input type="tel" name="telephone" placeholder="Số Điện Thoại (*)" required=""> <span class="uk-form-help-inline">	</span>
								</div>
								<div class="uk-width-large-1-2 uk-width-medium-1-2 uk-width-small-1-1">
								    <input name="email" type="Email" placeholder="Email"> <span class="uk-form-help-inline">	</span>
								</div>
								<div class="uk-width-large-1-2 uk-width-medium-1-2 uk-width-small-1-1">
								    <input name="message" type="text" placeholder="Địa Chỉ"> <span class="uk-form-help-inline">	</span>
								</div>
								<br>
								@if ($errors->all())
								<div class="uk-alert uk-alert-danger">
									<ul>
										@foreach( $errors->all() as $error)
											<li>{{$error}}</li>
										@endforeach
									</ul>
								</div>
								@endif
								@if (!empty($success))
								<div class="uk-alert uk-alert-success uk-form-width-large">
									<p>
										
											Bạn đã đăng ký thành công!
											<br/>Queenland sẽ liên hệ với bạn trong thời gian sớm nhất.
											<br/>Xin trân trọng cảm ơn.
										
									<p>
								</div>
								@endif
								<div class="sumit-form uk-text-center uk-width-1-1">
								    <button class="uk-button uk-text-center"  type="submit"> Gửi Thông Tin</button>
								</div>	
							</div>
					       
				        </form>
                        </div>
                        <div class="item-contact news uk-width-large-1-2 uk-width-medium-1-2 uk-width-small-1-1">
                            <div class="title-policy-contact"> BẢNG GIÁ &amp; CHÍNH SÁCH BÁN HÀNG</div>
                            <!-- <div class="line-bottom"></div> -->
                            <p>The Arena Cam Ranh Chuẩn bị có đầy đủ thông tin về mặt bằng – chính sách – giá bán. Quý khách vui lòng liên hệ bộ phận Kinh doanh The Arena Cam Ranh để được cung cấp thông tin nhanh nhất</p>
                            <div class="list-news">
                                <ul class="uk-nav">
                                    <li>
                                        Hỗ trợ tư vấn chuyên sâu- cập nhật những thông tin mới nhất:
                                    </li>
                                    <li class="hotline"><a href="tel:0906212388">HOTLINE HỖ TRỢ : 0906.212.388</a></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	</div>
            
    </div>
		<!-- modal -->
		<!-- Google Code for dang-ky Conversion Page -->
		<script type="text/javascript">
		/* <![CDATA[ */
		var google_conversion_id = 836454394;
		var google_conversion_label = "Fst-CNOCtHQQ-o_tjgM";
		var google_remarketing_only = false;
		/* ]]> */
		</script>
		<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
		</script>
		<noscript>
		<div style="display:inline;">
		<img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/836454394/?label=Fst-CNOCtHQQ-o_tjgM&amp;guid=ON&amp;script=0"/>
		</div>
		</noscript>

	@include('frontend.layouts.modal')
@endsection