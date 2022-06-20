import 'package:isar/isar.dart';

//create item collection

@Collection()
class Category {
  @Id()
  
  @Index(unique: true, caseSensitive: false)
  late String category;
}
