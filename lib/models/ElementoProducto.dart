import 'package:flutter/material.dart';
import 'dart:convert';

class ElementoProducto {
    String idProducto;
    String nombreProducto;
    String categoriaProducto;
    String descripcion;
    int precioActual;
    int precioNormal;
    int numeroExistencias;
    String direccionImagen;

    ElementoProducto({
        required this.idProducto,
        required this.nombreProducto,
        required this.categoriaProducto,
        required this.descripcion,
        required this.precioActual,
        required this.precioNormal,
        required this.numeroExistencias,
        required this.direccionImagen,
    });
    
    // factory ElementoProducto.fromJson(String str) => ElementoProducto.fromMap(json.decode(str));
    // factory ElementoProducto.fromJson(List<ElementoProducto> str) => ElementoProducto.fromMap(json.decode(str as String));

    factory ElementoProducto.fromMap(
      Map<String, dynamic> json) => ElementoProducto(
      idProducto: json["idProducto"],
      nombreProducto: json["nombreProducto"],
      categoriaProducto: json["categoriaProducto"],
      descripcion: json["descripcion"],
      precioActual: json["precioActual"],
      precioNormal: json["precioNormal"],
      numeroExistencias: json["numeroExistencias"],
      direccionImagen: json["direccionImagen"],
  );

  factory ElementoProducto.fromJson(Map<String, dynamic> json) => ElementoProducto.fromMap(json);
  // Map<String>
    
}
