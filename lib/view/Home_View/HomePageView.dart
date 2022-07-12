import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'BookingCommodity_View/BookingCommodityPage.dart';
import 'DigitalCollection_View/DigitalCollectionPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  List<Tab> tabs = [
    const Tab(text: '数字藏品'),
    const Tab(text: '预售藏品'),
  ];
  List<Widget> tabController=[
    const DigitalCollectionPage(),
    const BookingCommodityPage(),
  ];
  final assImages=[
    'assets/images/homePage/homePageSwiper.png',
    'assets/images/homePage/homePageSwiper.png',
    'assets/images/homePage/homePageSwiper.png'
  ];
  int activeIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
        length: tabs.length,
        initialIndex: 0,
        vsync: this
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.h),
        child: AppBar(
          toolbarHeight: 155.h,
          backgroundColor: const Color(0xff0F122A),
          title: Stack(
            children: [
              SizedBox(
                height: 110.h,
                child: CarouselSlider.builder(
                  itemCount: assImages.length,
                  itemBuilder: (context,index,realIndex){
                    final assImage = assImages[index];
                    return buildImage(assImage,index);
                  },
                  options: CarouselOptions(
                      height: 125.h,
                      autoPlay: true,
                      viewportFraction: 1,
                      onPageChanged: (index,reason)=>setState(()=>activeIndex=index)
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 110.r),
                  child: Center(child: buildIndicator())),
            ],
          ),
          bottom: TabBar(
            indicator: const BoxDecoration(),
            tabs: tabs,
            controller: _tabController,
            indicatorSize:TabBarIndicatorSize.label,
          ),
        ),

      ),
      body:TabBarView(
        controller: _tabController,
        children: tabController,
      ),
    );
  }

  Widget buildImage(String assImage, int index)=>Container(
    margin: const EdgeInsets.symmetric(horizontal:10),
    color: Colors.transparent,
    child: Image.asset(assImage,fit: BoxFit.fill),
  );

  Widget buildIndicator()=>AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: assImages.length,
      effect: ScrollingDotsEffect(
        dotHeight: 5.h,
        dotWidth: 5.w,
        dotColor: Colors.white,
        activeDotColor: Colors.white
      ),
  );
}
