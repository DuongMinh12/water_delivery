import 'package:water_delivery/constants/add_all.dart';

class ProductModel{
  String? name;
  String? image;
  int? price;
  String? decription;
  var rate;
  ProductModel({this.name, this.image, this.decription, this.price, this.rate});

 static List<ProductModel> product = [
   ProductModel(name: 'Coca cola', image: cocacola, price: 10, decription: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam', rate: 4.5),
   ProductModel(name: 'smoothie1', image: smooline1, price: 10, decription: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam', rate: 4.8),
   ProductModel(name: 'smoothie2', image: smooline2, price: 10, decription: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam', rate: 4.3),
   ProductModel(name: 'troppical smoothie', image: smoolineTropical, price: 10, decription: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam', rate: 4.7),
 ];
}