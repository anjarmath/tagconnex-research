import 'package:hive/hive.dart';

class QRDatabase {
  final db = Hive.box("tax-connect");

  void createRecord(List data) {
    db.put("QRDATA", data);
  }

  void getRecord() {
    final data = db.get("QRDATA");
    print(data);
  }
}
