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
          backgroundColor: const Color(0xFF2C3D63),
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
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: 30,
              // ),
              Container(
                height: 60,
                width: mediaQuery.size.width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 35,
                      width: 35,
                      margin: EdgeInsets.only(left: 20),
                      child: SvgPicture.asset(
                        'assets/images/menu_icon_1.svg',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 35,
                            width: 35,
                            child: SvgPicture.asset(
                              'assets/images/fav_icon_3.svg',
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                height: 35,
                                width: 35,
                                child: SvgPicture.asset(
                                  'assets/images/bell_icon_1.svg',
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(left: 18, top: 6),
                                decoration: BoxDecoration(
                                    color: kColorOrangeDark,
                                    shape: BoxShape.circle),
                                height: 14,
                                width: 14,
                                child: Text(
                                  '2',
                                  style: kTextMedium.copyWith(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/profile_illus.png')),
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 35,
                            width: 35,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Welcome mypcot

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 80,
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
                                  fontSize: 20,
                                  color: kTextColor.withOpacity(0.9)),
                            ),
                            Text(
                              ' !!',
                              style: kTextBold.copyWith(
                                  fontSize: 25,
                                  color: kTextColor.withOpacity(0.9)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'here is your dashboard....',
                          style: kTextRegular.copyWith(
                              fontSize: 15, color: kTextColor.withOpacity(0.9)),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 60,
                      width: 60,
                      child: SvgPicture.asset(
                        'assets/images/search_icon.svg',
                      ),
                    ),
                  ],
                ),
              ),

              //List Cards

              Container(
                height: 270,
                margin: EdgeInsets.only(top: 20, bottom: 20),

                // width: mediaQuery.size.width,
                // color: Colors.red.withOpacity(0.2),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //ORDERS
                    Stack(
                      children: [
                        Container(
                          height: 260,
                          // color: Colors.red.withOpacity(0.1),
                          width: mediaQuery.size.width,
                        ),
                        Container(
                          height: 260,
                          margin: EdgeInsets.only(left: 20, top: 10),
                          padding: EdgeInsets.only(left: 20, top: 30),
                          width: mediaQuery.size.width * 0.91,
                          decoration: BoxDecoration(
                            color: kColorBlue,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 140,
                                height: 140,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: SvgPicture.asset(
                                  dataList.ordersList[0].imgUrl,
                                  fit: BoxFit.contain,
                                ),
                              ),

                              SizedBox(
                                height: 30,
                              ),

                              //Text
                              Container(
                                margin: EdgeInsets.only(left: 13),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 32, vertical: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: kColorOrangeDark,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                // height: 30,
                                // width: 90,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  dataList.ordersList[0].title,
                                  style: kTextRegular.copyWith(
                                      fontSize: 17, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                                color: kColorOrangeDark,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              margin: EdgeInsets.only(left: 200),
                              height: 90,
                              width: 150,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'You have ',
                                        style: kTextRegular.copyWith(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                      Text(
                                        '${dataList.ordersList[0].ordersActive}',
                                        style: kTextBold.copyWith(
                                            fontSize: 25, color: Colors.white),
                                      ),
                                      Text(
                                        ' active',
                                        style: kTextRegular.copyWith(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'orders from',
                                    style: kTextRegular.copyWith(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),

                            //3 Pics
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 15),
                                  margin: EdgeInsets.only(
                                    left: 170,
                                    top: 65,
                                  ),
                                  height: 45,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.5,
                                        color: kColorPink,
                                      ),
                                      color: Colors.blue.withOpacity(0.5),
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          dataList.ordersList[0].smallImg1,
                                        ),
                                      )),
                                  // child: Image.asset(
                                  //   dataList.ordersList[0].smallImg1,
                                  //   fit: BoxFit.contain,
                                  // ),
                                ),
                              ],
                            ),

                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              margin: EdgeInsets.only(
                                left: 200,
                                top: 65,
                              ),
                              height: 45,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,
                                    color: kColorPink,
                                  ),
                                  color: Colors.blue.withOpacity(0.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      dataList.ordersList[0].smallImg2,
                                    ),
                                  )),
                              // child: Image.asset(
                              //   dataList.ordersList[0].smallImg1,
                              //   fit: BoxFit.contain,
                              // ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              margin: EdgeInsets.only(
                                left: 230,
                                top: 65,
                              ),
                              height: 45,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,
                                    color: kColorPink,
                                  ),
                                  color: Colors.blue.withOpacity(0.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      dataList.ordersList[0].smallImg3,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              margin: EdgeInsets.only(left: 220, top: 130),
                              height: 90,
                              width: 135,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '${dataList.ordersList[0].ordersPending}',
                                        style: kTextBold.copyWith(
                                            fontSize: 26, color: kTextColor),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          ' Pending',
                                          style: kTextRegular.copyWith(
                                              fontSize: 14,
                                              color:
                                                  kTextColor.withOpacity(0.8)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Orders from',
                                    style: kTextRegular.copyWith(
                                        fontSize: 18, color: kTextColor),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              margin: EdgeInsets.only(
                                left: 200,
                                top: 195,
                              ),
                              height: 45,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,
                                    color: kColorPink,
                                  ),
                                  color: Colors.blue.withOpacity(0.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      dataList.ordersList[0].smallImg4,
                                    ),
                                  )),
                              // child: Image.asset(
                              //   dataList.ordersList[0].smallImg1,
                              //   fit: BoxFit.contain,
                              // ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              margin: EdgeInsets.only(
                                left: 230,
                                top: 195,
                              ),
                              height: 45,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,
                                    color: kColorPink,
                                  ),
                                  color: Colors.blue.withOpacity(0.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      dataList.ordersList[0].smallImg5,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),

                    //SUBSCRIPTIONS
                    Stack(
                      children: [
                        Container(
                          height: 260,
                          // color: Colors.red.withOpacity(0.1),
                          // width: mediaQuery.size.width,
                        ),
                        Container(
                          height: 260,
                          // margin: EdgeInsets.only(top: 10),
                          // padding: EdgeInsets.only(left: 20, top: 20),
                          margin: EdgeInsets.only(
                            top: 10,
                            right: 20,
                          ),
                          padding:
                              EdgeInsets.only(right: 20, top: 30, left: 20),
                          width: mediaQuery.size.width * 0.91,
                          decoration: BoxDecoration(
                            color: kColorYellow,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 140,
                                height: 140,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: SvgPicture.asset(
                                  dataList.subsList[0].imgUrl,
                                  fit: BoxFit.contain,
                                ),
                              ),

                              SizedBox(
                                height: 25,
                              ),

                              //Text
                              Container(
                                // margin: EdgeInsets.only(left: 10),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 32, vertical: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: kColorBlueDark,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: Offset(
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
                                      fontSize: 17, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                                color: kColorBlueDark,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              margin: EdgeInsets.only(left: 180),
                              height: 90,
                              width: 150,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Text(
                                      //   'You have ',
                                      //   style: kTextRegular.copyWith(
                                      //       fontSize: 16, color: Colors.white),
                                      // ),
                                      Text(
                                        '${dataList.subsList[0].deliveries}',
                                        style: kTextBold.copyWith(
                                            fontSize: 25, color: Colors.white),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          ' deliveries',
                                          style: kTextRegular.copyWith(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Text(
                                  //   'orders from',
                                  //   style: kTextRegular.copyWith(
                                  //       fontSize: 16, color: Colors.white),
                                  // ),
                                ],
                              ),
                            ),

                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 15),
                              margin: EdgeInsets.only(left: 210, top: 100),
                              height: 70,
                              width: 120,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${dataList.subsList[0].activeSubs}',
                                        style: kTextBold.copyWith(
                                            fontSize: 26, color: kTextColor),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          ' Active',
                                          style: kTextRegular.copyWith(
                                              fontSize: 13,
                                              color:
                                                  kTextColor.withOpacity(0.8)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Subscriptions',
                                    style: kTextRegular.copyWith(
                                        fontSize: 17, color: kTextColor),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
                              margin: EdgeInsets.only(left: 225, top: 180),
                              height: 70,
                              width: 125,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${dataList.subsList[0].pendingDeliveries}',
                                        style: kTextBold.copyWith(
                                            fontSize: 26, color: kTextColor),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          ' Pending',
                                          style: kTextRegular.copyWith(
                                              fontSize: 13,
                                              color:
                                                  kTextColor.withOpacity(0.8)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Deliveries',
                                    style: kTextRegular.copyWith(
                                        fontSize: 17, color: kTextColor),
                                  ),
                                ],
                              ),
                            ),

                            //3 Pics
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 15),
                                  margin: EdgeInsets.only(
                                    left: 150,
                                    top: 65,
                                  ),
                                  height: 45,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.5,
                                        color: Colors.deepPurple,
                                      ),
                                      color: Colors.blue.withOpacity(0.5),
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          dataList.ordersList[0].smallImg1,
                                        ),
                                      )),
                                  // child: Image.asset(
                                  //   dataList.ordersList[0].smallImg1,
                                  //   fit: BoxFit.contain,
                                  // ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              margin: EdgeInsets.only(
                                left: 180,
                                top: 65,
                              ),
                              height: 45,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,
                                    color: Colors.deepPurple,
                                  ),
                                  color: Colors.blue.withOpacity(0.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      dataList.ordersList[0].smallImg2,
                                    ),
                                  )),
                              // child: Image.asset(
                              //   dataList.ordersList[0].smallImg1,
                              //   fit: BoxFit.contain,
                              // ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              margin: EdgeInsets.only(
                                left: 210,
                                top: 65,
                              ),
                              height: 45,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,
                                    color: Colors.deepPurple,
                                  ),
                                  color: Colors.blue.withOpacity(0.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      dataList.ordersList[0].smallImg3,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            // Container(
                            //   padding: EdgeInsets.symmetric(
                            //       horizontal: 10, vertical: 15),
                            //   margin: EdgeInsets.only(
                            //     left: 200,
                            //     top: 185,
                            //   ),
                            //   height: 45,
                            //   width: 150,
                            //   decoration: BoxDecoration(
                            //       border: Border.all(
                            //         width: 1.5,
                            //         color: kColorPink,
                            //       ),
                            //       color: Colors.blue.withOpacity(0.5),
                            //       shape: BoxShape.circle,
                            //       image: DecorationImage(
                            //         image: AssetImage(
                            //           dataList.ordersList[0].smallImg4,
                            //         ),
                            //       )),
                            //   // child: Image.asset(
                            //   //   dataList.ordersList[0].smallImg1,
                            //   //   fit: BoxFit.contain,
                            //   // ),
                            // ),
                            // Container(
                            //   padding: EdgeInsets.symmetric(
                            //       horizontal: 10, vertical: 15),
                            //   margin: EdgeInsets.only(
                            //     left: 230,
                            //     top: 185,
                            //   ),
                            //   height: 45,
                            //   width: 150,
                            //   decoration: BoxDecoration(
                            //       border: Border.all(
                            //         width: 1.5,
                            //         color: kColorPink,
                            //       ),
                            //       color: Colors.blue.withOpacity(0.5),
                            //       shape: BoxShape.circle,
                            //       image: DecorationImage(
                            //         image: AssetImage(
                            //           dataList.ordersList[0].smallImg5,
                            //         ),
                            //       )),
                            // ),
                          ],
                        ),
                      ],
                    ),

                    //CUSTOMERS
                    Stack(
                      children: [
                        Container(
                          height: 260,
                          // color: Colors.red.withOpacity(0.1),
                          // width: mediaQuery.size.width,
                        ),
                        Container(
                          height: 260,
                          // margin: EdgeInsets.only(top: 10),
                          // padding: EdgeInsets.only(left: 20, top: 20),
                          margin: EdgeInsets.only(
                            top: 10,
                            // right: 20,
                          ),
                          padding:
                              EdgeInsets.only(right: 20, top: 35, left: 20),
                          width: mediaQuery.size.width * 0.91,
                          decoration: BoxDecoration(
                            color: kColorGreen,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 140,
                                height: 140,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: SvgPicture.asset(
                                  dataList.customersList[0].imgUrl,
                                  fit: BoxFit.contain,
                                ),
                              ),

                              SizedBox(
                                height: 25,
                              ),

                              //Text
                              Container(
                                // margin: EdgeInsets.only(left: 10),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: kColorPink,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: Offset(
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
                                      fontSize: 17, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                                color: kColorPink,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              margin: EdgeInsets.only(left: 180),
                              height: 90,
                              width: 150,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Text(
                                      //   'You have ',
                                      //   style: kTextRegular.copyWith(
                                      //       fontSize: 16, color: Colors.white),
                                      // ),
                                      Text(
                                        '${dataList.customersList[0].newCustomers}',
                                        style: kTextBold.copyWith(
                                            fontSize: 25, color: Colors.white),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          ' New customers',
                                          style: kTextRegular.copyWith(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Text(
                                  //   'orders from',
                                  //   style: kTextRegular.copyWith(
                                  //       fontSize: 16, color: Colors.white),
                                  // ),
                                ],
                              ),
                            ),

                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    alignment: Alignment.bottomCenter,
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                      'assets/images/graph1.png',
                                    )),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.only(left: 15, top: 15),
                              margin: EdgeInsets.only(left: 230, top: 100),
                              height: 80,
                              width: 130,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${dataList.customersList[0].percentage}',
                                        style: kTextBold.copyWith(
                                            fontSize: 30, color: kTextColor),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                          height: 25,
                                          width: 30,
                                          padding: EdgeInsets.only(bottom: 3),
                                          child: Image.asset(
                                            'assets/images/up_arrow.png',
                                            color: kColorGreen,
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  // Text(
                                  //   'Subscriptions',
                                  //   style: kTextRegular.copyWith(
                                  //       fontSize: 17, color: kTextColor),
                                  // ),
                                ],
                              ),
                            ),

                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
                              margin: EdgeInsets.only(left: 195, top: 190),
                              height: 70,
                              width: 105,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${dataList.customersList[0].activeCustomers}',
                                        style: kTextBold.copyWith(
                                            fontSize: 26, color: kTextColor),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          ' Active',
                                          style: kTextRegular.copyWith(
                                              fontSize: 13,
                                              color:
                                                  kTextColor.withOpacity(0.8)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Customers',
                                    style: kTextRegular.copyWith(
                                        fontSize: 17, color: kTextColor),
                                  ),
                                ],
                              ),
                            ),

                            //3 Small Pics

                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 20.0, left: 16),
                                child: Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Colors.green,
                                ),
                              ),
                              // padding: EdgeInsets.symmetric(
                              //     horizontal: 10, vertical: 15),
                              margin: EdgeInsets.only(
                                left: 220,
                                top: 210,
                              ),
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,
                                    color: Colors.lightBlue,
                                  ),
                                  color: Colors.blue.withOpacity(0.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      dataList.ordersList[0].smallImg1,
                                    ),
                                  )),
                              // child: Image.asset(
                              //   dataList.ordersList[0].smallImg1,
                              //   fit: BoxFit.contain,
                              // ),
                            ),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 20.0, left: 16),
                                child: Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Colors.green,
                                ),
                              ),
                              // padding: EdgeInsets.symmetric(
                              //     horizontal: 10, vertical: 15),
                              margin: EdgeInsets.only(
                                left: 245,
                                top: 210,
                              ),
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,
                                    color: Colors.lightBlue,
                                  ),
                                  color: Colors.blue.withOpacity(0.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      dataList.ordersList[0].smallImg2,
                                    ),
                                  )),
                              // child: Image.asset(
                              //   dataList.ordersList[0].smallImg1,
                              //   fit: BoxFit.contain,
                              // ),
                            ),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 20.0, left: 16),
                                child: Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Colors.green,
                                ),
                              ),
                              // padding: EdgeInsets.only(left: 10, top: 15),
                              margin: EdgeInsets.only(
                                left: 290,
                                top: 210,
                              ),
                              height: 30,
                              width: 110,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,
                                    color: Colors.lightBlue,
                                  ),
                                  color: Colors.blue.withOpacity(0.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      dataList.ordersList[0].smallImg3,
                                    ),
                                  )),
                            ),

                            //3 Pics
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 15),
                                  margin: EdgeInsets.only(
                                    left: 150,
                                    top: 65,
                                  ),
                                  height: 45,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.5,
                                        color: Colors.lightBlue,
                                      ),
                                      color: Colors.blue.withOpacity(0.5),
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          dataList.ordersList[0].smallImg1,
                                        ),
                                      )),
                                  // child: Image.asset(
                                  //   dataList.ordersList[0].smallImg1,
                                  //   fit: BoxFit.contain,
                                  // ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              margin: EdgeInsets.only(
                                left: 180,
                                top: 65,
                              ),
                              height: 45,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,
                                    color: Colors.lightBlue,
                                  ),
                                  color: Colors.blue.withOpacity(0.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      dataList.ordersList[0].smallImg2,
                                    ),
                                  )),
                              // child: Image.asset(
                              //   dataList.ordersList[0].smallImg1,
                              //   fit: BoxFit.contain,
                              // ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              margin: EdgeInsets.only(
                                left: 210,
                                top: 65,
                              ),
                              height: 45,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,
                                    color: Colors.lightBlue,
                                  ),
                                  color: Colors.blue.withOpacity(0.5),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      dataList.ordersList[0].smallImg3,
                                    ),
                                  )),
                            ),
                            Container(
                              alignment: Alignment.center,
                              // padding: EdgeInsets.symmetric(
                              //     horizontal: 10, vertical: 15),
                              margin: EdgeInsets.only(
                                left: 257,
                                top: 76,
                              ),
                              child: Icon(
                                Icons.add,
                                size: 14,
                              ),
                              // child: Icon(Icons.add),
                              height: 20,
                              width: 100,
                              decoration: BoxDecoration(
                                // border: Border.all(
                                //   width: 1.5,
                                //   // color: Colors.deepPurple,
                                // ),
                                color: Colors.white,
                                shape: BoxShape.circle,
                                // image: DecorationImage(
                                //   image: AssetImage(
                                //     dataList.ordersList[0].smallImg3,
                                //   ),
                                // ),
                              ),
                            ),
                          ],
                        ),
                        // Stack(
                        //   children: [
                        //     // Container(
                        //     //   padding: EdgeInsets.symmetric(
                        //     //       horizontal: 10, vertical: 15),
                        //     //   margin: EdgeInsets.only(
                        //     //     left: 200,
                        //     //     top: 185,
                        //     //   ),
                        //     //   height: 45,
                        //     //   width: 150,
                        //     //   decoration: BoxDecoration(
                        //     //       border: Border.all(
                        //     //         width: 1.5,
                        //     //         color: kColorPink,
                        //     //       ),
                        //     //       color: Colors.blue.withOpacity(0.5),
                        //     //       shape: BoxShape.circle,
                        //     //       image: DecorationImage(
                        //     //         image: AssetImage(
                        //     //           dataList.ordersList[0].smallImg4,
                        //     //         ),
                        //     //       )),
                        //     //   // child: Image.asset(
                        //     //   //   dataList.ordersList[0].smallImg1,
                        //     //   //   fit: BoxFit.contain,
                        //     //   // ),
                        //     // ),
                        //     // Container(
                        //     //   padding: EdgeInsets.symmetric(
                        //     //       horizontal: 10, vertical: 15),
                        //     //   margin: EdgeInsets.only(
                        //     //     left: 230,
                        //     //     top: 185,
                        //     //   ),
                        //     //   height: 45,
                        //     //   width: 150,
                        //     //   decoration: BoxDecoration(
                        //     //       border: Border.all(
                        //     //         width: 1.5,
                        //     //         color: kColorPink,
                        //     //       ),
                        //     //       color: Colors.blue.withOpacity(0.5),
                        //     //       shape: BoxShape.circle,
                        //     //       image: DecorationImage(
                        //     //         image: AssetImage(
                        //     //           dataList.ordersList[0].smallImg5,
                        //     //         ),
                        //     //       )),
                        //     // ),
                        //   ],
                        // ),
                      ],
                    ),
                  ],
                ),
              ),

              //Calender/Timeline
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 20),
                // color: Colors.yellow,
                height: 75,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Date
                    Container(
                      // color: Colors.purple,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'January, 23 2021',
                            style: kTextRegular.copyWith(
                                fontSize: 15, color: kTextColor),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Today',
                            style: kTextBold.copyWith(
                                fontSize: 24, color: kTextColor),
                          ),
                        ],
                      ),
                    ),

                    //TIMELINE title
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 30,
                      // width: 40,
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'TIMELINE',
                            style: kTextMedium.copyWith(
                                fontSize: 14, color: kTextColor),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 14,
                            width: 14,
                            child: Image.asset(
                              'assets/images/dropdown.png',
                              color: kTextColor,
                            ),
                          ),
                          // Icon(
                          //   Icons.arrow_drop_down,
                          //   size: 30,
                          // ),
                        ],
                      ),
                    ),

                    //Calender and Date
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 30,
                      child: Row(
                        children: [
                          Container(
                            height: 17,
                            width: 17,
                            child: SvgPicture.asset(
                              'assets/images/calender_icon.svg',
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'JAN, 2021',
                            style: kTextMedium.copyWith(
                                fontSize: 14, color: kTextColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Dates
              Container(
                padding: EdgeInsets.only(left: 20, top: 5),
                // color: Colors.pink,
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'MON',
                          style: kTextRegular.copyWith(
                              fontSize: 18, color: kTextColor.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '20',
                          style: kTextBold.copyWith(
                              fontSize: 17, color: kTextColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'TUE',
                          style: kTextRegular.copyWith(
                              fontSize: 18, color: kTextColor.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '21',
                          style: kTextBold.copyWith(
                              fontSize: 17, color: kTextColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'WED',
                          style: kTextRegular.copyWith(
                              fontSize: 18, color: kTextColor.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '22',
                          style: kTextBold.copyWith(
                              fontSize: 17, color: kTextColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'THU',
                          style: kTextRegular.copyWith(
                              fontSize: 18,
                              color: kColorGreenDark.withOpacity(0.8)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '23',
                          style: kTextBold.copyWith(
                              fontSize: 17, color: kColorGreenDark),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kColorGreenDark,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'FRI',
                          style: kTextRegular.copyWith(
                              fontSize: 18, color: kTextColor.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '24',
                          style: kTextBold.copyWith(
                              fontSize: 17, color: kTextColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'SAT',
                          style: kTextRegular.copyWith(
                              fontSize: 18, color: kTextColor.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '25',
                          style: kTextBold.copyWith(
                              fontSize: 17, color: kTextColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'SUN',
                          style: kTextRegular.copyWith(
                              fontSize: 18, color: kTextColor.withOpacity(0.5)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '26',
                          style: kTextBold.copyWith(
                              fontSize: 17, color: kTextColor),
                        ),
                      ],
                    ),
                    // Column(
                    //   children: [
                    //     Text('TUE'),
                    //     Text('21'),
                    //   ],
                    // ),
                    // Column(
                    //   children: [
                    //     Text('WED'),
                    //     Text('22'),
                    //   ],
                    // ),
                    // Column(
                    //   children: [
                    //     Text('THU'),
                    //     Text('23'),
                    //   ],
                    // ),
                    // Column(
                    //   children: [
                    //     Text('FRI'),
                    //     Text('24'),
                    //   ],
                    // ),
                    // Column(
                    //   children: [
                    //     Text('SAT'),
                    //     Text('25'),
                    //   ],
                    // ),
                    // Column(
                    //   children: [
                    //     Text('SUN'),
                    //     Text('26'),
                    //   ],
                    // ),
                  ],
                ),
              ),

              //New Order Created
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                height: 165,
                width: mediaQuery.size.width,
                child: Container(
                  // color: Colors.amber.withOpacity(0.3),
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'New order created',
                              style: kTextMedium.copyWith(
                                  color: kTextColor, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'New order created with Order',
                              style: kTextRegular.copyWith(
                                  color: kTextColor, fontSize: 17),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              '09:00 AM',
                              style: kTextBold.copyWith(
                                  color: kColorOrange, fontSize: 13),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Icon(
                            //   Icons.arrow_forward,
                            //   size: 14,
                            //   color: kColorOrange,
                            // ),
                            Container(
                              height: 14,
                              width: 14,
                              child: Image.asset(
                                'assets/images/right_arrow.png',
                                color: kColorOrange,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // padding: EdgeInsets.all(15),
                        padding: EdgeInsets.only(
                            left: 25, right: 15, top: 15, bottom: 15),
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
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
                height: 100,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        ),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Icon(Icons.home),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 22,
                      width: 22,
                      child: SvgPicture.asset('assets/images/home_icon.svg')),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Home',
                    style: kTextBold.copyWith(color: kTextColor, fontSize: 16),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 22,
                      width: 22,
                      child:
                          SvgPicture.asset('assets/images/customers_icon.svg')),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Customers',
                    style:
                        kTextRegular.copyWith(color: kTextColor, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                width: 60,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 22,
                      width: 22,
                      child: SvgPicture.asset('assets/images/khata_icon.svg')),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Khata',
                    style:
                        kTextRegular.copyWith(color: kTextColor, fontSize: 16),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 22,
                      width: 22,
                      child: SvgPicture.asset('assets/images/orders_icon.svg')),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Orders',
                    style:
                        kTextRegular.copyWith(color: kTextColor, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
