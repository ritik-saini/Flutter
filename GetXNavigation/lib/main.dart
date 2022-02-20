import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'next_screen.dart';
import 'unknown_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      initialRoute: "/",
      defaultTransition: Transition.cupertino,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/nextScreen', page: () => NextScreen(),
        transition:Transition.leftToRight),
        //
        // GetPage(
        //     name: '/nextScreen/:someValue',
        //     page: () => NextScreen(),
        //     transition: Transition.leftToRight)
      ],
      unknownRoute: GetPage(name: '/not found', page:()=> UnknownRoute()),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                  child: Text("Go to Home"),
                  onPressed: () {
                    Get.toNamed(
                      "/home",
                    );
                    //Go to home screen but no option to return to previous screen
                    //Get.offNamed("/home");
                    //Go to home screen but cancel all previous screen
                    //Get.offAllNamed("/home");
                    //Dynamic URL link
                    //Get.toNamed(
                    // "/home?xyz",);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
