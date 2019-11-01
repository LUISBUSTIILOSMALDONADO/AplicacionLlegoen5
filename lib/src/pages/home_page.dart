import 'package:app_products/src/blocs/provider.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
  final bloc = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Correo Electrónico: ${bloc.email}'),
            Text('Contraseña: ${bloc.password}'),
          ],          
        ),
      )
    );
  }
}