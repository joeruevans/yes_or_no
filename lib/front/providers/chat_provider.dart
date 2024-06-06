import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'dart:io';
class Chatprovider extends ChangeNotifier{
  final ScrollController chatScrollController= ScrollController();
  // GetYesNoAnswer() from get_yes_no_answer.dart
  final GetYesNoAnswer getYesNoAnswer=GetYesNoAnswer();
  List<MessageList> message=[ 
    MessageList(text: 'hi',fromwho: FromWho.me),
    /*MessageList(text: 'Ha upei',fromwho: FromWho.me),*/
  ];
  Future<void> sendmessage( String text) async{
    final newMessage= MessageList(text: text, fromwho: FromWho.me);
    message.add(newMessage);
    if (text.contains('monke')){
      for (var i=1;i<100;i++){
          herReply();
          await Future.delayed(const Duration(milliseconds: 100));
        }
    }
    notifyListeners();
    moveScrollToBottom();
  }

Future<void> herReply()async{
  final hisMessage=await getYesNoAnswer.getAnswer();
  message.add(hisMessage);
  notifyListeners();
  moveScrollToBottom();
  await Future.delayed(const Duration(milliseconds: 6000));
  exit(0);
}  
Future<void> moveScrollToBottom() async {
  await Future.delayed(const Duration(milliseconds: 100));
  chatScrollController.animateTo(
    chatScrollController.position.maxScrollExtent,
    duration: const Duration(milliseconds:400),
    curve: Curves.slowMiddle);
 }
}
