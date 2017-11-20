@extends('frontend.layouts.app')
@section('title')
@if(@isset ($get_cate))
    {{ $get_cate->description }}| Liên Hệ :  0906.212.388
@else
Tin tức mới nhất từ chủ đầu tư | Liên Hệ :  0906.212.388
@endif
@endsection
@section('main')
	<!-- news -->
	<div class="bottom-top"></div>
	<div class="container">
                <!-- Mobile -->
        <div class="news">
            <div class="breadcrumb-news">
                <ul class="uk-breadcrumb">
                    <li><a href="{{ url('/')}}">Trang chủ</a></li>
                    <li class="uk-active"><span>Tin tức</span></li>
                </ul>
            </div>
            <div class="title-news">TIN TỨC - SỰ KIỆN</div>
            <div class="list-news uk-grid">
            	@foreach($posts as $post )
                <div class=" item-news item uk-width-large-1-2 uk-width-medium-1-2 uk-width-small-1-1 ">
                    <div class="news-img">
                        <a href="{{ $post->getUrl() }}"><img src="{{ $post->avatar }}" /></a>
                    </div>
                    <div class="desc-new">
                        <div class="title-tt">
                            <a href="{{ $post->getUrl() }}">{{ $post->post }}</a>
                        </div>
                        <div class="info-news"><?php echo(strip_tags(html_entity_decode($post->getShortDec()))); ?></div>
                        <div class="date-news"> <a href="{{ $post->getUrl() }}" class="uk-icon-justify uk-icon-clock-o"></a>{{$post->views}} lượt xem</div>                            
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    @if ($posts->lastPage() > 1)
	<ul class="uk-pagination">

		@if ($posts->currentPage()==1)
			<!-- <li class="{{ ($posts->currentPage() == 1) ? 'uk-disabled' : '' }}">
	        	<span><i class="uk-icon-angle-double-left"></i></span>
	    	</li> -->

		@else

			<li class="{{ ($posts->currentPage() == 1) ? 'uk-disabled' : '' }}">
		        <a href="{{ $posts->url(1) }}"><span><i class="uk-icon-angle-double-left"></i></span></a>
		    </li>

		@endif



	    @for ($i = 1; $i <= $posts->lastPage(); $i++)


	        @if( $posts->currentPage() == $i )

	        	<li class="uk-active"><span>{{ $i }}</span></li>

	        @else
	        	<li class="">
	            	<a href="{{ $posts->url($i) }}">{{ $i }}</a>
	        	</li>
	        @endif


	    @endfor

	    @if ($posts->currentPage()==$posts->lastPage())



		@else

			<li><a href="{{ $posts->url($posts->currentPage()+1) }}" >Next</a></li>
		    <li><a href="{{ $posts->url($posts->lastPage()) }}"><i class="uk-icon-angle-double-right"></i></a></li>

		@endif



			    <!-- <li class="{{ ($posts->currentPage() == $posts->lastPage()) ? 'uk-disabled' : '' }}">
			        <a href="{{ $posts->url($posts->currentPage()+1) }}" >Next</a>
			    </li> -->

	</ul>
@endif
		<!-- modal -->
	@include('frontend.layouts.modal')
@endsection