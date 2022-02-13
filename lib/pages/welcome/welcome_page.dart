import 'package:flutter/material.dart';
import 'package:main/widgets/widgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  static const routeName = "/weleome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: const <Widget>[
                Flexible(
                  child: MainTitle(text: "Bienvenido a CryptoShare"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
