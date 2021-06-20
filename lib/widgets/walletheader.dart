import 'package:flutter/material.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            "My Wallet",
            style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
