import 'package:flutter/material.dart';
import 'package:machine_test/src/const/sizedBox.dart';
import 'package:machine_test/src/const/style.dart';
import 'package:machine_test/src/controller/api_integration.dart';
import 'package:machine_test/src/model/model_class.dart';
import 'package:machine_test/src/view/First_Screen/users_list.dart';
import 'package:machine_test/src/view/First_Screen/widgets/widgets.dart';
import 'package:provider/provider.dart';

class First_Screen extends StatefulWidget {
  const First_Screen({super.key});

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {
  Users? obj;
  @override
  Widget build(BuildContext context) {
    Provider.of<Api_Intergration>(context);

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sized_Box(height * 0.07, 0),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * 0.04),
                  child: Text('Users', style: LargeText),
                ),
                sized_Box(0, width / 1.5),
                Icon(Icons.more_vert)
              ],
            ),
            sized_Box(height * 0.01, 0),
            Search_Bar(height),
            SizedBox(
              height: height / 1.25,
              width: double.infinity,
              child: UsersList(),
            )
          ],
        ),
      ),
    );
  }
}
