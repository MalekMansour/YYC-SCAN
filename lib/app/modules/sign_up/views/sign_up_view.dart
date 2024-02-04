import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yyc_scan/app/core/theme/text_theme.dart';
import 'package:yyc_scan/app/global_widgets/images/logo.widget.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Size.infinite.width,
        child: Column(
          children: [
            const SizedBox(
              height: 300,
              child: LogoWidget(
                width: 200)
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: Size.infinite.width,
                      alignment: Alignment.centerLeft,
                      child: const Text("Create Account", 
                        style: title
                      ),
                    ),
                     const Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: InputDecorator(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username'
                          )
                        ),
                      ),
                const Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: InputDecorator(
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                          )
                        ),
                      ),
                const Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: InputDecorator(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    )
                  ),
                ),
               const Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: InputDecorator(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                      )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: Size.infinite.width,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      margin: const EdgeInsets.only(right: 8.0),
                      decoration: BoxDecoration(color: Color.fromRGBO(133, 83, 158, 1)),
                      child: Checkbox(value: true, onChanged: (bool? value) {
                      }),
                    ),
                    const Text("I agree to"),
                    const Text(" the terms and conditions", 
                      style: TextStyle(
                        color: Color.fromRGBO(133, 83, 158, 1)
                    ))
                  ],
                ),
              ),
            ),
            Container(
              height: 35,
              width: 120,
              decoration: BoxDecoration(
              gradient:const LinearGradient(colors:[Color.fromRGBO(220, 36, 48,1), Color.fromRGBO(123, 67, 151, 1)]),
              borderRadius: BorderRadius.circular(40),
              ),
              child: ElevatedButton(
                onPressed: () {
                
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent)
                  ),
                child: const Text("SIGN UP",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(255,255,255,1)
                  )
                )
                )
              ),
            SizedBox(
              height: 100,
              width: Size.infinite.width,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Do you have an account? "),
                  Text("Sign Up", style: TextStyle(
                    color: Color.fromRGBO(133, 83, 158, 1)
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
