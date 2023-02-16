import 'package:isar/isar.dart';

part 'isar_subject_data.g.dart';

@embedded
class IsarSubjectData {
  IsarSubjectData({this.sid, this.name, this.alias, this.classes});
  int? sid;
  String? name;
  String? alias;
  List<String>? classes;
}
