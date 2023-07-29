import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vitmaecomerce/models/ElementoProducto.dart';
import 'package:vitmaecomerce/providers/elemento_provider.dart';

class Bird extends StatefulWidget {
  const Bird({
    super.key,
    this.color = const Color(0xFFFFE306),
    this.child,
  });

  final Color color;
  final Widget? child;

  @override
  State<Bird> createState() => _BirdState();
}

class _BirdState extends State<Bird> {
  double _size = 1.0;

  void grow() {
    setState(() { _size += 0.1; });
  }
  // @override
  // void initState() {
  //   final elementoProducto = Provider.of<ElementoProvider>(context);
  //   debugPrint(elementoProducto.ProductosVitma.length.toInt() as String?);
  //   super.initState();
  // }


  @override
  Widget build(BuildContext context) {
    debugPrint('Flutter Senior');
    
    // final ElementoProvider elementoProducto = Provider.of<ElementoProvider>(context);
    // debugPrint(elementoProducto.ProductosVitma.length.toInt() as String?);

    // return Provider<ElementoProvider>(
    //   create: (_) => ElementoProvider(),
    //   // Will throw a ProviderNotFoundError, because `context` is associated
    //   // to the widget that is the parent of `Provider<Example>`
    //   child: Text(context.watch<ElementoProvider>().toString()),
    // );
    return Container(
      color: widget.color,
      transform: Matrix4.diagonal3Values(_size, _size, 1.0),
      child: widget.child,
    );
  }
}
