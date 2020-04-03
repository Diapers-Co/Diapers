import 'package:baby_care/models/subscribtion_model.dart';
class Category{
  String image;
  String ageRange;
  List<Subscription> subscribtions;

  Category({
    this.image,
    this.ageRange,
    this.subscribtions,
  });
}

List<Subscription> subscriptions1 = [
  Subscription(
    name: 'Subscription 1',
    image: 'assets/baby_box.jpg',
    plan: 'Soap X 3\nPowder X 2\nShampoo X 2\n',
    price: 45,
  ),
  Subscription(
    name: 'Subscription 2',
    image: 'assets/box2.jpg',
    plan: 'Soap X 1\nPowder X 2\nShampoo X 1\n',
    price: 45,
  ),

];


List<Subscription> subscriptions2 = [

  Subscription(
    name: 'Subscription 2',
    image: 'assets/box2.jpg',
    plan: 'Soap X 1\nDiapers X 4\nShampoo X 1\n',
    price: 60,
  ),
];


List<Category> categories = [
  Category(
    image: 'assets/year0.jpg',
    ageRange: 'Age 0-1 Years',
    subscribtions: subscriptions1,
  ),
  Category(
    image: 'assets/year1.jpg',
    ageRange: 'Age 1-2 Years',
    subscribtions: subscriptions2,
  ),
  Category(
    image: 'assets/year2.jpg',
    ageRange: 'Age 2-3 Years',
    subscribtions: subscriptions1,
  ),
  Category(
    image: 'assets/year3.jpg',
    ageRange: 'Age 3-4 Years',
    subscribtions: subscriptions2,
  ),
];