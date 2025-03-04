import 'package:deliver/components/MyDrawer.dart';
import 'package:deliver/components/button.dart';
import 'package:deliver/models/iceCreams(food).dart';
import 'package:flutter/material.dart';

//this page is for when the user click on the image of the product

class Icecreamspage extends StatefulWidget {
  final IceCreams iceCreams;
  final Map<Addons, bool> selectedAddons = {};

   Icecreamspage({
    super.key,
    required this.iceCreams
    }){
     //initialize addons in false
      for(Addons addons in iceCreams.availableAddons){
        selectedAddons[addons] = false;
      }
    }

  @override
  State<Icecreamspage> createState() => _IcecreamspageState();
}

class _IcecreamspageState extends State<Icecreamspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
     body: SingleChildScrollView(
       child: Column(
        children: [
          //image
          Image.asset(widget.iceCreams.imagePath, height: 300,),
       
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            //name
             Text(
              widget.iceCreams.name,
              style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
       
               //price
              Text(
                '\$${widget.iceCreams.price}',
                style: TextStyle(
                  fontSize: 16,
                color: Theme.of(context).colorScheme.primary,
                )
              ),
       
              SizedBox(height: 5,),
            
            //desciption
            Text(
              widget.iceCreams.description,
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
              ),
       
              SizedBox(height: 5,),
       
              Text(
              "Addons",
              style: TextStyle(
                fontSize: 15,
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold
              ),
              ),
       
              SizedBox(height: 10,),
       
            //addons
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary
                  ),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: ListView.builder(
                shrinkWrap: false,
                padding: EdgeInsets.zero,
                itemCount: widget.iceCreams.availableAddons.length,
                itemBuilder: (context, index) {
          
                  //get indivual addon
                  Addons addons = widget.iceCreams.availableAddons[index];
                  return CheckboxListTile(
                    title: Text(addons.name),
                    subtitle: Text('\$${addons.price}',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary
                    ),),
                    value: widget.selectedAddons[addons], 
                    onChanged: (bool? value ){
                      setState(() {
                        widget.selectedAddons[addons] = value!;
                      });
                    }
                    );
                },
              ),
            )
              ]
            ),
          ),
          
         SizedBox(height: 22,),
       
          //botton => add to cart
          Button(onTap: (){}, text: "add to caart")
        ],
           ),
     ),
    );
  }
}