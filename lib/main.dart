import 'package:expenses_app_ui/widgets/walletheader.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(fontFamily: 'Roboto'),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(
            child: Container(),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
