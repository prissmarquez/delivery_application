import 'package:deliver/models/iceCreams(food).dart';
import 'package:flutter/material.dart';

class MyicecreamsTile extends StatelessWidget {
  final IceCreams iceCreams;
  final void Function()? onTap;

  const MyicecreamsTile({
    super.key,
    required this.iceCreams,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(iceCreams.name),
                    Text(iceCreams.price.toString()),
                    Text(iceCreams.description)
                  ]
                )
    
              ),
              //IceCreams Image 
              Image.asset(iceCreams.imagePath, height: 120,),
            ]
          ),
        )
      ],
    );
  }
}