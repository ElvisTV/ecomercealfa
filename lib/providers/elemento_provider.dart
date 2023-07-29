
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:vitmaecomerce/models/DisponibleResponse.dart';
import 'package:vitmaecomerce/models/ElementoProducto.dart';

class ElementoProvider extends ChangeNotifier{
  // ignore: non_constant_identifier_names
  final String _baseUrl = 'tiendavitma.azurewebsites.net';
  final String _endPoint = 'api/listaproducto/productovitma';
  final String _code = 'mleghUkLiImRYJQIrb64ZoFRGOhXKmPvn_Athg3R1sv8AzFuS2fFag==';
  List<ElementoProducto> ProductosVitma = [];

  ElementoProvider(){
    debugPrint('Proveedor inicializado');
    // this.getProductosVitma();
    getProductos();
  }


  Future<String> _getJsonData(String endpoint) async {
    // final url = Uri.https('tiendavitma.azurewebsites.net/api/listaproducto/productovitma?code=mleghUkLiImRYJQIrb64ZoFRGOhXKmPvn_Athg3R1sv8AzFuS2fFag==');
    final url = 
      Uri.https(
        _baseUrl,endpoint,{
          'code': _code
        });
    final response = await http.get(url);
    if( response.statusCode != 200){
       debugPrint('hubo un error');
    }
    debugPrint(response.body);
    return response.body;
  }



  getProductosVitma() async {
    final jsonData = await this._getJsonData('api/listaproducto/productovitma');
    final disponibleResponse = DisponibleResponse.fromJson(jsonData);
    ProductosVitma = disponibleResponse.results;
    notifyListeners(); // para avisar a todos los widgets que utlizan la data, si se actualiza
  }

  Future<List<ElementoProducto>> getProductos() async {
    // final url = Uri.https('tiendavitma.azurewebsites.net/api/listaproducto/productovitma?code=mleghUkLiImRYJQIrb64ZoFRGOhXKmPvn_Athg3R1sv8AzFuS2fFag==');
    final url = 
      Uri.https(
        _baseUrl,_endPoint,{
          'code': _code
        });
    final response = await http.get(url);
    if( response.statusCode != 200){
       debugPrint('hubo un error');
    }
    List jsonResponse = json.decode(response.body);
    // debugPrint(response.body);
    List<ElementoProducto> finalizado = jsonResponse.map((job) => ElementoProducto.fromJson(job)).toList();
    print(finalizado);
    return finalizado;
    // return jsonResponse.map((job) => ElementoProducto.fromJson(job)).toList();
    // return response.body;
  }


}
