import 'package:deliver/components/button.dart';
import 'package:deliver/pages/deliveryProgressPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {
  GlobalKey <FormState> formKey =GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = " ";
  String cvv = '';
  bool isCvvFocused = false;
  
  void userTappedPay (){
    if(formKey.currentState!.validate()){
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text("Confirm Payment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Cart nuember : $cardNumber"),
                Text("Expiry Date : $expiryDate"),
                Text("Card Holder Name : $cardHolderName"),
                Text("CVV : $cvv"),
              ],
            ),
          ),
          actions: [
            //yes button 
            TextButton(
              onPressed: () { 
                Navigator.pop(context);
                Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => Deliveryprogresspage()
                  )
                ) ;
              },
              
              child: Text("Yes")
              ),
            // cancel button
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
                child: Text("Cancel"))
          ],
        )
        );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text("Checkout"),
      ),
      body: Column(
        children: [
          //credit cart
          CreditCardWidget(
            cardNumber: cardNumber, 
            expiryDate: expiryDate, 
            cardHolderName: cardHolderName, 
            cvvCode: cvv, 
            showBackView: isCvvFocused, 
            onCreditCardWidgetChange: (pO){}
          ),

           //creditCardForm 
            CreditCardForm(
              cardNumber: cardNumber, 
              expiryDate: expiryDate, 
              cardHolderName: cardHolderName, 
              cvvCode: cvv, 
              onCreditCardModelChange: (data){
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvv = data.cvvCode;
                });
              }, 
              formKey: formKey
              ),

              Spacer(),

              Button(
                onTap: userTappedPay, 
                text: "Pay Now"
                ),

                SizedBox(height: 25,)
        ],
      ),
    );
  }
}