import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:postgres/postgres.dart';

class PostgresDatabasePage extends StatefulWidget {
  const PostgresDatabasePage({super.key});

  @override
  State<PostgresDatabasePage> createState() => _PostgresDatabasePageState();
}

class _PostgresDatabasePageState extends State<PostgresDatabasePage> {
  var connection = PostgreSQLConnection(
      "topsy.db.elephantsql.com", 5432, "sbksejxm",
      username: "sbksejxm", password: "D-ZrjYdBy8ODClB-AjUxUonbzNTBxWJd");

  Future<dynamic>? _connect() async {
    await connection.open();
    List<List<dynamic>> results =
        await connection.query("SELECT * FROM taxconnect");
    return results;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    connection.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _connect(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) return Text(snapshot.error.toString());
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data[index][1]),
                  subtitle: Text(snapshot.data[index][2]),
                );
              },
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
