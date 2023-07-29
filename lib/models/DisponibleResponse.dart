
import 'dart:convert';

import 'package:vitmaecomerce/models/ElementoProducto.dart';

class DisponibleResponse {
  List<ElementoProducto> results;
  DisponibleResponse({
    required this.results
  });  
  factory DisponibleResponse.fromJson(String str) => DisponibleResponse.fromMap(json.decode(str));
  factory DisponibleResponse.fromMap(Map<String, dynamic> json) => DisponibleResponse(
    results: List<ElementoProducto>.from(json["results"].map((x) => ElementoProducto.fromMap(x))),
  );

}
