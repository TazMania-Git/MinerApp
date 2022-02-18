import 'package:flutter/material.dart';

class ListPayouts extends StatelessWidget {
  const ListPayouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 100),
      child: Stack(children: [_WalletInput()]),
    );
  }
}

class _WalletInput extends StatelessWidget {
  const _WalletInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
            fillColor: Color.fromARGB(255, 255, 255, 255),
            hintText: "Wallet",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}

