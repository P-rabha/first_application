import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginscreen/utils/globalcolors.dart';
import 'package:loginscreen/view/widgets/buttonglobal.dart';
import 'package:loginscreen/view/widgets/sociallogin.dart';
import 'package:loginscreen/view/widgets/textformglobal.dart';
import 'package:loginscreen/resultpage.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Logo',
                  style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 50),
              Text(
                'Login to your account',
                style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 15),
              TextFormGlobal(
                controller: emailController,
                text: 'email',
                obscure: false,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10),
              TextFormGlobal(
                controller: passwordController,
                text: 'password',
                obscure: true,
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 10),
              ButtonGlobal(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              email: emailController.text,
                              password: passwordController.text,
                            )),
                  );
                },
              ),
              SizedBox(height: 25),
              SocialLogin()
            ],
          ),
        ),
      )),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don\'t have an account?'),
            InkWell(
              child: Text(
                ' Sign up',
                style: TextStyle(color: GlobalColors.mainColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
