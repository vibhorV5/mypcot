import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot/constants/colors.dart';
import 'package:mypcot/constants/textstyles.dart';
import 'package:mypcot/data/data_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    DataList dataList = DataList();

    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      floatingActionButton: SizedBox(
        height: mediaQuery.size.width * 0.16,
        width: mediaQuery.size.width * 0.16,
        child: FloatingActionButton(
          backgroundColor: kTextColor,
          child: Icon(
            Icons.add,
            size: mediaQuery.size.width * 0.07,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //APP BAR
              Container(
                height: mediaQuery.size.height * 0.075,
                width: mediaQuery.size.width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //MENU ICON
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 7,
                            blurRadius: 11,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: mediaQuery.size.width * 0.09,
                      width: mediaQuery.size.width * 0.09,
                      margin:
                          EdgeInsets.only(left: mediaQuery.size.width * 0.05),
                      child: SvgPicture.asset(
                        'assets/images/menu_icon_1.svg',
                      ),
                    ),

                    //ROW - MENU ICONS
                    Container(
                      margin:
                          EdgeInsets.only(right: mediaQuery.size.width * 0.05),
                      width: mediaQuery.size.width * 0.38,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //FAV ICON
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: mediaQuery.size.width * 0.009,
                                  color: Colors.white),
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 7,
                                  blurRadius: 11,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: mediaQuery.size.width * 0.09,
                            width: mediaQuery.size.width * 0.09,
                            child: SvgPicture.asset(
                              'assets/images/fav_icon_3.svg',
                            ),
                          ),

                          //NOTIFICATION ICON
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 7,
                                      blurRadius: 11,
                                      offset: const Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                height: mediaQuery.size.width * 0.09,
                                width: mediaQuery.size.width * 0.09,
                                child: SvgPicture.asset(
                                  'assets/images/bell_icon_1.svg',
                                ),
                              ),

                              //NOTIFICATION NUMBER
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(
                                  left: mediaQuery.size.width * 0.045,
                                  top: mediaQuery.size.width * 0.01,
                                ),
                                decoration: const BoxDecoration(
                                    color: kColorOrangeDark,
                                    shape: BoxShape.circle),
                                height: mediaQuery.size.width * 0.04,
                                width: mediaQuery.size.width * 0.04,
                                child: Text(
                                  '2',
                                  style: kTextMedium.copyWith(
                                    color: Colors.white,
                                    fontSize: mediaQuery.size.width * 0.03,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //PROFILE ICON
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: mediaQuery.size.width * 0.006,
                                  color: Colors.white),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/profile_illus.png'),
                              ),
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 7,
                                  blurRadius: 11,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: mediaQuery.size.width * 0.09,
                            width: mediaQuery.size.width * 0.09,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //WELCOME MYPCOT !!
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.size.width * 0.05,
                ),
                height: mediaQuery.size.height * 0.1,
                // color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Welcome, Mypcot',
                              style: kTextMedium.copyWith(
                                fontSize: mediaQuery.size.height * 0.024,
                                color: kTextColor.withOpacity(0.8),
                              ),
                            ),
                            Text(
                              ' !!',
                              style: kTextBold.copyWith(
                                fontSize: mediaQuery.size.height * 0.03,
                                color: kTextColor.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mediaQuery.size.height * 0.003,
                        ),
                        Text(
                          'here is your dashboard....',
                          style: kTextRegular.copyWith(
                            fontSize: mediaQuery.size.height * 0.018,
                            color: kTextColor.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),

                    //SEACRH ICON
                    Container(
                      margin:
                          EdgeInsets.only(top: mediaQuery.size.height * 0.013),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 7,
                            blurRadius: 11,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: mediaQuery.size.height * 0.14,
                      width: mediaQuery.size.width * 0.14,
                      child: SvgPicture.asset(
                        'assets/images/search_icon.svg',
                      ),
                    ),
                  ],
                ),
              ),

              //LIST CARDS
              Container(
                height: mediaQuery.size.height * 0.33,
                margin: EdgeInsets.only(
                  top: mediaQuery.size.height * 0.03,
                  bottom: mediaQuery.size.height * 0.015,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //ORDERS
                    Stack(
                      children: [
                        //Stack Layer
                        Container(
                          height: mediaQuery.size.height * 0.33,
                          // color: Colors.red.withOpacity(0.1),
                          // width: mediaQuery.size.width,
                        ),

                        //Main Card
                        Container(
                          height: mediaQuery.size.height * 0.313,
                          margin: EdgeInsets.only(
                            left: mediaQuery.size.width * 0.05,
                            right: mediaQuery.size.width * 0.05,
                            top: mediaQuery.size.height * 0.009,
                          ),
                          padding: EdgeInsets.only(
                            left: mediaQuery.size.width * 0.05,
                            right: mediaQuery.size.width * 0.05,
                            top: mediaQuery.size.height * 0.05,
                          ),
                          width: mediaQuery.size.width * 0.9,
                          decoration: BoxDecoration(
                            color: kColorBlue,
                            borderRadius: BorderRadius.circular(
                              mediaQuery.size.height * 0.026,
                            ),
                          ),

                          //ORDERS IMAGE
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: mediaQuery.size.height * 0.16,
                                height: mediaQuery.size.height * 0.16,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: SvgPicture.asset(
                                  dataList.ordersList[0].imgUrl,
                                  fit: BoxFit.contain,
                                ),
                              ),

                              SizedBox(
                                height: mediaQuery.size.height * 0.035,
                              ),

                              //ORDERS BUTTON
                              Container(
                                margin: EdgeInsets.only(
                                  left: mediaQuery.size.width * 0.035,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: mediaQuery.size.width * 0.083,
                                  vertical: mediaQuery.size.width * 0.021,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    mediaQuery.size.height * 0.015,
                                  ),
                                  color: kColorOrangeDark,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  dataList.ordersList[0].title,
                                  style: kTextRegular.copyWith(
                                    fontSize: mediaQuery.size.height * 0.018,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //ORANGE CARD
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: const Offset(0, 3),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(
                                  mediaQuery.size.height * 0.018,
                                ),
                                color: kColorOrangeDark,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: mediaQuery.size.width * 0.03,
                                vertical: mediaQuery.size.height * 0.015,
                              ),
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.48,
                              ),
                              height: mediaQuery.size.height * 0.095,
                              width: mediaQuery.size.width * 0.36,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'You have ',
                                        style: kTextRegular.copyWith(
                                            fontSize:
                                                mediaQuery.size.height * 0.018,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        dataList.ordersList[0].ordersActive,
                                        style: kTextBold.copyWith(
                                            fontSize:
                                                mediaQuery.size.height * 0.026,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        ' active',
                                        style: kTextRegular.copyWith(
                                            fontSize:
                                                mediaQuery.size.height * 0.018,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'orders from',
                                    style: kTextRegular.copyWith(
                                        fontSize:
                                            mediaQuery.size.height * 0.018,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),

                            //3 IMAGES
                            //image1
                            Container(
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.4,
                                top: mediaQuery.size.height * 0.065,
                              ),
                              height: mediaQuery.size.height * 0.055,
                              width: mediaQuery.size.width * 0.36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.size.height * 0.002,
                                  color: kColorPink,
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList.ordersList[0].smallImg1,
                                  ),
                                ),
                              ),
                            ),

                            //image2
                            Container(
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.48,
                                top: mediaQuery.size.height * 0.065,
                              ),
                              height: mediaQuery.size.height * 0.055,
                              width: mediaQuery.size.width * 0.36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.size.height * 0.002,
                                  color: kColorPink,
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList.ordersList[0].smallImg2,
                                  ),
                                ),
                              ),
                            ),

                            //image3
                            Container(
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.56,
                                top: mediaQuery.size.height * 0.065,
                              ),
                              height: mediaQuery.size.height * 0.055,
                              width: mediaQuery.size.width * 0.36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.size.height * 0.002,
                                  color: kColorPink,
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList.ordersList[0].smallImg3,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        //PENDING ORDERS CARD
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(
                                  mediaQuery.size.height * 0.015,
                                ),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: mediaQuery.size.width * 0.025,
                                vertical: mediaQuery.size.height * 0.01,
                              ),
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.53,
                                top: mediaQuery.size.height * 0.14,
                              ),
                              height: mediaQuery.size.height * 0.1,
                              width: mediaQuery.size.width * 0.3,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        dataList.ordersList[0].ordersPending,
                                        style: kTextBold.copyWith(
                                            fontSize:
                                                mediaQuery.size.height * 0.03,
                                            color: kTextColor),
                                      ),
                                      Text(
                                        '  Pending',
                                        style: kTextRegular.copyWith(
                                          fontSize:
                                              mediaQuery.size.height * 0.015,
                                          color: kTextColor.withOpacity(0.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Orders from',
                                    style: kTextRegular.copyWith(
                                      fontSize: mediaQuery.size.height * 0.018,
                                      color: kTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //2 IMAGES
                            //image4
                            Container(
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.46,
                                top: mediaQuery.size.height * 0.21,
                              ),
                              height: mediaQuery.size.height * 0.055,
                              width: mediaQuery.size.width * 0.36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.size.height * 0.002,
                                  color: kColorPink,
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList.ordersList[0].smallImg4,
                                  ),
                                ),
                              ),
                            ),

                            //image5
                            Container(
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.54,
                                top: mediaQuery.size.height * 0.21,
                              ),
                              height: mediaQuery.size.height * 0.055,
                              width: mediaQuery.size.width * 0.36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.size.height * 0.002,
                                  color: kColorPink,
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList.ordersList[0].smallImg5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    //SUBSCRIPTIONS
                    Stack(
                      children: [
                        //Stack Layer
                        Container(
                          height: mediaQuery.size.height * 0.33,
                          // color: Colors.red.withOpacity(0.1),
                        ),

                        //Main Card
                        Container(
                          height: mediaQuery.size.height * 0.313,
                          margin: EdgeInsets.only(
                            // left: mediaQuery.size.width * 0.05,
                            right: mediaQuery.size.width * 0.05,
                            top: mediaQuery.size.height * 0.009,
                          ),
                          padding: EdgeInsets.only(
                            left: mediaQuery.size.width * 0.05,
                            right: mediaQuery.size.width * 0.05,
                            top: mediaQuery.size.height * 0.05,
                          ),
                          width: mediaQuery.size.width * 0.9,
                          decoration: BoxDecoration(
                            color: kColorYellow,
                            borderRadius: BorderRadius.circular(
                              mediaQuery.size.height * 0.026,
                            ),
                          ),

                          //SUBSCRIPTIONS IMAGE
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: mediaQuery.size.height * 0.16,
                                height: mediaQuery.size.height * 0.16,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: SvgPicture.asset(
                                  dataList.subsList[0].imgUrl,
                                  fit: BoxFit.contain,
                                ),
                              ),

                              SizedBox(
                                height: mediaQuery.size.height * 0.035,
                              ),

                              //SUBSCRIPTIONS BUTTON
                              Container(
                                // margin: EdgeInsets.only(
                                //   left: mediaQuery.size.width * 0.035,
                                // ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: mediaQuery.size.width * 0.083,
                                  vertical: mediaQuery.size.width * 0.021,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    mediaQuery.size.height * 0.015,
                                  ),
                                  color: kColorBlueDark,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: const Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                // height: 30,
                                // width: 90,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  dataList.subsList[0].title,
                                  style: kTextRegular.copyWith(
                                    fontSize: mediaQuery.size.height * 0.018,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //YELLOW CARD
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  )
                                ],
                                borderRadius: BorderRadius.circular(
                                  mediaQuery.size.height * 0.018,
                                ),
                                color: kColorBlueDark,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: mediaQuery.size.width * 0.03,
                                vertical: mediaQuery.size.height * 0.015,
                              ),
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.42,
                              ),
                              height: mediaQuery.size.height * 0.095,
                              width: mediaQuery.size.width * 0.36,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        dataList.subsList[0].deliveries,
                                        style: kTextBold.copyWith(
                                            fontSize:
                                                mediaQuery.size.height * 0.03,
                                            color: Colors.white),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top:
                                                mediaQuery.size.height * 0.005),
                                        child: Text(
                                          ' deliveries',
                                          style: kTextRegular.copyWith(
                                            fontSize:
                                                mediaQuery.size.height * 0.018,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //ACTIVE SUBSCRIPTIONS CARD
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(
                                  mediaQuery.size.height * 0.015,
                                ),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.02,
                                right: mediaQuery.size.width * 0.02,
                                top: mediaQuery.size.height * 0.017,
                              ),
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.5,
                                top: mediaQuery.size.height * 0.103,
                              ),
                              height: mediaQuery.size.height * 0.08,
                              width: mediaQuery.size.width * 0.27,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        dataList.subsList[0].activeSubs,
                                        style: kTextBold.copyWith(
                                            fontSize:
                                                mediaQuery.size.height * 0.03,
                                            color: kTextColor),
                                      ),
                                      Text(
                                        ' Active',
                                        style: kTextRegular.copyWith(
                                          fontSize:
                                              mediaQuery.size.height * 0.015,
                                          color: kTextColor.withOpacity(0.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: mediaQuery.size.height * 0.003,
                                  ),
                                  Text(
                                    'Subscriptions',
                                    style: kTextRegular.copyWith(
                                        fontSize:
                                            mediaQuery.size.height * 0.018,
                                        color: kTextColor),
                                  ),
                                ],
                              ),
                            ),

                            //PENDING DELIVERIES
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(
                                  mediaQuery.size.height * 0.015,
                                ),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.025,
                                right: mediaQuery.size.width * 0.02,
                                top: mediaQuery.size.height * 0.017,
                              ),
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.54,
                                top: mediaQuery.size.height * 0.195,
                              ),
                              height: mediaQuery.size.height * 0.08,
                              width: mediaQuery.size.width * 0.27,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        dataList.subsList[0].pendingDeliveries,
                                        style: kTextBold.copyWith(
                                            fontSize:
                                                mediaQuery.size.height * 0.03,
                                            color: kTextColor),
                                      ),
                                      Text(
                                        ' Pending',
                                        style: kTextRegular.copyWith(
                                          fontSize:
                                              mediaQuery.size.height * 0.015,
                                          color: kTextColor.withOpacity(0.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: mediaQuery.size.height * 0.003,
                                  ),
                                  Text(
                                    'Deliveries',
                                    style: kTextRegular.copyWith(
                                        fontSize:
                                            mediaQuery.size.height * 0.018,
                                        color: kTextColor),
                                  ),
                                ],
                              ),
                            ),

                            //3 IMAGES
                            //image1
                            Container(
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.34,
                                top: mediaQuery.size.height * 0.065,
                              ),
                              height: mediaQuery.size.height * 0.055,
                              width: mediaQuery.size.width * 0.36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.size.height * 0.0028,
                                  color: kColorBlueDark,
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList.ordersList[0].smallImg1,
                                  ),
                                ),
                              ),
                            ),

                            //image2
                            Container(
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.42,
                                top: mediaQuery.size.height * 0.065,
                              ),
                              height: mediaQuery.size.height * 0.055,
                              width: mediaQuery.size.width * 0.36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.size.height * 0.002,
                                  color: kColorBlueDark,
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList.ordersList[0].smallImg2,
                                  ),
                                ),
                              ),
                            ),

                            //image3
                            Container(
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.50,
                                top: mediaQuery.size.height * 0.065,
                              ),
                              height: mediaQuery.size.height * 0.055,
                              width: mediaQuery.size.width * 0.36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.size.height * 0.0028,
                                  color: kColorBlueDark,
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList.ordersList[0].smallImg3,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    //CUSTOMERS
                    Stack(
                      children: [
                        //Stack Layer
                        Container(
                          height: mediaQuery.size.height * 0.33,
                          // color: Colors.red.withOpacity(0.1),
                        ),

                        //Main Card
                        Container(
                          height: mediaQuery.size.height * 0.313,
                          margin: EdgeInsets.only(
                            // left: mediaQuery.size.width * 0.05,
                            right: mediaQuery.size.width * 0.05,
                            top: mediaQuery.size.height * 0.009,
                          ),
                          padding: EdgeInsets.only(
                            left: mediaQuery.size.width * 0.05,
                            right: mediaQuery.size.width * 0.05,
                            top: mediaQuery.size.height * 0.05,
                          ),
                          width: mediaQuery.size.width * 0.9,
                          decoration: BoxDecoration(
                            color: kColorGreen,
                            borderRadius: BorderRadius.circular(
                              mediaQuery.size.height * 0.026,
                            ),
                          ),

                          //CUSTOMERS IMAGE
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: mediaQuery.size.height * 0.16,
                                height: mediaQuery.size.height * 0.16,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: SvgPicture.asset(
                                  dataList.customersList[0].imgUrl,
                                  fit: BoxFit.contain,
                                ),
                              ),

                              SizedBox(
                                height: mediaQuery.size.height * 0.035,
                              ),

                              //VIEW CUSTOMERS BUTTON
                              Container(
                                // margin: EdgeInsets.only(
                                //   left: mediaQuery.size.width * 0.035,
                                // ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: mediaQuery.size.width * 0.05,
                                  vertical: mediaQuery.size.width * 0.021,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    mediaQuery.size.height * 0.015,
                                  ),
                                  color: kColorPink,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: const Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                // height: 30,
                                // width: 90,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  dataList.customersList[0].title,
                                  style: kTextRegular.copyWith(
                                    fontSize: mediaQuery.size.height * 0.018,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //PINK CARD
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  )
                                ],
                                borderRadius: BorderRadius.circular(
                                  mediaQuery.size.height * 0.018,
                                ),
                                color: kColorPink,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: mediaQuery.size.width * 0.03,
                                vertical: mediaQuery.size.height * 0.015,
                              ),
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.42,
                              ),
                              height: mediaQuery.size.height * 0.095,
                              width: mediaQuery.size.width * 0.36,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        dataList.customersList[0].newCustomers,
                                        style: kTextBold.copyWith(
                                            fontSize:
                                                mediaQuery.size.height * 0.029,
                                            color: Colors.white),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top:
                                                mediaQuery.size.height * 0.005),
                                        child: Text(
                                          ' New customers',
                                          style: kTextRegular.copyWith(
                                            fontSize:
                                                mediaQuery.size.height * 0.016,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //GRAPH CARD
                            Container(
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    alignment: Alignment.bottomCenter,
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                      'assets/images/graph1.png',
                                    )),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(
                                  mediaQuery.size.height * 0.015,
                                ),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.02,
                                right: mediaQuery.size.width * 0.02,
                                top: mediaQuery.size.height * 0.02,
                              ),
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.54,
                                top: mediaQuery.size.height * 0.103,
                              ),
                              height: mediaQuery.size.height * 0.1,
                              width: mediaQuery.size.width * 0.31,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        dataList.customersList[0].percentage,
                                        style: kTextBold.copyWith(
                                            fontSize:
                                                mediaQuery.size.height * 0.035,
                                            color: kTextColor),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(
                                            left: mediaQuery.size.width * 0.035,
                                          ),
                                          height: mediaQuery.size.height * 0.03,
                                          width: mediaQuery.size.width * 0.05,
                                          // padding: EdgeInsets.only(top: 5),
                                          child: Image.asset(
                                            'assets/images/up_arrow.png',
                                            color: kColorGreen,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //PENDING DELIVERIES
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(
                                  mediaQuery.size.height * 0.015,
                                ),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.025,
                                right: mediaQuery.size.width * 0.02,
                                top: mediaQuery.size.height * 0.023,
                              ),
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.45,
                                top: mediaQuery.size.height * 0.216,
                              ),
                              height: mediaQuery.size.height * 0.09,
                              width: mediaQuery.size.width * 0.27,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        dataList
                                            .customersList[0].activeCustomers,
                                        style: kTextBold.copyWith(
                                            fontSize:
                                                mediaQuery.size.height * 0.03,
                                            color: kTextColor),
                                      ),
                                      Text(
                                        ' Active',
                                        style: kTextRegular.copyWith(
                                          fontSize:
                                              mediaQuery.size.height * 0.015,
                                          color: kTextColor.withOpacity(0.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: mediaQuery.size.height * 0.0025,
                                  ),
                                  Text(
                                    'Customers',
                                    style: kTextRegular.copyWith(
                                        fontSize:
                                            mediaQuery.size.height * 0.018,
                                        color: kTextColor),
                                  ),
                                ],
                              ),
                            ),

                            //3 SMALL PICS
                            Container(
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.51,
                                top: mediaQuery.size.height * 0.249,
                              ),
                              height: mediaQuery.size.height * 0.037,
                              width: mediaQuery.size.width * 0.38,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.size.width * 0.003,
                                  color: Colors.lightBlue,
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList.ordersList[0].smallImg1,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: mediaQuery.size.height * 0.0235,
                                  left: mediaQuery.size.width * 0.04,
                                ),
                                child: Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: mediaQuery.size.height * 0.012,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.57,
                                top: mediaQuery.size.height * 0.249,
                              ),
                              height: mediaQuery.size.height * 0.037,
                              width: mediaQuery.size.width * 0.38,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.size.width * 0.003,
                                  color: Colors.lightBlue,
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList.ordersList[0].smallImg2,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: mediaQuery.size.height * 0.0235,
                                  left: mediaQuery.size.width * 0.04,
                                ),
                                child: Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: mediaQuery.size.height * 0.012,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.63,
                                top: mediaQuery.size.height * 0.249,
                              ),
                              height: mediaQuery.size.height * 0.037,
                              width: mediaQuery.size.width * 0.38,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.size.width * 0.003,
                                  color: Colors.lightBlue,
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList.ordersList[0].smallImg3,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: mediaQuery.size.height * 0.0235,
                                  left: mediaQuery.size.width * 0.04,
                                ),
                                child: Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: mediaQuery.size.height * 0.012,
                                ),
                              ),
                            ),

                            //3 IMAGES
                            //image1
                            Container(
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.34,
                                top: mediaQuery.size.height * 0.065,
                              ),
                              height: mediaQuery.size.height * 0.055,
                              width: mediaQuery.size.width * 0.36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.size.height * 0.002,
                                  color: Colors.lightBlue.shade300,
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList.ordersList[0].smallImg1,
                                  ),
                                ),
                              ),
                            ),

                            //image2
                            Container(
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.42,
                                top: mediaQuery.size.height * 0.065,
                              ),
                              height: mediaQuery.size.height * 0.055,
                              width: mediaQuery.size.width * 0.36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.size.height * 0.002,
                                  color: Colors.lightBlue.shade300,
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList.ordersList[0].smallImg2,
                                  ),
                                ),
                              ),
                            ),

                            //image3
                            Container(
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.50,
                                top: mediaQuery.size.height * 0.065,
                              ),
                              height: mediaQuery.size.height * 0.055,
                              width: mediaQuery.size.width * 0.36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: mediaQuery.size.height * 0.002,
                                  color: Colors.lightBlue.shade300,
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList.ordersList[0].smallImg3,
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                left: mediaQuery.size.width * 0.61,
                                top: mediaQuery.size.height * 0.082,
                              ),
                              height: mediaQuery.size.height * 0.021,
                              width: mediaQuery.size.height * 0.12,
                              child: Icon(
                                Icons.add,
                                size: mediaQuery.size.height * 0.014,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //CALENDER/TIMELINE
              Container(
                margin: EdgeInsets.only(
                  top: mediaQuery.size.height * 0.025,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.size.width * 0.05,
                ),
                height: mediaQuery.size.height * 0.08,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //DATE
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'January, 23 2021',
                          style: kTextRegular.copyWith(
                            fontSize: mediaQuery.size.height * 0.0175,
                            color: kTextColor.withOpacity(
                              0.8,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: mediaQuery.size.height * 0.007,
                        ),
                        Text(
                          'Today',
                          style: kTextBold.copyWith(
                              fontSize: mediaQuery.size.height * 0.028,
                              color: kTextColor),
                        ),
                      ],
                    ),

                    //TIMELINE title
                    Container(
                      padding: EdgeInsets.only(
                        left: mediaQuery.size.width * 0.07,
                        right: mediaQuery.size.width * 0.035,
                        top: mediaQuery.size.height * 0.01,
                        bottom: mediaQuery.size.height * 0.01,
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(mediaQuery.size.height * 0.6),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 7,
                            blurRadius: 11,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: mediaQuery.size.height * 0.04,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'TIMELINE',
                            style: kTextBold.copyWith(
                              fontSize: mediaQuery.size.height * 0.016,
                              color: kTextColor,
                            ),
                          ),
                          SizedBox(
                            width: mediaQuery.size.width * 0.06,
                          ),
                          SizedBox(
                            height: mediaQuery.size.height * 0.017,
                            width: mediaQuery.size.height * 0.017,
                            child: Image.asset(
                              'assets/images/dropdown.png',
                              color: kTextColor.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Calender and Date
                    Container(
                      padding: EdgeInsets.only(
                        left: mediaQuery.size.width * 0.035,
                        right: mediaQuery.size.width * 0.035,
                        top: mediaQuery.size.height * 0.01,
                        bottom: mediaQuery.size.height * 0.01,
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(mediaQuery.size.height * 0.6),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 7,
                            blurRadius: 11,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: mediaQuery.size.height * 0.04,
                      child: Row(
                        children: [
                          SizedBox(
                            height: mediaQuery.size.height * 0.02,
                            width: mediaQuery.size.height * 0.02,
                            child: SvgPicture.asset(
                              'assets/images/calender_icon.svg',
                              color: kTextColor.withOpacity(0.8),
                            ),
                          ),
                          SizedBox(
                            width: mediaQuery.size.width * 0.015,
                          ),
                          Text(
                            'JAN, 2021',
                            style: kTextBold.copyWith(
                              fontSize: mediaQuery.size.height * 0.016,
                              color: kTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Dates
              Container(
                padding: EdgeInsets.only(
                  left: mediaQuery.size.width * 0.05,
                  top: mediaQuery.size.height * 0.015,
                ),
                height: mediaQuery.size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DateDayWidget(
                      colorDate: kTextColor,
                      colorDay: kTextColor.withOpacity(0.4),
                      mediaQuery: mediaQuery,
                      date: '20',
                      day: 'MON',
                    ),
                    DateDayWidget(
                      colorDate: kTextColor,
                      colorDay: kTextColor.withOpacity(0.4),
                      mediaQuery: mediaQuery,
                      date: '21',
                      day: 'TUE',
                    ),
                    DateDayWidget(
                      colorDate: kTextColor,
                      colorDay: kTextColor.withOpacity(0.4),
                      mediaQuery: mediaQuery,
                      date: '22',
                      day: 'WED',
                    ),
                    Column(
                      children: [
                        DateDayWidget(
                          colorDate: kColorGreenDark,
                          colorDay: kColorGreenDark,
                          mediaQuery: mediaQuery,
                          date: '23',
                          day: 'THU',
                        ),
                        SizedBox(
                          height: mediaQuery.size.height * 0.005,
                        ),
                        Container(
                          height: mediaQuery.size.height * 0.008,
                          width: mediaQuery.size.height * 0.008,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kColorGreenDark,
                          ),
                        ),
                      ],
                    ),
                    DateDayWidget(
                      colorDate: kTextColor,
                      colorDay: kTextColor.withOpacity(0.4),
                      mediaQuery: mediaQuery,
                      date: '24',
                      day: 'FRI',
                    ),
                    DateDayWidget(
                      colorDate: kTextColor,
                      colorDay: kTextColor.withOpacity(0.4),
                      mediaQuery: mediaQuery,
                      date: '25',
                      day: 'SAT',
                    ),
                    DateDayWidget(
                      colorDate: kTextColor,
                      colorDay: kTextColor.withOpacity(0.4),
                      mediaQuery: mediaQuery,
                      date: '26',
                      day: 'SUN',
                    ),
                  ],
                ),
              ),

              //NEW ORDER CREATED
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: mediaQuery.size.width * 0.05,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.size.width * 0.08,
                  vertical: mediaQuery.size.height * 0.035,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    mediaQuery.size.height * 0.025,
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 7,
                      blurRadius: 11,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                height: mediaQuery.size.height * 0.21,
                width: mediaQuery.size.width,
                child: SizedBox(
                  height: mediaQuery.size.height * 0.21,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New order created',
                            style: kTextMedium.copyWith(
                              color: kTextColor.withOpacity(0.8),
                              fontSize: mediaQuery.size.height * 0.025,
                            ),
                          ),
                          SizedBox(
                            height: mediaQuery.size.height * 0.014,
                          ),
                          Text(
                            'New order created with Order',
                            style: kTextRegular.copyWith(
                              color: kTextColor,
                              fontSize: mediaQuery.size.height * 0.019,
                            ),
                          ),
                          SizedBox(
                            height: mediaQuery.size.height * 0.03,
                          ),
                          Text(
                            '09:00 AM',
                            style: kTextBold.copyWith(
                              color: kColorOrange,
                              fontSize: mediaQuery.size.height * 0.015,
                            ),
                          ),
                          SizedBox(
                            height: mediaQuery.size.height * 0.014,
                          ),
                          SizedBox(
                            height: mediaQuery.size.height * 0.016,
                            width: mediaQuery.size.height * 0.016,
                            child: Image.asset(
                              'assets/images/right_arrow.png',
                              color: kColorOrange,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: mediaQuery.size.width * 0.03,
                          right: mediaQuery.size.width * 0.01,
                          top: mediaQuery.size.height * 0.014,
                          bottom: mediaQuery.size.height * 0.014,
                        ),
                        height: mediaQuery.size.height * 0.088,
                        width: mediaQuery.size.height * 0.088,
                        decoration: const BoxDecoration(
                          color: kColorOrange,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/note.png',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // color: Colors.red,
                height: mediaQuery.size.height * 0.1,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(
                mediaQuery.size.height * 0.012,
              ),
            ),
          ),
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                mediaQuery.size.height * 0.1,
              ),
            ),
          ),
        ),
        notchMargin: mediaQuery.size.width * 0.02,
        child: SizedBox(
          height: mediaQuery.size.height * 0.068,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Icon(Icons.home),
              BottomAppBarIconSelected(
                mediaQuery: mediaQuery,
                title: 'Home',
                imgUrl: 'assets/images/home_icon.svg',
              ),
              BottomAppBarIconNotSelected(
                mediaQuery: mediaQuery,
                title: 'Customers',
                imgUrl: 'assets/images/customers_icon.svg',
              ),
              SizedBox(
                width: mediaQuery.size.width * 0.05,
              ),
              BottomAppBarIconNotSelected(
                mediaQuery: mediaQuery,
                title: 'Khata',
                imgUrl: 'assets/images/khata_icon.svg',
              ),
              BottomAppBarIconNotSelected(
                mediaQuery: mediaQuery,
                title: 'Orders',
                imgUrl: 'assets/images/orders_icon.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomAppBarIconSelected extends StatelessWidget {
  const BottomAppBarIconSelected({
    Key? key,
    required this.mediaQuery,
    required this.imgUrl,
    required this.title,
  }) : super(key: key);

  final MediaQueryData mediaQuery;
  final String imgUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: mediaQuery.size.height * 0.025,
          width: mediaQuery.size.height * 0.025,
          child: SvgPicture.asset(imgUrl),
        ),
        SizedBox(
          height: mediaQuery.size.height * 0.002,
        ),
        Text(
          title,
          style: kTextBold.copyWith(
            color: kTextColor,
            fontSize: mediaQuery.size.height * 0.019,
          ),
        ),
      ],
    );
  }
}

