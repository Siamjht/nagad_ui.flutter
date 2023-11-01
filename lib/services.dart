import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {

  List service = [];

  @override
  void initState(){
    service.add('assets/images/img_2.png');
    service.add('assets/images/img_3.png');
    service.add('assets/images/img_4.png');
    service.add('assets/images/img_5.png');
    service.add('assets/images/img_6.png');
    service.add('assets/images/img_7.png');
    service.add('assets/images/img_8.png');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: service.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 18,
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index){
          return Image.asset('${service[index]}');
        });
  }
}
