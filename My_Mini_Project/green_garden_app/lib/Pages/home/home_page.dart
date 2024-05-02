import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/home/widget/carousel/imageCarousel.dart';
import 'package:green_garden/Pages/home/widget/carousel/image_viewer.dart';
import 'package:green_garden/Pages/home/widget/header/header_home_widget.dart';
import 'package:green_garden/Pages/home/widget/list_menu/plant_list_menu_home.dart';
import 'package:green_garden/Pages/home/widget/list_plant/plant_list_widget.dart';
import 'package:green_garden/Pages/home/widget/search_field/form_search_home_widget.dart';
import 'package:green_garden/Pages/profile_page/my_profile_page.dart';
import 'package:green_garden/auth/register/register_page.dart';
import 'package:green_garden/models/plant.dart';
import 'package:green_garden/widgets/reusableButtonSubmit.dart';
import 'package:green_garden/widgets/reusableTextField.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController;

  late CarouselController innerCarouselController;
  late CarouselController outerCarouselController;
  int innerCurrentPage = 0;
  int outerCurrentPage = 0;

  @override
  void initState() {
    innerCarouselController = CarouselController();
    outerCarouselController = CarouselController();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 2,
      // animationDuration: Duration(milliseconds: 300),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      backgroundColor: ColorPlants.greenDark,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: HeaderHomeWidget()),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: FormSearchHomeWidget()),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: PlantListMenuHome()),
            _innerBannerSlider(400, width),
            SizedBox(
              height: 20,
            ),
            PlantListWidget(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  MotionTabBar _buildBottomNavigationBar() {
    return MotionTabBar(
      controller: _motionTabBarController,
      initialSelectedTab: "Home",
      labels: const ["Home", "Profile"],
      icons: const [Icons.home, Icons.people_alt],
      tabSize: 50,
      tabBarHeight: 55,
      textStyle: const TextStyle(
        fontSize: 12,
        color: Color(0xff27a2AB),
        fontWeight: FontWeight.w500,
      ),
      tabIconColor: Colors.grey.shade400,
      tabIconSize: 28.0,
      tabIconSelectedSize: 26.0,
      tabSelectedColor: ColorPlants.cyanPlant,
      tabIconSelectedColor: Colors.white,
      tabBarColor: Colors.white,
      onTabItemSelected: (int value) {
        setState(() {
          _motionTabBarController!.index = value;
          if (value == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyProfilePage(),
                ));
          }
        });
      },
    );
  }

  Widget _innerBannerSlider(double height, double width) {
    return Column(
      children: [
        /// Slider Style
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          height: height * .35,
          width: width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              /// Carousel Slider
              Positioned.fill(
                child: CarouselSlider(
                  carouselController: innerCarouselController,

                  /// It's options
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.8,
                    onPageChanged: (index, reason) {
                      setState(() {
                        innerCurrentPage = index;
                      });
                    },
                  ),

                  /// Items
                  items: ImageCarouselData.innerStyleImages.map((imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        /// Custom Image Viewer widget
                        return CustomImageViewer.Show(
                          context: context,
                          assetPath: imagePath,
                          fit: BoxFit.cover,
                        );
                      },
                    );
                  }).toList(),
                ),
              ),

              /// Indicators
              Positioned(
                bottom: height * .02,
                child: Row(
                  children: List.generate(
                    ImageCarouselData.innerStyleImages.length,
                    (index) {
                      bool isSelected = innerCurrentPage == index;
                      return GestureDetector(
                        onTap: () {
                          innerCarouselController.animateToPage(index);
                        },
                        child: AnimatedContainer(
                          width: isSelected ? 55 : 17,
                          height: 5,
                          margin: EdgeInsets.symmetric(
                              horizontal: isSelected ? 6 : 3),
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.cyan : Colors.cyan[100],
                            borderRadius: BorderRadius.circular(
                              40,
                            ),
                          ),
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        ),
                      );
                    },
                  ),
                ),
              ),

              /// Left Icon
              Positioned(
                left: 11,
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.2),
                  child: IconButton(
                    onPressed: () {
                      innerCarouselController
                          .animateToPage(innerCurrentPage - 1);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                  ),
                ),
              ),

              /// Right Icon
              Positioned(
                right: 11,
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.2),
                  child: IconButton(
                    onPressed: () {
                      innerCarouselController
                          .animateToPage(innerCurrentPage + 1);
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
