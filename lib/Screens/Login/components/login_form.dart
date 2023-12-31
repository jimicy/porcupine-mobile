import 'package:flutter/material.dart';
import 'package:porcupine_app/Screens/Chat/chat.dart';
import 'package:porcupine_app/Screens/GetTested/get_tested.dart';
import 'package:porcupine_app/Screens/Survey/survery2.dart';
import 'package:porcupine_app/Screens/Survey/survey.dart';
import 'package:porcupine_app/home_page.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
// import '../../Signup/signup_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: "Your email",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: "Your password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const BottomNavigationBarExampleApp(
                        firstTab: GetTested(),
                      );
                    },
                  ),
                );
              },
              child: Text(
                "Login".toUpperCase(),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BottomNavigationBarExampleApp(
                      firstTab: MySurvey2(),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
