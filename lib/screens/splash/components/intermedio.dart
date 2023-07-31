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

  @override
  Widget build(BuildContext context) {
    debugPrint('Buenos días Flutter Senior');
    
    final elementoProducto = Provider.of<ElementoProvider>(context);
    // debugPrint(elementoProducto.ProductosVitma[0].descripcion);
    debugPrint('Hasta Luego');
  
    return Container(
      color: widget.color,
      transform: Matrix4.diagonal3Values(_size, _size, 1.0),
      child: widget.child,
    );
  }
}
