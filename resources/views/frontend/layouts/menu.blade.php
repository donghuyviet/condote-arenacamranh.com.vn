<nav class="tm-navbar uk-navbar uk-navbar-attached " data-uk-sticky="" style=" top: 0px; width: 100%; left: 0px;">
        <div class="uk-container uk-container-center" data-uk-sticky="">

            <a class="uk-navbar-brand uk-visible-large" href="{{ url('/')}}" style="padding-top: 2%;"><img class="uk-margin uk-margin-remove" src="{{ asset('assets/images/logo.png') }}" width="90" height="30" title="The Arena Cam Ranh" alt="The Arena Cam Ranh" ></a>

            <div class="header-top uk-container-center data-uk-sticky">
                <div class="top-action">
                    <ul class="hotline-top uk-nav uk-float-left uk-visible-large">
                        <li class="hotline"><a href="tel:0906212388<"><span class="uk-icon-phone"></span>0906.212.388</a></li>
                        <!-- <li class="bao-gia"><a href="#my-id-form" title="nhận báo giá" data-uk-modal>Nhận báo giá</a></li> -->
                    </ul>
                    <ul class="icon-header uk-nav uk-float-right uk-visible-large">
                        <li><a href="http://fb.com/msg/condotelarenacamranh.com.vn/"><i class="uk-icon-facebook"></i></a></li>
                        <li><a href="#"><i class="uk-icon-youtube-square"></i></a></li>
                        <li><a href="#"><i class="uk-icon-google-plus"></i></a></li>
                    </ul>
                </div>  
                <div class="menu-main">
                    <ul class="uk-navbar-nav uk-visible-large">
                        <?php $menu_lv1 = DB::table('categories')->where([['parent_id',0],['is_hidden',0]])
                            ->orderBy('position', 'ASC')->get(); ?>
                            @foreach($menu_lv1 as $item1)
                        <li>
                             @if($item1->parent_id ==0)
                            <a href="{{ route('page', $item1->slug) }}">{!! $item1->category !!}</a>
                            @else
                            {!! $item1->category !!}
                            @endif
                        </li> 
                        @endforeach
                        <li class="{{{ ((Route::currentRouteName()=='lien-he2')?'uk-active':'') }}}"><a href="{{ Route('lien-he2') }}"  >liên hệ</a></li>
                    </ul>
                </div>
            </div>
            
            <!-- <ul class="uk-nav uk-text-right">
                <li><a href="tel:0967876969" title="hotline">0967.87.69.69</a></li>
            </ul> -->

            <a href="#tm-offcanvas" class="uk-navbar-toggle uk-hidden-large" data-uk-offcanvas="" style="padding-top: 15px;"></a>

            <div class="uk-navbar-brand uk-navbar-left uk-hidden-large"><a href="{{ url('/')}}" title=" Arena Cam Ranh"><img src="{{ asset('assets/images/logo.png') }}" width="90" height="30" title="The Arena Cam Ranh" alt="The Arena Cam Ranh" style="padding-top: 10px;"></a></div>
            <a href="tel:0906212388" class="hotline-mobile uk-hidden-large">0906.212.388</a>

        </div>
        <div id="tm-offcanvas" class="uk-offcanvas ng-scope"><div class="uk-offcanvas-bar">
            <ul class="uk-nav uk-nav-offcanvas uk-nav-parent-icon" data-uk-nav="">
                <li class=" uk-parent uk-open my-id my-id">
                    <a href="{{ url('/')}}">Trang chủ</a>
                </li>
                <?php $menu_lv1 = DB::table('categories')->where([['parent_id',0],['is_hidden',0]])
                    ->orderBy('position', 'ASC')->get(); ?>
                    @foreach($menu_lv1 as $item1)
                <li>
                     @if($item1->parent_id ==0)
                    <a href="{{ route('page', $item1->slug) }}">{!! $item1->category !!}</a>
                    @else
                    {!! $item1->category !!}
                    @endif
                </li> 
                @endforeach

                <li class="{{{ ((Route::currentRouteName()=='lien-he2')?'uk-active':'') }}}"><a href="{{ Route('lien-he2') }}">liên hệ</a></li>
            </ul>
        </div>
    </nav>
