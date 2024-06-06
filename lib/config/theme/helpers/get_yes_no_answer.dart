

import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';

/* DIO= A powerful HTTP networking package for Dart/Flutter, supports Global configuration, Interceptors, 
FormData, Request cancellation, File uploading/downloading, Timeout, Custom adapters, Transformers, etc.*/ 

class GetYesNoAnswer{
  //MessageList from message.dart
  Future<MessageList> getAnswer()async{
  final _dio=Dio();
  final response= await _dio.get('https://yesno.wtf/api');
  //YesNoModel from yes_no_model.dart
  final yesNoModel= YesNoModel.fromJsonMap(response.data);

  return yesNoModel.toMessageEntity();

  }
}