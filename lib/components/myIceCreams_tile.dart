import 'package:deliver/models/iceCreams(food).dart';
import 'package:flutter/material.dart';

class IcecreamsTile extends StatelessWidget {
  final IceCreams iceCreams;
  final void Function()? onTap;

  const IcecreamsTile({
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
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
            
                //details 
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(iceCreams.name),
                      Text('\$' + iceCreams.price.toString()),
                      Text(iceCreams.description)
                    ]
                  )
                
                ),
                //IceCreams Image 
                Image.asset(iceCreams.imagePath, height: 12,),
              ]
            ),
          ),
        )
      ],
    );
  }
}