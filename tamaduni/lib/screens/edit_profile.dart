import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tamaduni/widgets/navigation_drawer.dart';
import 'package:tamaduni/utilities/theme_helper.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EditProfile();
  }
}

class _EditProfile extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Profile'),
        ),
        drawer: const NavigationDrawer(),
        body: SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 30.0),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => {print("update profile")},
                          child: Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border:
                                      Border.all(width: 5, color: Colors.white),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 20,
                                      offset: const Offset(5, 5),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.grey.shade300,
                                  size: 100.0,
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(100, 95, 0, 0),
                                child: Icon(
                                  Icons.add_circle,
                                  color: Colors.grey.shade700,
                                  size: 25.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        TextField(
                          decoration: ThemeHelper().textInputDecoration(
                              'First Name', 'Enter your first name'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: ThemeHelper().textInputDecoration(
                              'Last Name', 'Enter your last name'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          keyboardType: TextInputType.phone,
                          decoration: ThemeHelper().textInputDecoration(
                              'Phone Number', 'Enter you phone number'),
                        ),
                      ],
                    )))));
  }
}
