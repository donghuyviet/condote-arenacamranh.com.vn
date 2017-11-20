@extends('frontend.layouts.app')
@section('title')
{{ $post->post }}
@endsection
@section('main')
<div class="bottom-top"></div>
<div class="container">
                <!-- Mobile -->
                <div class="newsdetail">
                    <div class="breadcrumb-newsdetail">
                        <ul class="uk-breadcrumb">
                            <li><a href="{{ url('/')}}">Trang chủ</a></li>
                            <li class="uk-active"><span>Tin tức</span></li>
                            <li class="uk-active"><span>{{ $post->post }} </span></li>
                        </ul>
                    </div>
                    <div class="uk-grid detail-news">
                        <div class="new-left  uk-width-large-4-6 uk-width-medium-4-6 uk-width-small-1-1">
                            <div class="title-newsdetail">{{ $post->post }} 
									@if(Auth::check())
										<a href="{{ $post->getEditUrl() }}" target="_blank">
											<i class="uk-icon-pencil"></i>
										</a>
									@endif</div>
									<div class="auth">
								@if(Auth::check())
								by: <strong>{{$post->User->name}}</strong>
								@endif
							</div>
                            <div class="detail-desc">
                                <?php echo(html_entity_decode($post->description)); ?>
                            </div>
                        </div>
                        <div class="new-right  uk-width-large-2-6 uk-width-medium-2-6 uk-width-small-1-1">
                            <div class="tinhot">
                                <div class="title-newsdetail-left">Tin hot</div>
                                <div class="list-newsdetail uk-grid">
                                	@foreach($hotPost as $item )
                                    <div class=" item-newsdetail item uk-width-large-1-1 uk-width-medium-1-1 uk-width-small-1-1 ">
                                        <div class="newsdetail-img">
                                            <a href="{{ $item->getUrl() }}"><img src="{{ $item->avatar}}" alt="{{ $item->post }}" /></a>
                                        </div>
                                        <div class="desc-newsdetail">
                                            <div class="title-tt">
                                                <a href="{{ $item->getUrl() }}">{{ $item->post }}</a>
                                            </div>
                                            <div class="info-newsdetail">{{$item->views}} lượt xem</div>
                                            <div class="date-newsdetail"> <a href="" class="uk-icon-justify uk-icon-clock-o"></a> {{ $item->updated_at->diffForHumans() }}</div>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>

                            <div class="tinmoi">
                                <div class="title-newsdetail-left">Tin mới nhất</div>
                                <div class="list-newsdetail uk-grid">
                                	@foreach($news as $item )
                                    <div class=" item-newsdetail item uk-width-large-1-1 uk-width-medium-1-1 uk-width-small-1-1 ">
                                        <div class="newsdetail-img">
                                            <a href="{{ $item->getUrl() }}"><img src="{{ $item->avatar}}" alt="{{ $item->post }}" /></a>
                                        </div>
                                        <div class="desc-newsdetail">
                                            <div class="title-tt">
                                                <a href="{{ $item->getUrl() }}">{{ $item->post }}</a>
                                            </div>
                                            <div class="info-news">{{$item->views}} lượt xem</div>
                                            <div class="date-newsdetail"> <a href="" class="uk-icon-justify uk-icon-clock-o"></a> {{ $item->updated_at->diffForHumans() }}</div>
                                        </div>
                                    </div>
                                    @endforeach

                                    @foreach($newsPosts as $item )
                                    <div class=" item-newsdetail item uk-width-large-1-1 uk-width-medium-1-1 uk-width-small-1-1 ">
                                        <div class="newsdetail-img">
                                            <a href="{{ $item->getUrl() }}"><img src="{{ $item->avatar}}" alt="{{ $item->post }}" /></a>
                                        </div>
                                        <div class="desc-newsdetail">
                                            <div class="title-tt">
                                                <a href="{{ $item->getUrl() }}">{{ $item->post }}</a>
                                            </div>
                                            <div class="info-news">{{$item->views}} lượt xem</div>
                                            <div class="date-newsdetail"> <a href="" class="uk-icon-justify uk-icon-clock-o"></a> {{ $item->updated_at->diffForHumans() }}</div>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                            <div class="video-duan">
                                <div class="title-newsdetail-left">Video dự án</div>
                                <div class="">
                                        <div class=" item-news video item uk-width-large-1-1 uk-width-medium-1-1 uk-width-small-1-1 ">
                                           <!--  <iframe src="https://www.youtube.com/embed/QitWpNHMBCk?ecver=2" width="100%" height="100%" frameborder="0" allowfullscreen=""></iframe> -->
                                        </div>
                                    </div>
                                <!-- <div class="" style="width: 100%;">
                                        <div class="item-video uk-grid" style="margin: 0;">
                                            <div class=" item-news item uk-width-large-1-2 uk-width-medium-1-2 uk-width-small-1-1 ">
                                                <iframe src="https://www.youtube.com/embed/eUJTDKxpkD8?ecver=2" width="100%" height="100%" frameborder="0" allowfullscreen=""></iframe>
                                            </div>
                                            <div class=" item-news item uk-width-large-1-2 uk-width-medium-1-2 uk-width-small-1-1 ">
                                                <iframe src="https://www.youtube.com/embed/-Et4hTGF3vQ?ecver=2" width="100%" height="100%" frameborder="0" allowfullscreen=""></iframe>
                                            </div>
                                        </div>
                                    </div> -->
                            </div>

                        </div>
                    </div>
                    <div class="news uk-container uk-container-center uk-animation-slide-right">
                        <div class="title-news">Tin tức liên quan</div>
                        <div class="list-news uk-grid">
                        	@foreach($hotPost as $item )
                            <div class=" item-news item uk-width-large-1-2 uk-width-medium-1-2 uk-width-small-1-1 ">
                                <div class="news-img">
                                    <a href="{{ $item->getUrl() }}"><img src="{{ $item->avatar}}" alt="{{ $item->post }}" /></a>
                                </div>
                                <div class="desc-new">
                                    <div class="title-tt">
                                        <a href="{{ $item->getUrl() }}">{{ $item->post }}</a>
                                    </div>
                                    <div class="info-news">{{$item->views}} lượt xem</div>
                                    <div class="date-news"> <a href="" class="uk-icon-justify uk-icon-clock-o"></a>{{ $item->updated_at->diffForHumans() }}</div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
	@include('frontend.layouts.modal')
@endsection