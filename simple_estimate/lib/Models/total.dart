
import 'package:isar/isar.dart';

@Collection()
class Total {
  @Id()
  int id = Isar.autoIncrement;

  @Index(unique: true, caseSensitive: false)
  late String name;
  
}