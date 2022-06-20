import 'package:isar/isar.dart';
import 'package:simple_estimate/Models/product.dart';


@Collection()
class Invoice {

  @Id()
  int id = Isar.autoIncrement;

  DateTime date = DateTime.now();


  // how link the list of products to the invoice
  List<Product> products = [];



  double total = 0.0;

  double tax = 0.0;

  double discount = 0.0;

  double grandTotal = 0.0;

  
}