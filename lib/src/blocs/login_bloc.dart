import 'dart:async';

import 'package:app_products/src/blocs/validators.dart';
import 'package:rxdart/rxdart.dart';




class LoginBloc with Validators{

  //La libreria de Rx no tiene StreamController
  //sino tiene el BehaviorSubject
  final _emailController    = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //Insertar datos al Stream
  Function(String) get changeEmail    => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  //Recuperar datos al Stream
  Stream<String> get emailStream => _emailController.stream.transform(validarEmail);
  Stream<String> get passwordStream => _passwordController.stream.transform(validaPassword);

  Stream<bool> get formValidStream => 
    Observable.combineLatest2(emailStream, passwordStream, ( e, p) => true );

  //Obtener el ultimo valor ingresado de los Streams
  String get email => _emailController.value;
  String get password => _passwordController.value;




  dispose(){
    _emailController?.close();
    _passwordController?.close();
  }

}