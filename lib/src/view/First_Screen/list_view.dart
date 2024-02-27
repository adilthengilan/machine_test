import 'package:flutter/material.dart';
import 'package:machine_test/src/const/sizedBox.dart';
import 'package:machine_test/src/const/style.dart';
import 'package:machine_test/src/controller/api_integration.dart';
import 'package:machine_test/src/model/model_class.dart';
import 'package:machine_test/src/view/Second_Screen/second_screen.dart';
import 'package:provider/provider.dart';

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  Users? obj;
  @override
  Widget build(BuildContext context) {
    final api = Provider.of<Api_Intergration>(context);
    if (api.users.data.isNotEmpty) {
      return ListView.builder(
          shrinkWrap: true,
          itemCount: api.users.data.length,
          itemBuilder: (context, index) {
            //////////  Reassigned the api.user to shorten the path
            final Details = api.users;
            return InkWell(
              onTap: () {
                /////////Navigating to Second screen passing with the users data
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Second_Screen(
                          id: Details.data[index].id,
                          firstName: Details.data[index].firstName,
                          lastName: Details.data[index].lastName,
                          avatar: Details.data[index].avatar,
                          email: Details.data[index].email),
                    ));
              },
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 223, 223, 223),
                          radius: 33,
                          foregroundImage:
                              NetworkImage(Details.data[index].avatar),
                        ),
                        sized_Box(0, 20),
                        Text(
                          Details.data[index].firstName,
                          style: MediumText,
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          });
    } else {
      return Center(
          child: SizedBox(
        child: CircularProgressIndicator(),
        height: 50,
        width: 50,
      ));
    }
  }
}
