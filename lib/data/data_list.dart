import 'package:mypcot/models/customers.dart';
import 'package:mypcot/models/orders.dart';
import 'package:mypcot/models/subscriptions.dart';

class DataList {
  List<Orders> ordersList = [
    Orders(
      imgUrl: 'assets/images/orders_img.svg',
      title: 'Orders',
      ordersActive: '3',
      ordersPending: '03',
      smallImg1: 'assets/images/orders_img.svg',
      smallImg2: 'assets/images/orders_img.svg',
      smallImg3: 'assets/images/orders_img.svg',
      smallImg4: 'assets/images/orders_img.svg',
      smallImg5: 'assets/images/orders_img.svg',
    ),
  ];

  List<Subscriptions> subsList = [
    Subscriptions(
      imgUrl: 'assets/images/sub_img.svg',
      title: 'Subscriptions',
      deliveries: '03',
      activeSubs: '10',
      pendingDeliveries: '119',
      smallImg1: 'assets/images/sub_img.svg',
      smallImg2: 'assets/images/sub_img.svg',
      smallImg3: 'assets/images/sub_img.svg',
    ),
  ];

  List<Customers> customersList = [
    Customers(
      imgUrl: 'assets/images/customers_img.svg',
      title: 'View Customers',
      newCustomers: '15',
      percentage: '1.8%',
      activeCustomers: '10',
      smallImg1: 'assets/images/customers_img.svg',
      smallImg2: 'assets/images/customers_img.svg',
      smallImg3: 'assets/images/customers_img.svg',
    ),
  ];
}
