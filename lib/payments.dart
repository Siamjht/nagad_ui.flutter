import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  List payments = [];

  @override
  void initState(){
    payments.add('assets/images/img_9.png');
    payments.add('assets/images/img_10.png');
    payments.add('assets/images/img_11.png');
    payments.add('assets/images/img_12.png');
    payments.add('assets/images/img_13.png');
    payments.add('assets/images/img_14.png');
    payments.add('assets/images/img_15.png');
    payments.add('assets/images/img_16.png');
    payments.add('assets/images/img_17.png');
    payments.add('assets/images/img_18.png');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: payments.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 18,
          crossAxisCount: 4,),
        itemBuilder: (context, index){return Image.asset('${payments[index]}');},
    );
  }
}
