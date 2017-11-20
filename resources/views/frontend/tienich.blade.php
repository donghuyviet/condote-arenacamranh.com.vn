@extends('frontend.layouts.app')
@section('title')
Tiện ích đẳng cấp 5 sao của Vinhomes Riverside
@endsection
@section('main')
	
	<div class="uk-container uk-container-center">
		<ul class="uk-breadcrumb">
		    <li><a href="{{ url('/')}}">Trang chủ</a></li>
		    <li class="uk-active"><span>Tiện ích</span></li>
		</ul>
	</div>
			@include('frontend.layouts.modal')
@endsection