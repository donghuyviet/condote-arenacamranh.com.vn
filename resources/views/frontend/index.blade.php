@extends('frontend.layouts.app')
@section('title')
dự án arena cam ranh bãi ram ranh khánh hòa giá CĐT
@endsection
@section('main')
	
        <div class="slideshow">
                <div class="uk-slidenav-position" data-uk-slideshow="{autoplay:true}">
                    <ul class=" uk-slideshow">
                        @foreach($slide as $s)
                            <li class="sub-slider" data-slideshow-slide="img">
                                <img src="{{ $s->image}}" alt="{{ $s->title }}" />
                            </li>
                        @endforeach
                    </ul>
                    <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous"
                       data-uk-slideshow-item="previous"></a>
                    <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next"
                       data-uk-slideshow-item="next"></a>
                   <ul class="uk-dotnav uk-dotnav-contrast uk-position-bottom uk-flex-center">
                        <?php $i=0; ?>
                            @foreach($slide as $sli)
                                <li data-uk-slideshow-item="{{$i}}"><a href=""></a></li>
                            <?php $i++; ?>
                        @endforeach
                    </ul>
                </div>
            </div>


		<div class="container">
                <!-- Mobile -->
                <div class="overview uk-container uk-container-center">
                        <div class="list-overview ">
                            <div class="title_ov">
                                <div class="item-title">
                                    <h1><a href="#">TỔNG QUAN</a></h1>
                                </div>
                                <div class="item-title">
                                        Condotel The Arena Cam Ranh
                                </div>
                            </div>
                        
                            <div class="over-item uk-text-left uk-width-large-1-2 uk-width-medium-1-1 uk-width-small-1-1 uk-float-left">
                                <div class="uk-panel">
                                    <div class="desc ">
                                        <p>
                                            <strong>The Arena Cam Ranh</strong> - Mô hình nghỉ dưỡng kết hợp giải trí duy nhất tại Bãi Dài, Cam Ranh, Khánh Hòa.
                                        </p>
                                    </div>
                                    <div class="desc">
                                        <p>
                                            <strong>Arena Cam Ranh</strong> có tên đầy đủ là <strong>Panorama The Arena Cam ranh</strong> với mô hình nghỉ dưỡng vui chơi giải trí đẳng cấp chuẩn 5 sao. Đây là xu hướng đầu tư phát triển hiệu quả trên thế giới mang lại lợi nhuận lớn cho các nhà đầu tư tại Việt Nam. Chính sự khác biệt này mang đến cho <strong>Arena Cam ranh</strong> tạo nên sự khác biệt về đầu tư lĩnh vực <strong>nghỉ dưỡng view biển.</strong>
                                        </p>
                                    </div>

                                    <div class="icon">
                                        <ul class="ul-highlight">
                                            <li> Tên dự án:<strong> Condotel The Arena Cam Ranh</strong> </li>
                                            <li> Vị trí:<strong> lô D14D Bãi Dài - Cam Ranh - Khánh Hòa.</strong> </li>
                                            <li>Chủ đầu tư:<strong> Công ty cổ phần Đầu tư Xây dựng Vịnh Nha Trang.</strong> </li>
                                            <li>Đơn vị quản lý:<strong> AbSolute Hotels Services (AHS).</strong> </li>
                                            <li>Tổng diện tích:<strong> 29ha</strong></li>
                                            <li>Quy mô:<strong> gồm 4 tòa Sea - Sand - Light - Wind, view trực diện biển cao từ 21-25 tầng</strong></li>
                                            <li>Mật độ xây dựng:<strong> 10%</strong></li>
                                            <li>Diện tích căn hộ:<strong> 32 – 40m2</strong></li>
                                            <li>Đơn vị thiết kế:<strong> Finko</strong></li>
                                            <li>Giám sát chất lượng:<strong> Artelia</strong></li>
                                            <li>Loại hình:<strong> Condotel view 90% biển, sỡ hữu 50 năm cho condotel và lâu dài cho biệt thự.</strong></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="over-item-video uk-width-large-1-2 uk-width-medium-1-1 uk-width-small-1-1 uk-float-left">
                                <div class="videos">
                                    <iframe src="https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2F488944928139904%2Fvideos%2F488946541473076%2F&show_text=0" width="100%" height="400" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allowFullScreen="true"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="line-gold"></div>

                <!--vị trí vàng -->
                <div class="position uk-container uk-container-center">
                    <div class="title_position">
                        <div class="item-title">
                                <a href="#">VỊ TRÍ DỰ ÁN</a>
                            </div>
                        <div class="item-title">
                                Tọa lạc tại vị trí vàng
                            </div>
                        <div class="desc-position">The Arena Cam Ranh sở hữu vị trí đắc địa tại <strong>lô D14D Bãi Dài – kết nối</strong>  linh hoạt và thuận tiện tới <strong>sân bay Cam Ranh và thành phố Nha Trang.</strong> Cụ thể, dự án nằm cách trung tâm thành phố Nha Trang chỉ <strong>khoảng 35 phút và sân bay Cam Ranh 9 phút</strong> di chuyển.</div>
                    </div>
                    <div class="list-position">
                        <div class="position-map uk-width-large-1-2 uk-width-medium-1-1 uk-width-small-1-1  uk-float-left">
                            <div class="map">
                                <a href="samples/vi-tri-the-arena-cam-ranh-01-min.jpg" data-uk-lightbox="{group:'group3'}"><img src="samples/vi-tri-the-arena-cam-ranh-01-min.jpg"></a>
                            </div>
                        </div>
                        <div class="item-position uk-width-large-1-2 uk-width-medium-1-1 uk-width-small-1-1">
                            <div class="tab-header">
                                <div class=" title-tab">danh sách địa điểm</div>
                                <div class="tab">
                                    <div class="tab1"></div>
                                    <div class="tab2"></div>
                                </div>
                            </div>
                            <div class="list-location ">
                                    <ul>
                                        <li class="item-location">
                                            <img src="{{ asset('samples/position/nguyen-tat-thanh.jpg') }}" alt="mặt đường nguyễn tất thành" />
                                            <div class="location-right">
                                                <div class="title-location text-uppercase bold color-blue0 margin-none">
                                                    Mặt Tiền Đường Nguyễn Tất Thành
                                                </div>
                                            </div>
                                        </li>
                                        <li class="item-location">
                                            <img src="{{ asset('samples/position/vinpearl-bai-dai.jpg') }}" alt="vinpearl-bai-dai" />
                                            <div class="location-right">
                                                <div class="title-location text-uppercase bold color-blue0 margin-none">
                                                    Vinpearl Bãi Dài
                                                </div>
                                                <span class="distance ng-binding">Cách: 5 phút</span>
                                            </div>
                                        </li>
                                        <li class="item-location">
                                            <img src="{{ asset('samples/position/cam-ranh-air.jpg') }}" alt="sân bay quốc tế cam ranh" />
                                            <div class="location-right">
                                                <div class=" title-location text-uppercase bold color-blue0 margin-none">
                                                    Sân Bay Quốc Tế Cam Ranh
                                                </div>
                                                <span class="distance ng-binding">Cách: 9 phút</span>
                                            </div>
                                        </li>
                                        <li class="item-location">
                                            <img src="{{ asset('samples/position/tp-cam-ranh.jpg') }}" alt="Tp. Cam  Ranh" />
                                            <div class="location-right">
                                                <div class="title-location text-uppercase bold color-blue0 margin-none">
                                                    TP. Cam Ranh
                                                </div>
                                                <span class="distance ng-binding">Cách: 20 phút</span>
                                            </div>
                                        </li>
                                        <li class="item-location">
                                            <img src="{{ asset('samples/position/tp-nha-trang.jpg') }}" alt="Tp. Nha Trang" />
                                            <div class="location-right">
                                                <div class="title-location text-uppercase bold color-blue0 margin-none">
                                                    TP. Nha Trang
                                                </div>
                                                <span class="distance ng-binding">Cách: 35 phút</span>
                                            </div>
                                        </li>
                                        <li class="item-location">
                                            <img src="{{ asset('samples/position/cau-moi.jpg') }}" alt="Cầu mới" />
                                            <div class="location-right">
                                                <div class="title-location text-uppercase bold color-blue0 margin-none">
                                                    Gần Cầu Mới
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                        </div>
                    </div>
                </div>
                <div class="line-gold"></div>
                <!-- Cam kết lợi nhuận -->
                <div class="invest uk-container uk-container-center uk-text-center">
                   <!--  <p>
                        <div class="title uk-text-center">The Arena – Panorama Cam Ranh</div>
                    </p> -->
                    <div class="title-bottom uk-text-center">
                        Kiệt tác của sự tươi mới và mới lạ
                    </div>
                    <div class="meta-desc">
                        <strong>Condotel The Arena – Panorama Cam Ranh</strong> không chỉ mang đến cho các du khách những không gian nghỉ dưỡng mang đậm sự sôi nổi, cùng với các tiện ích đẳng cấp 5 sao. Đến với The Arena Panorama Cam Ranh du khách như đắm chìm trong 1 đấu trường “Arena” với rất nhiều trò chơi, những văn hóa. Trải nhiệm các môn thể thao dưới nước ở tại nội khu nghỉ dưỡng
                    </div>
                    <div class="invest-main uk-grid" >
                        <div class="uk-width-large-1-3 uk-width-medium-1-3 uk-width-small-1-1">
                            <div class="top"> 150</div>
                            <div class="bottom"> Đêm Nghỉ</div>
                            <div class="desc">
                                Tặng <strong>150 đêm</strong> nghỉ trong 10 năm trên toàn bộ hệ thống bất động sản nghỉ dưỡng của Vịnh Nha Trang.
                            </div>
                        </div>
                        <div class="uk-width-large-1-3 uk-width-medium-1-3 uk-width-small-1-1">
                            <div class="top">70%</div>
                            <div class="bottom">Hỗ Trợ Vay Lãi Suất 0%</div>
                            <div class="desc">
                                Mức vay tối đa 70% giá trị căn hộ, lãi suất 0%, thời hạn tối đa 20 năm
                            </div>
                        </div>
                        <div class="uk-width-large-1-3 uk-width-medium-1-3 uk-width-small-1-1">
                            <div class="top">100%</div>
                            <div class="bottom">Cam Kết Lợi Nhuận</div>
                            <div class="desc">
                               Cam kết khách hàng nhận được lợi nhuận tối thiểu lên tới 10%/năm trong 10 năm
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="line-gold"></div>
                <!--chính sách bán hàng-->
                <div class="perspective uk-container uk-container-center">
                    <div class="title-perspective uk-container-center">
                        <div class="item-title">
                            <a href="#">Chính sách bán hàng</a>
                        </div>
                        <div class="item-title">
                            Mới nhất từ chủ đầu tư
                        </div>
                    </div>
                    <div class="list-perspective">
                        <div class="item-perspective1">
                            <div class="tab-left">
                                <div class=" title-tab">1. Tiến độ thanh toán</div>
                                <div class="tab">
                                    <div class="tab1"></div>
                                    <div class="tab2"></div>
                                </div>
                            </div>
                            <ul class="list-thanhtoan ">
                                <li>
                                    <strong> Đợt 1: </strong>Thỏa thuận ký quỹ <strong>50 triệu đồng.</strong>
                                </li>
                                <li>
                                    <strong>Đợt 2: </strong> 10 ngày sau nộp tiền lần 1: <strong>Thanh toán 15%</strong>
                                </li>

                                <li>
                                    <strong> Đợt 3: </strong>30 ngày sau nộp tiền lần 2: <strong>Thanh toán 10%</strong> 
                                </li>
                                <li>
                                    <strong>Đợt 4:</strong>Không trễ hơn 30/6/2018: <strong>Thanh toán5%</strong>
                                </li>
                                <li>
                                    <strong>Đợt 5: </strong> Không trễ hơn 31/8/2018: <strong>thanh toán 5%</strong>
                                </li>
                                <li>
                                    <strong>Đợt 6:  </strong>Không trễ hơn 31/10/2018: <strong>Thanh toán 5%</strong>
                                </li>
                                <li>
                                    <strong>Đợt 7:  </strong>Không trễ hơn 31/12/2018: <strong>Thanh toán 5%</strong>
                                </li>
                                <li>
                                    <strong>Đợt 8: </strong>Không trễ hơn 28/02/2019: <strong>Thanh toán 5%</strong>
                                </li>
                                <li style="color: #cf000f; font-size: 18px;"> Thông tin chi tiết tín độ >>> <a href="https://goo.gl/xBA2cc" style="color: #cf000f; font-size: 18px;"> <span>Chi Tiết</span> </a></li>
                                <li class="hotline"><a href="tel:0906212388" title="hotline" style="color: #cf000f; font-size: 18px;"><i class="uk-icon-phone"></i> Hotline : 0906.212.388</a></li>
                            </ul>
                        </div>
                        <div class="item-perspective2">
                            <div class="tab-right">
                                <div class=" title-tab">2. Chính Sách bán hàng.</div>
                                <div class="tab">
                                    <div class="tab1"></div>
                                    <div class="tab2"></div>
                                </div>
                            </div>
                            <ul class="list-uudai ">
                                <li>
                                   <strong>Cam kết chia sẻ lợi nhuận</strong> <strong class="highlight"> 90/10.</strong>
                                </li>
                                <li>
                                   <strong>Ngân hàng</strong> <strong class="highlight"> Viettinbank bảo lãnh thi công dự án  </strong>
                                </li>
                                <li>
                                    <strong>Tặng: </strong> <strong class="highlight">150 đêm </strong> nghỉ dưỡng miễn phí trong 10 năm trên toàn bộ hệ thống bất động sản nghỉ dưỡng của Vịnh Nha Trang  khi Ký gửi CĐT kinh doanh.
                                </li>
                                <li>
                                    <strong class="highlight"> Bàn giao Full nội thất</strong>
                                </li>
                                <li>
                                    <strong class=""> ĐẶC BIỆT:</strong><strong class="highlight"> Chỉ cần bỏ vốn 30% GTCH 70%</strong> còn lại được ngân hàng hỗ trợ vay vốn ưu đãi, lãi suất <strong>0% </strong>khi đến nhận nhà.
                                </li>
                                <li style="color: #cf000f; font-size: 18px;"> Thông tin chi tiết chính Sách >>> <a href="https://goo.gl/xBA2cc" style="color: #cf000f; font-size: 18px;"> <span>Chi Tiết</span> </a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="line-gold"></div>
                <!--vì sao nên mua -->
                <div class="benefit uk-container uk-container-center">
                    <div class="title-benefit uk-container-center">
                        <div class="item-title">
                            <a href="#">The Arena Cam Ranh</a>
                        </div>
                        <div class="item-title">
                            Lợi Ích Đầu Tư
                        </div>
                        <div class="desc">
                            <strong>The Arena tọa lạc tại Bãi Dài - Cam ranh</strong> với kỳ vọng trở thành <strong>"Cơn Sốt"</strong> bất động sản nghỉ dưỡng, xu hướng sinh lời cao của nhà đầu tư. Đây là dự án đầu tiên và duy nhất tại Bãi Dài kết hợp xu hướng nghỉ dưỡng vui chơi giải trí đẳng cấp. Hứa hẹn sẽ là <strong>"thiên đường nghỉ dưỡng"</strong> trong mơ của du khách nội địa cả quốc tế.
                        </div>
                    </div>
                    <div class="list-benefit">
                        <div class="item-benefit">
                            <div class="box-benefit "><strong>01</strong></div>
                            <div class="desc-box pull-left">
                                <div class="title-box">Vị trí độc tôn</div>
                                <p class=" desc-spec">
                                     <strong> The Arena Cam Ranh</strong> tọa lạc tại lô D14D Bãi Dài – cách sân bay Cam Ranh 2KM và thành phố Nha Trang 27KM.
                                </p>
                            </div>
                        </div>
                        <div class="item-benefit">
                            <div class="box-benefit "><strong>02</strong></div>
                            <div class="desc-box pull-left">
                                <div class="title-box">Đột phá kiến trúc</div>
                                <p class=" desc-spec">
                                    Arena Cam Ranh sở hữu kiến trúc khác biệt và độc đáo nhất trong khu vực Bãi Dài – với 4 tòa căn hộ <strong>Sea – Sand –Light – Wind với 90% căn hộ view biển.</strong> 
                                </p>
                            </div>
                        </div>
                        <div class="item-benefit">
                            <div class="box-benefit "><strong>03</strong></div>
                            <div class="desc-box pull-left">
                                <div class="title-box">Kinh nghiệm uy tín</div>
                                <p class=" desc-spec">
                                     Chủ đầu tư của những căn hộ <strong>Condotel Arena Cam Ranh</strong> chính là <strong>Công ty Cổ phần Đầu tư Xây dựng Vịnh Nha Trang</strong> – chủ sở hữu của hàng loạt dự án bất động sản nghỉ dưỡng tầm cỡ: <strong>Venesia</strong> là khu đô thị lớn nhất tại nội thành thành phố biển Nha Trang, dự án Panorama Nha Trang với vị trí kim cương 4 mặt tiền thành phố…
                                </p>
                            </div>
                        </div>
                        <div class="item-benefit">
                            <div class="box-benefit "><strong>04</strong></div>
                            <div class="desc-box pull-left">
                                <div class="title-box">Tiện nghi và dịch vụ</div>
                                <p class=" desc-spec">
                                   Mô hình nghỉ dưỡng kết hợp giải trí độc đáo duy nhất tại Bãi Dài. The Arena Cam Ranh mang đến những phút giây riêng tư, ấm cúng. quý vị sẽ hòa mình vào không gian vui tươi đầy màu sắc, văn hóa ẩm thực chất đến từng phút giây.
                                </p>
                            </div>
                        </div>
                        <div class="item-benefit">
                            <div class="box-benefit "><strong>05</strong></div>
                            <div class="desc-box pull-left">
                                <div class="title-box">Quyền lợi vượt trội</div>
                                <p class=" desc-spec">
                                    với cam kết lợi nhuận cho thuê tối thiểu 10% giá trị Condotel trong thời gian lên tới 1<strong> 0 năm cùng 150 đêm nghỉ dưỡng</strong> trong hệ thống nghỉ dưỡng đẳng cấp trên Vịnh Nha Trang khi Ký gửi CĐT kinh doanh. Hỗ trợ vay ngân hàng lên đến <strong> 70% </strong>và lãi suất ưu đãi <strong>0%</strong> đến khi nhận nhà.
                                </p>
                            </div>
                        </div>
                        <div class="item-benefit">
                            <div class="box-benefit "><strong>06</strong></div>
                            <div class="desc-box pull-left">
                                <div class="title-box">KỲ VỌNG TĂNG GIÁ TRỊ ĐẦU TƯ</div>
                                <p class=" desc-spec">
                                    Chủ đầu tư uy tín, cùng 90% căn hộ view biển <strong>The Arena Cam ranh</strong> cam kết <strong> lợi nhuận >10%<strong>. Điều đó khẳng định cơ hội đầu tư và tăng giá của bất động sản nghỉ dưỡng tại Việt Nam là chắc chắn. Vì vậy đây sẽ là nơi giành cho những nhà đầu tư bắt kịp và đón đầu xu hướng mới.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="line-gold"></div>
                <!--  tiện ích -->
                <div class="utilities uk-container uk-container-center">
                    <div class="title-utilities uk-container-center">
                        <div class="item-title">
                            <a href="#">Hạ tầng tiện ích 5 sao</a>
                        </div>
                        <div class="item-title">
                            Một bước chân ngàn tiện ích
                        </div>
                        <div class="desc-utilities">  Khu đô thị bao gồm gần 200 tiện ích trong đó gần 40 tiện ích điểm nhấn
                            <strong>5 sao</strong> đáp ứng đầy đủ nhu cầu <strong>mua sắm, vui chơi, giải trí, ẩm thực đến chăm sóc sức khỏe, y tế và giáo dục
                            </strong> khiến cuộc sống của cư dân nơi thực sự là một trải nghiệm sống “nghỉ dưỡng” hoàn hảo mỗi ngày.
                        </div>
                    </div>
                    <div class="tab-matbang">
                        <ul class="list-mb uk-nav" data-uk-switcher="{connect:'#my-id'}">
                            <li class="uk-active"><a href="">Layout tổng quan 4 tòa căn hộ</a></li>
                            <li><a >Mặt bằng tòa LIGHT</a></li>
                            <li><a >Phối cảnh 3D tòa SEA gần biển</a></li>
                            <li><a >Phối cảnh 3D Arena Cam Ranh</a></li>
                        </ul>
                        <ul id="my-id" class="img-matbang uk-switcher uk-margin">
                            <li>
                                <img src="{{ asset('samples/matbang/tong-quan.jpg') }}" alt="layout tổng quan arena the cam ranh bãi dài" />
                            </li>
                            <li>
                                <img src="{{ asset('samples/matbang/Area-Level1-A1-min.jpg') }}" alt="mặt bằng tòa light">
                            </li>
                            <li> <img src="{{ asset('samples/matbang/Area-Level2-A2-min.jpg') }}" alt="mặt bằng tòa SEA view biển"></li>
                            <li> <img src="{{ asset('samples/matbang/layout-can-ho-arena-cam-ranh.png') }}" alt="phối cảnh căn hộ 3D arena"></li>
                        </ul>
                    </div>
                    <!-- <div class="list-utilities">
                        
                        <div class="tab-header">
                            <div class=" title-tab">danh sách tiện ích</div>
                            <div class="tab">
                                <div class="tab1"></div>
                                <div class="tab2"></div>
                            </div>
                        </div>
                        <div class="tienich">
                            <ol class="list-tienich ">
                                <li>Tiểu cảnh lối vào công viên</li>
                            </ol>
                        </div>
                    </div> -->
                </div>
                <div class="form-layout uk-container uk-container-center">
                    <div class="title uk-text-center">
                        Nhận Layout, Bảng Giá Mới Nhất Condotel Arena Cam Ranh Chính Thức Từ CĐT
                    </div>
                    <div class="desc uk-text-center">
                        Hệ thống của chúng tôi sẽ gửi toàn bộ thông tin chi tiết về mặt bằng từng căn codotel như những phân tích chuyên sâu về ưu, nhược điểm từng mặt bằng của các căn vào Email và Số Điện thoại cho Qúy khách trong vòng 1 - 3 phút làm việc
                    </div>
                    <div class="form-layout-main">
                        <form class="uk-form"  action="{{ route('contact-submit') }}" method="post" accept-charset="utf-8">
                        {{ csrf_field() }}
                            <div class="item-form">
                                <input type="text" placeholder="Họ Tên (*)" name="name" required=""> <span class="uk-form-help-inline"> </span>
                            </div>
                            <div class="item-form">
                                <input type="tel" name="telephone" placeholder="Số Điện Thoại (*)" required=""> <span class="uk-form-help-inline">   </span>
                            </div>
                            <div class="item-form">
                                <input type="Email" name="email" type="Email" placeholder="Email"> <span class="uk-form-help-inline"> </span>
                            </div>
                            <div class="sumit-form ">
                                <button type="submit" class=" uk-button uk-container-center">
                                    Nhận Thông Tin <i class="fa fa-download"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="extentions uk-container uk-container-center">
                <div class="item_extent">
                    <ul class="uk-nav">
                        <li><a href="{{ asset('samples/tien-ich/be-boi-nuoc-man-panorama-cam-ranh.jpg') }}" title="Bể bơi olympic dài 500m dọc bờ biển" data-uk-lightbox="{group:'group1'}">
                            <img src="{{ asset('samples/tien-ich/be-boi-nuoc-man-panorama-cam-ranh.jpg') }}" alt="Bể bơi olympic dài 500m dọc bờ biển">
                            <div class="light-text"><span>Bể bơi olympic dài 500m dọc bờ biển</span></div>
                        </a></li>
                        <li><a href="{{ asset('samples/tien-ich/CV-pho-arena.png') }}" title="Công viên dạo phố" data-lightbox-type="image" data-uk-lightbox="{group:'group1'}">
                            <img src="{{ asset('samples/tien-ich/CV-pho-arena.png') }}" alt="Công viên dạo phố">
                            <div class="light-text"><span>Công viên</span></div>
                        </a></li>
                        <li><a href="{{ asset('samples/tien-ich/giai-tri-arena.png') }}" title="Khu vui chơi" data-lightbox-type="image" data-uk-lightbox="{group:'group1'}">
                            <img src="{{ asset('samples/tien-ich/giai-tri-arena.png') }}" alt="Khu vui chơi">
                            <div class="light-text"><span>Khu vui chơi</span></div>
                        </a></li>
                        <li><a href="{{ asset('samples/tien-ich/khu-an-uong-sang-trong.png') }}" title="Khu ẩm thực sang trọng" data-lightbox-type="image" data-uk-lightbox="{group:'group1'}">
                            <img src="{{ asset('samples/tien-ich/khu-an-uong-sang-trong.png') }}" alt="Khu ẩm thực sang trọng">
                            <div class="light-text"><span>Khu ẩm thực sang trọng</span></div>
                        </a></li>
                        <li><a href="{{ asset('samples/tien-ich/quang-truong-trung-tam-arena.png') }}" title="Quảng trường arena" data-lightbox-type="image" data-uk-lightbox="{group:'group1'}">
                            <img src="{{ asset('samples/tien-ich/quang-truong-trung-tam-arena.png') }}" alt="Quảng trường arena">
                            <div class="light-text"><span>Quảng trường arena</span></div>
                        </a></li>
                        <li><a href="{{ asset('samples/tien-ich/thuy-cung.jpg') }}" title="Thủy cung" data-lightbox-type="image" data-uk-lightbox="{group:'group1'}">
                            <img src="{{ asset('samples/tien-ich/thuy-cung.jpg') }}" alt="Thủy cung">
                            <div class="light-text"><span>Thủy cung</span></div>
                        </a></li>
                    </ul>
                </div>
            </div>
                <div class="line-gold"></div>

                
                <!--tài liệu nghiên cứu-->
                <div class="research-papers uk-container uk-container-center">
                    <div class="title-research-papers uk-container-center">
                        <div class="item-title">
                            <a href="#">TÀI LIỆU NGHIÊN CỨU</a>
                        </div>
                        <div class="item-title">
                            Nhận trọn bộ tài liệu chỉ với một lần tải
                        </div>
                    </div>
                    <div class="list-research-papers">
                        <div class="item-research-papers">
                                <div class="file-type-image  ">
                                    <img src="{{ asset('samples/researchpapers/icon-pdf.png') }}" />
                                </div>
                                <div class="file-info">
                                    <div class="date">
                                    	<?php
											$yesterday = date("Y-m-d", mktime(0, 0, 0, date("m") , date("d")-1,date("Y")));
											echo $yesterday;
										?>
									</div>
                                    <div class="desc-research-papers">Bảng hàng vào báo giá mới nhất được cập nhật từ chủ đầu tư</div>
                                </div>
                        </div>
                        <div class="item-research-papers">
                            <div class="file-type-image  ">
                                <img src="{{ asset('samples/researchpapers/icon-pdf.png') }}" />
                            </div>
                            <div class="file-info">
                                <div class="date">
                                	<?php
										$yesterday = date("Y-m-d", mktime(0, 0, 0, date("m") , date("d")-1,date("Y")));
										echo $yesterday;
									?>
                                </div>
                                <div class="desc-research-papers">Thông tin tòa mở bán Arena Cam Ranh</div>
                            </div>
                        </div>
                        <div class="item-research-papers">
                            <div class="file-type-image  ">
                                <img src="{{ asset('samples/researchpapers/icon-pdf.png') }}" />
                            </div>
                            <div class="file-info">
                                <div class="date">
                                	<?php
										$yesterday = date("Y-m-d", mktime(0, 0, 0, date("m") , date("d")-1,date("Y")));
										echo $yesterday;
									?>
                                </div>
                                <div class="desc-research-papers">Chính sách bán hàng mới nhất được cập nhật từ chủ đầu tư</div>
                            </div>
                        </div>
                        <div class="item-research-papers">
                            <div class="file-type-image  ">
                                <img src="{{ asset('samples/researchpapers/icon-pdf.png') }}" />
                            </div>
                            <div class="file-info">
                                <div class="date">
                                	<?php
										$yesterday = date("Y-m-d", mktime(0, 0, 0, date("m") , date("d")-1,date("Y")));
										echo $yesterday;
									?>
                                </div>
                                <div class="desc-research-papers">Bảng hàng vào báo giá mới nhất được cập nhật từ chủ đầu tư</div>
                            </div>
                        </div>                        


                    </div>
                    <div class="form-research-papers">
                        <form class="form-tai-lieu" action="{{ route('contact-submit') }}" method="post" accept-charset="utf-8">
                        	{{ csrf_field() }}
                                <!-- Tên -->
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
                                <div class="spec-research-papers">
                                    <label>Họ Tên</label><span class="required">*</span>
                                    <div class="frm-input"><input class="form-control" placeholder="Họ Tên(*)" type="text" name="name" required=""></div>
                                </div>
                                
                                <div class="spec-research-papers ">
                                    <label> Số Điện Thoại: </label><span class="required">*</span>
                                    <div class="frm-input"> <input class="form-control" name="telephone" placeholder="Số Điện Thoại (*)" required=""> </div>
                                </div>
                                <div class="spec-research-papers">
                                    <label>Email</label><span class="required"></span>
                                    <div class="frm-input"> <input class="form-control" name="email" type="Email" placeholder="Email"></div>
                                </div>
                                <div class="btn-tai sumit-form uk-container-center">
                                    <button type="submit" class=" button-form uk-container-center">
                                        Gửi <i class="fa fa-download"></i>
                                    </button>
                                </div>
                                <div class="title-form-tai-lieu">
                                    <!-- <div class="title-form-tl">Tải tất cả tài liệu</div> -->
                                    <p class="desc-tl"> 
                                    Hệ thống của chúng tôi sẽ gửi toàn bộ bảng giá, chính sách mới nhất vào email, SĐT của quý khách trong vòng 1-3 phút làm việc.</p>
                                </div>
                            </form>
                    </div>
                </div>
                <div class="line-gold"></div>
                <div class="extentions uk-container uk-container-center">
                    <div class="item_extent library">
                        <div class="title"> Thư viện hình ảnh</div>
                        <ul class="uk-nav">
                            <li><a href="{{ asset('samples/library/cau-truot.jpg') }}" title="Công viên nước" data-uk-lightbox="{group:'group2'}">
                                <img src="{{ asset('samples/library/cau-truot.jpg') }}" alt="Công viên nước">
                                <div class="light-text"><span>Công viên nước</span></div>
                            </a></li>
                            <li><a href="{{ asset('samples/library/duong-dao.jpg') }}" title="đường dạo bộ" data-lightbox-type="image" data-uk-lightbox="{group:'group2'}">
                                <img src="{{ asset('samples/library/duong-dao.jpg') }}" alt="đường dạo bộ">
                                <div class="light-text"><span>Đường dạo bộ</span></div>
                            </a></li>
                            <li><a href="{{ asset('samples/library/duong-dao-bo.jpg') }}" title="đường dạo bộ" data-lightbox-type="image" data-uk-lightbox="{group:'group2'}">
                                <img src="{{ asset('samples/library/duong-dao-bo.jpg') }}" alt="đường dạo bộ">
                                <div class="light-text"><span>đường dạo bộ</span></div>
                            </a></li>
                            <li><a href="{{ asset('samples/library/fatival.jpg') }}" title="Festival " data-lightbox-type="image" data-uk-lightbox="{group:'group2'}">
                                <img src="{{ asset('samples/library/fatival.jpg') }}" alt="Festival ">
                                <div class="light-text"><span>Festival </span></div>
                            </a></li>
                            <li><a href="{{ asset('samples/library/mb-01.jpg') }}" title="layout sea view" data-lightbox-type="image" data-uk-lightbox="{group:'group2'}">
                                <img src="{{ asset('samples/library/mb-01.jpg') }}" alt="layout sea view">
                                <div class="light-text"><span>layout sea view</span></div>
                            </a></li>
                            <li><a href="{{ asset('samples/library/over-night.jpg') }}" title="nigt" data-lightbox-type="image" data-uk-lightbox="{group:'group2'}">
                                <img src="{{ asset('samples/library/over-night.jpg') }}" alt="nigt">
                                <div class="light-text"><span>nigt</span></div>
                            </a></li>
                            <li><a href="{{ asset('samples/library/mb-02.jpg') }}" title="Layout selling point 3" data-lightbox-type="image" data-uk-lightbox="{group:'group2'}">
                                <img src="{{ asset('samples/library/mb-02.jpg') }}" alt="Layout selling point 3">
                                <div class="light-text"><span>Layout selling point 3</span></div>
                            </a></li>
                            <li><a href="{{ asset('samples/library/romance.jpg') }}" title="Romance " data-lightbox-type="image" data-uk-lightbox="{group:'group2'}">
                                <img src="{{ asset('samples/library/romance.jpg') }}" alt="Romance ">
                                <div class="light-text"><span>Romance </span></div>
                            </a></li>
                        </ul>
                    </div>
                </div>
                <div class="library uk-container uk-container-center">
                        <div class="title-library uk-container-center">
                            <div class="item-title">
                                <a href="#">Tin Tức </a>
                            </div>
                        </div>
                        <!--slider-->
                        <div class="sidle-project uk-container-center ">
                            <div class="uk-slidenav-position"  data-uk-slider>
                                <div class="uk-slider-container">
                                    <ul class="uk-slider uk-grid-width-large-1-4 uk-grid-width-medium-1-3">
                                    	@foreach($news as $n)
                                        <li class=" list-library uk-width-large-1-4 uk-width-medium-1-3 uk-width-small-1-1">
                                            <div class="item-library">
                                                <div class="box-image">
                                                    <img src="{{ $n->avatar }}" />
                                                    <!-- <div class="box-body">
                                                        <div class="box-title">
                                                            Giá: Chỉ từ 7,8 Tỷ
                                                        </div>
                                                    </div> -->
                                                </div>
                                                <div class="uk-container-center desc_tien_ich">
                                                    <!-- <div class="uk-container-center title_box_tien_ich">Liền kề</div> -->
                                                    <div class=" uk-container-center font_arial">
                                                       {{ $n->post }}
                                                    </div>
                                                    <div class="bnt_detail uk-container-center">
                                                        <a href="{{ $n->getUrl() }}">chi tiết <a href="" class="uk-icon-hover uk-icon-angle-double-right"></a></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        @endforeach
                                    </ul>
                                </div>
                                <a href="" class=" pre uk-slidenav uk-slidenav-contrast uk-slidenav-previous pre" data-uk-slider-item="previous"></a>
                                <a href="" class=" net uk-slidenav uk-slidenav-contrast uk-slidenav-next next" data-uk-slider-item="next"></a>
                            </div>
                        </div>
                    </div>
        </div>
		
	<!-- modal -->
	@include('frontend.layouts.modal')
@endsection