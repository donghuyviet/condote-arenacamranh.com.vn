<!DOCTYPE html>
<html lang="vi">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="dự án arena cam ranh, Condotel arena Cam Ranh, condotel bãi dài cam ranh khánh hòa">
	<meta name="description" content="Dự án Condotel The Arena Cam Ranh, Bãi Dài Cam Ranh Khánh Hòa, do Công ty cổ phần Đầu tư Xây dựng Vịnh Nha Trang.">
	<meta name="geo.region" content="VN-34" />
	<meta name="geo.position" content="12.027441;109.217813" />
	<meta name="ICBM" content="12.027441, 109.217813" />
	<title>@yield('title')</title>
	<link rel="shortcut icon" href="samples/favicon.png" type="image/x-icon">
	<link rel="apple-touch-icon-precomposed" href="samples/favicon.png">

	<!-- Bootstrap CSS -->
	<link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
		<!-- jQuery -->
		<script type="text/javascript" src="{{ asset('assets/js/jquery.min.js') }}"></script>
		<!-- Components UIkit -->
		<script type="text/javascript" src="{{ asset('assets/js/uikit.min.js') }}"></script>
		<script type="text/javascript" src="{{ asset('assets/js/uikit/components/pagination.js') }}"></script>
		<script type="text/javascript" src="{{ asset('assets/js/uikit/components/lightbox.js') }}"></script>
		<script type="text/javascript" src="{{ asset('assets/js/uikit/components/slider.js') }}"></script>
		<script type="text/javascript" src="{{ asset('assets/js/uikit/components/slideset.js') }}"></script>
		<script type="text/javascript" src="{{ asset('assets/js/uikit/components/slideshow.js') }}"></script>
		<script type="text/javascript" src="{{ asset('assets/js/uikit/components/slideshow-fx.js') }}"></script>
		<script type="text/javascript" src="{{ asset('assets/js/uikit/components/sticky.js') }}"></script>

		<!-- This file only use to demo -->
		<!-- <script type="text/javascript" src="{{ asset('assets/js/holder.js') }}"></script> -->

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-108239466-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-108239466-1');
	</script>
		
</head>
<body>
<div class="retargeting" style="display: none">
	<!-- Google Code dành cho Thẻ tiếp thị lại -->
	<script type="text/javascript">
	/* <![CDATA[ */
	var google_conversion_id = 836454394;
	var google_custom_params = window.google_tag_params;
	var google_remarketing_only = true;
	/* ]]> */
	</script>
	<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
	</script>
	<noscript>
	<div style="display:inline;">
	<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/836454394/?guid=ON&amp;script=0"/>
	</div>
	</noscript>
</div>
	@include('frontend.layouts.menu')
	<main id="main">
		<div class="main_vdh">
			@yield('main')
		</div>
	</main><!-- /#main -->
	@include('frontend.layouts.footer')

	<!-- /.uk-offcanvas -->
	<script src="{{ asset('assets/js/common.js') }}"></script>
		<script id="contactScript" type="text/javascript">
	var $contactFormHtml =  [
			
			'<div class="contact-form">',
			'<div class="title"> Bảng Giá Chi Tiết Toàn Bộ Dự Án</div>',
			'<div class="desc"> Hệ thống của chúng tôi sẽ gửi toàn bộ bảng giá chi tiết các tòa vào email và số điện thoại cho quý khách trong vòng 1-3 phút làm việc.</div>',
            '<form action="{{route('contact-submit')}}" method="post" accept-charset="utf-8" class="uk-form uk-tin-tuc-form"  >',
			        '<div class="uk-width-1-1" style="padding-bottom: 0px;">',
					    '<input type="text" name="name" placeholder="Họ tên (*)" class="uk-width-1-1" required="">',
					    '<span class="uk-form-help-inline">	</span>',
					'</div>',
					'<div class="uk-width-1-1" style="padding-bottom: 0px;">',
					    '<input type="tel" name="telephone" placeholder="Số điện thoại (*)" required="" class="uk-width-1-1"> <span class="uk-form-help-inline">	</span>',
					'</div>',
					'<div class="uk-width-1-1" style="padding-bottom: 0px;">',
					    '<input type="email" name="email" placeholder="Email" class="uk-width-1-1">',
					     '<span class="uk-form-help-inline">	</span>',
					'</div>',
					'<div class="uk-width-1-1" style="padding-bottom: 0px;">',
					    '<input type="text" name="message" placeholder="Địa Chỉ">',
					     '<span class="uk-form-help-inline">	</span>',
					'</div>',
					'<div class="attention">Chú ý: Nhiều khách hàng không nhận được thông tin của chúng tôi do số điện thoại hoặc email của quý khách bị sai.</div>',
					'<div class="sumit-form uk-width-1-1">',
					'<input type="hidden" name="_token" value="{{ csrf_token() }}">',
					    '<input type="submit" name="" class="uk-width-1-1 uk-button btn-send" value="Gửi"">',
					    '<p class="uk-form-help-block"></p>',
					'</div>',
				'</form>',
				'</div>',
        ].join('');
	$(".form-detail").html($contactFormHtml);
</script>
<!-- uhchat -->
<div class="uhchat" style="display: none;">
<script src="https://uhchat.net/code.php?f=e2bf53"></script>
</div>
<!-- end uhchat -->
 </body>
</html>
