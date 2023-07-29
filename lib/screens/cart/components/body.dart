import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:vitmaecomerce/models/Cart.dart';
import 'package:vitmaecomerce/providers/elemento_provider.dart';

import '../../../size_config.dart';
import 'cart_card.dart';

class Body extends StatefulWidget {
  
  
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // @override
  // void initState(){
  //   super.initState();
  //   final elementoProvider =  Provider.of<ElementoProvider>(context);
  //   // elementoProvider.getProductosVitma();
  //   print('hola elvis');
  //   print(elementoProvider.getProductosVitma());
  //   debugPrint('hola');
  // }


  @override
  Widget build(BuildContext context) {
    // final elementoProvider =  Provider.of<ElementoProvider>(context);
    // // ignore: avoid_print, prefer_interpolation_to_compose_strings
    // print('elvis'+ elementoProvider.getProductosVitma());

    
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            key: Key(demoCarts[index].product.id.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                demoCarts.removeAt(index);
              });
            },
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg"),
                ],
              ),
            ),
            child: CartCard(cart: demoCarts[index]),
          ),
        ),
      ),
    );
  }
}
