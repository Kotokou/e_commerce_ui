import 'package:e_commerce_ui/constants/asset.dart';
import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/utils/database.dart';
import 'package:e_commerce_ui/views/basket/basket_screen.dart';
import 'package:e_commerce_ui/views/home/detail_screen.dart';
import 'package:e_commerce_ui/views/home/widgets/product_card.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int selectedIndex = 0;
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.paddingOf(context).top + $styles.insets.sm,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: $styles.insets.s),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(Asset.menuIcon),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const BasketScreen(),
                              ),
                            );
                          },
                          child: SvgPicture.asset(Asset.panierIcon),
                        ),
                        SizedBox(height: 6.sp),
                        Text(
                          LocalStrings.myBasket,
                          style: $styles.text.smallLabelRegular.copyWith(
                            color: $styles.colors.textColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.sp),
              Padding(
                padding: EdgeInsets.only(
                  right: $styles.insets.md,
                  left: $styles.insets.s,
                ),
                child: Text.rich(
                  TextSpan(
                    text: LocalStrings.helloTony,
                    style: $styles.text.labelRegular.copyWith(
                      fontWeight: FontWeight.w400,
                      color: $styles.colors.textColor,
                      letterSpacing: -.2,
                      height: 1,
                    ),
                    children: [
                      TextSpan(
                        text: LocalStrings.whatDoYouWantToday,
                        style: $styles.text.labelRegular.copyWith(
                          color: $styles.colors.textColor,
                          letterSpacing: -.2,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: $styles.insets.sm,
                  right: $styles.insets.s,
                  left: $styles.insets.s,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 70.w,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: $styles.colors.inputFilledColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular($styles.insets.sl),
                            ),
                            borderSide: BorderSide.none,
                          ),
                          hintText: LocalStrings.homeHintText,
                          hintStyle:
                              $styles.text.smallDescriptionRegular.copyWith(
                            color: $styles.colors.homeHinttextColor,
                          ),
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                            size: $styles.insets.s,
                            color: $styles.colors.homeHinttextColor,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: $styles.insets.sm,
                            vertical: $styles.insets.s,
                          ),
                        ),
                      ),
                    ),
                    SvgPicture.asset(Asset.filterIcon),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: $styles.insets.lm,
                  bottom: $styles.insets.s,
                  right: $styles.insets.s,
                  left: $styles.insets.s,
                ),
                child: Text(
                  LocalStrings.recommendo,
                  style: $styles.text.largeLabelSemiMeduim.copyWith(
                    color: $styles.colors.textColor,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    $styles.gradients.productCardShadow,
                  ],
                ),
                height: 25.h,
                child: ListView.separated(
                  itemCount: productList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, i) => ProductCard(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            productModel:
                                productListForDetailBecauseOfImageTooSmall[i],
                          ),
                        ),
                      );
                    },
                    productLabel: productList[i].label,
                    price: productList[i].price,
                    productImage: productList[i].image,
                  ),
                  separatorBuilder: (_, i) => SizedBox(width: $styles.insets.s),
                ),
              ),
              SizedBox(height: 2.h),
              Container(
                height: 5.h,
                padding: EdgeInsets.symmetric(horizontal: $styles.insets.xs),
                child: TabBar(
                  controller: controller,
                  isScrollable: true,
                  unselectedLabelStyle: $styles.text.descriptionMeduim.copyWith(
                    color: $styles.colors.textColor,
                    letterSpacing: -.16,
                  ),
                  labelStyle: $styles.text.largeLabelSemiMeduim.copyWith(
                    color: $styles.colors.textColor,
                    letterSpacing: -.24,
                  ),
                  unselectedLabelColor: $styles.colors.tabLabelColor,
                  labelColor: $styles.colors.textColor,
                  indicatorColor: $styles.colors.primary,
                  indicatorSize: TabBarIndicatorSize.label,
                  dividerColor: $styles.colors.white,
                  indicatorPadding: EdgeInsets.only(left: 3.w, right: 14.w),
                  tabs: [
                    SizedBox(
                      width: 23.w,
                      child: const Tab(text: LocalStrings.hottest),
                    ),
                    SizedBox(
                      width: 23.w,
                      child: const Tab(text: LocalStrings.popular),
                    ),
                    SizedBox(
                      width: 23.w,
                      child: const Tab(text: LocalStrings.newCombo),
                    ),
                    SizedBox(
                      width: 23.w,
                      child: const Tab(text: LocalStrings.top),
                    ),
                  ],
                ),
              ),
              SizedBox(height: $styles.insets.sm),
              SizedBox(
                height: 30.h,
                child: TabBarView(
                  controller: controller,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(
                    4,
                    (index) => Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          $styles.gradients.productCardShadow,
                        ],
                      ),
                      height: 25.h,
                      child: ListView.separated(
                        itemCount: productList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, i) => ProductCard(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  productModel:
                                      productListForDetailBecauseOfImageTooSmall[
                                          index],
                                ),
                              ),
                            );
                          },
                          productLabel: productList[i].label,
                          price: productList[i].price,
                          productImage: productList[i].image,
                        ),
                        separatorBuilder: (_, i) =>
                            SizedBox(width: $styles.insets.s),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
