import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:taxconnect/const/color.dart';
import 'package:taxconnect/db/hive.dart';

class HiveMethod extends StatefulWidget {
  const HiveMethod({super.key});

  @override
  State<HiveMethod> createState() => _HiveMethodState();
}

class _HiveMethodState extends State<HiveMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showForm(context, null);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showForm(BuildContext ctx, int? itemKey) async {
    showModalBottomSheet(
      context: context,
      elevation: 5,
      isScrollControlled: true,
      builder: (_) => Container(
        height: 300,
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 15,
          right: 15,
          top: 15,
        ),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // QRDatabase().createRecord(["apa aja dah"]);
                QRDatabase().getRecord();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: blue, shape: RoundedRectangleBorder()),
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
