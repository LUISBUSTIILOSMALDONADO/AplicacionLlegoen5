import 'package:app_products/src/blocs/provider.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
  final bloc = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Email: ${bloc.email}'),
            Text('Contraseña: ${bloc.password}'),
          ],          
        ),
      )
    );
  }
}