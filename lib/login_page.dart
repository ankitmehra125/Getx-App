import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_getx/login_controller.dart';

LoginController loginController = Get.put(LoginController());

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: loginController.emailController.value,
              decoration: InputDecoration(
                hintText: "Enter Email"
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: loginController.passwordController.value,
              decoration: InputDecoration(
                  hintText: "Enter Password"
              ),
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: ()
              {
                loginController.loginApi();
              },
              child: loginController.loading.value ? CircularProgressIndicator() : Container(
                width: 100,
                height: 55,
                color: Colors.blue,
                child: Center(
                  child: Text("Login"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
