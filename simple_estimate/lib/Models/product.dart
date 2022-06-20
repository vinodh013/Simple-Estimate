


import 'package:isar/isar.dart';
import 'package:simple_estimate/Models/Category.dart';

@Collection()
class Product {
  @Id()
  int id = Isar.autoIncrement;


  final category = IsarLink<Category>();

  @Index(unique: true, caseSensitive: false)
  late String name;

   
  @Index() 
  late int quantity;

  @Index()
  late double price;


}