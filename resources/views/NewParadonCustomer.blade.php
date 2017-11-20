@component('mail::message')
# Arena Cam Ranh

Đã có khách hàng đăng ký liên hệ Arena Cam ranh trên website <br>
Thông tin khách hàng : 
<ul>
	<li>Tên: {{$customer->name}}</li>
	<li>Số điện thoại: {{$customer->telephone}}</li>
	<li>Email: <a href="mailto:{{$customer->email}}">{{$customer->email}}</a></li>
	<li>Địa chỉ: {{$customer->message}}</li>
</ul>


Cảm ơn,<br>
{{ config('app.name') }}
@endcomponent
