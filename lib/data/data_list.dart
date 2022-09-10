import 'package:mypcot/models/customers.dart';
import 'package:mypcot/models/orders.dart';
import 'package:mypcot/models/subscriptions.dart';

class DataList {
  List<Orders> ordersList = [
    Orders(
      imgUrl: 'assets/images/orders_img.svg',
      title: 'Orders',
      ordersActive: '3',
      ordersPending: '02',
      smallImg1: 'assets/images/profile1.jpg',
      smallImg2: 'assets/images/profile2.jpg',
      smallImg3: 'assets/images/profile3.jpg',
      smallImg4: 'assets/images/profile4.jpg',
      smallImg5: 'assets/images/profile5.jpg',
    ),
  ];

  List<Subscriptions> subsList = [
    Subscriptions(
      imgUrl: 'assets/images/sub_img.svg',
      title: 'Subscriptions',
      deliveries: '03',
      activeSubs: '10',
      pendingDeliveries: '119',
      smallImg1: 'assets/images/profile1.jpg',
      smallImg2: 'assets/images/profile2.jpg',
      smallImg3: 'assets/images/profile3.jpg',
    ),
  ];

  List<Customers> customersList = [
    Customers(
      imgUrl: 'assets/images/customers_img.svg',
      title: 'View Customers',
      newCustomers: '15',
      percentage: '1.8%',
      activeCustomers: '10',
      smallImg1: 'assets/images/profile1.jpg',
      smallImg2: 'assets/images/profile2.jpg',
      smallImg3: 'assets/images/profile3.jpg',
    ),
  ];
}
