import 'package:flutter/material.dart';

class ListPayouts extends StatelessWidget {
  const ListPayouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // padding: EdgeInsets.only(top: 400),
      child: Column(children: [_WalletInput(), _ListPayments()]),
    );
  }
}

class _ListPayments extends StatelessWidget {
  // const _ListPayments({Key? key}) : super(key: key);

  final dates = [
    "17/02/2022",
    "15/02/2022",
    "12/02/2022",
    "10/02/2022",
    "07/02/2022",
    "05/02/2022",
  ];
  final hashs = [
    "Kh-1cfae932-1380-46d9-9ac9-5f4fe8efb8a3",
    "Kh-48b0d407-f3a5-438e-bbb7-b520b516e30b",
    "Kh-6fc0c135-2ea5-44ab-8eb6-09228b5dd24f",
    "Kh-c50ba1a9-025d-44d2-b99c-73b6294b1371",
    "Kh-920a195a-a10f-4a0e-bb56-298ba73366c1",
    "Kh-2f79a2fe-1bc1-4dfa-9330-5f0a1073d958",
  ];
  @override
  Widget build(BuildContext context) {
    var resultStyle = TextStyle(
        color: Color.fromARGB(255, 241, 221, 33),
        fontWeight: FontWeight.w600,
        fontSize: 15);

    return Container(
      padding: EdgeInsets.only(left: 5, right: 5, top: 60),
      height: 300,
      child: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(
                  hashs[index],
                  style: resultStyle,
                ),
                leading: Text(
                  dates[index].toString(),
                  style: resultStyle,
                ),
                trailing: Text("0.005255", style: resultStyle),
              ),
          separatorBuilder: (context, index) => Divider(),
          itemCount: dates.length),
    );
  }
}

class _WalletInput extends StatelessWidget {
  const _WalletInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 400),
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
