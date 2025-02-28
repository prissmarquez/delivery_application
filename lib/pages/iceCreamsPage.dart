import 'package:deliver/models/iceCreams(food).dart';
import 'package:flutter/material.dart';

//this page is for when the user click on the image of the product

class Icecreamspage extends StatefulWidget {

  final IceCreams iceCreams;
  const Icecreamspage({
    super.key,
    required this.iceCreams
    });

  @override
  State<Icecreamspage> createState() => _IcecreamspageState();
}

class _IcecreamspageState extends State<Icecreamspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
      children: [
        //image
        Image.asset(widget.iceCreams.imagePath, height: 350,),

        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          //name
           Text(widget.iceCreams.name),
          
          //desciption
          Text(widget.iceCreams.description),
          
          //addons
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: widget.iceCreams.availableAddons.length,
            itemBuilder: (context, index) {
          
              //get indivual addon
              Addons addons = widget.iceCreams.availableAddons[index];
              return CheckboxListTile(
                title: Text(addons.name),
                subtitle: Text('\$' +addons.price.toString()),
                value: false, 
                onChanged: (value){}
                );
            },
          )
            ]
          ),
        )
        
       

        //botton => add to cart
      ],
    ),
    );
  }
}