class BottomAppBarIconNotSelected extends StatelessWidget {
  const BottomAppBarIconNotSelected({
    Key? key,
    required this.mediaQuery,
    required this.imgUrl,
    required this.title,
  }) : super(key: key);

  final MediaQueryData mediaQuery;
  final String imgUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: mediaQuery.size.height * 0.025,
          width: mediaQuery.size.height * 0.025,
          child: SvgPicture.asset(imgUrl),
        ),
        SizedBox(
          height: mediaQuery.size.height * 0.002,
        ),
        Text(
          title,
          style: kTextRegular.copyWith(
            color: kTextColor,
            fontSize: mediaQuery.size.height * 0.019,
          ),
        ),
      ],
    );
  }
}

class DateDayWidget extends StatelessWidget {
  const DateDayWidget({
    Key? key,
    required this.mediaQuery,
    required this.date,
    required this.day,
    required this.colorDate,
    required this.colorDay,
  }) : super(key: key);

  final MediaQueryData mediaQuery;
  final String day;
  final String date;
  final Color colorDay;
  final Color colorDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          day,
          style: kTextRegular.copyWith(
            fontSize: mediaQuery.size.height * 0.021,
            color: colorDay,
          ),
        ),
        SizedBox(
          height: mediaQuery.size.height * 0.003,
        ),
        Text(
          date,
          style: kTextBold.copyWith(
              fontSize: mediaQuery.size.height * 0.022, color: colorDate),
        ),
      ],
    );
  }
}
