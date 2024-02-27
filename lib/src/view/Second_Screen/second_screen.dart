import 'package:flutter/material.dart';
import 'package:machine_test/src/const/sizedBox.dart';
import 'package:machine_test/src/const/style.dart';
import 'package:machine_test/src/view/Second_Screen/widgets/widgets.dart';

class Second_Screen extends StatefulWidget {
  final int id;
  final String firstName;
  final String lastName;
  final String avatar;
  final String email;

  const Second_Screen({
    super.key,
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.avatar,
    required this.email,
  });

  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        title: Text(
          'Details',
          style: LargeText,
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: height * 0.07,
            ),
            child: CircleAvatar(
              radius: 60,
              foregroundImage: NetworkImage(widget.avatar),
            ),
          ),
          sized_Box(height * 0.03, 0),
          Text(
            widget.firstName,
            style: MediumText,
          ),
          sized_Box(height * 0.01, 0),
          Text(
            'Valid ID : AC#${widget.id}',
            style: SmallText,
          ),
          sized_Box(height * 0.05, 0),

          ////////about and review button in the detail page
          ///
          ///
          buttons(height, width),

          sized_Box(height * 0.1, 0),
          ////First Name  & Last Name showing field
          ///
          ///
          ///
          ///
          ///
          Row(
            children: [
              sized_Box(0, width * 0.1),
              Icon(
                Icons.person,
                size: 20,
              ),
              sized_Box(0, width * 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'First Name :',
                    style: SmallText,
                  ),
                  Text(
                    widget.firstName,
                    style: MediumText,
                  )
                ],
              )
            ],
          ),
          sized_Box(height * 0.03, 0),
          Row(
            children: [
              sized_Box(0, width * 0.1),
              Icon(
                Icons.person,
                size: 20,
              ),
              sized_Box(0, width * 0.05),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Last Name :',
                    style: SmallText,
                  ),
                  Text(
                    widget.lastName,
                    style: MediumText,
                  )
                ],
              )
            ],
          ),
          sized_Box(height * 0.03, 0),
          Row(
            children: [
              sized_Box(0, width * 0.1),
              Icon(
                Icons.email,
                size: 20,
              ),
              sized_Box(0, width * 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email :',
                    style: SmallText,
                  ),
                  Text(
                    widget.email,
                    style: MediumText,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
