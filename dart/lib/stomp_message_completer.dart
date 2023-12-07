import 'dart:async';

import 'package:stomp_dart_client/stomp_frame.dart';

import 'api_ws.dart';


class StompMessageCompleter<T extends Object> {
  StompMessageCompleter(this.messageType);

  final Completer<T> completer = Completer<T>();
  final String messageType;

  void completed(StompFrame frame){
    ApiClientWs().deserializeAsync(frame.body.toString(), this.messageType).then( (value) => completer.complete(value) );
  }

  void error(String error){
    completer.completeError(error);
  }

  void timeout(){
    completer.completeError("Timeout");
  }

  void cancel(){
    completer.completeError("Cancelled");
  }

  Future<T> get future => completer.future;
}
