import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/front/providers/chat_provider.dart';
import 'package:yes_no_app/front/screens/chat/widgets/chat/his_message_bubble.dart';
import 'package:yes_no_app/front/screens/chat/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/front/screens/chat/widgets/shared/field_box.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child:CircleAvatar(
            backgroundImage: const NetworkImage('https://t4.ftcdn.net/jpg/06/09/71/31/360_F_609713150_riuPh8tilEhIjkZ6OrgJOhvedDwN1Cer.jpg'),
          ),
        ),
        title: const Text('Monke'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    final chatProvider= context.watch<Chatprovider>();
    
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children:[
             Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount:chatProvider.message.length,
                itemBuilder:(context, index) {
                  final message= chatProvider.message[index];
                  if (index==0){
                    return HisMessageBubble();
                  }else{
                  return (message.fromwho== FromWho.they)
                    ?welcomeMessage()
                    : MyMessageBubble(message: message);}
              },) ,
             ),
          FieldBox(
             // onValue: (value)=>chatProvider.sendmessage(value),
                onValue: chatProvider.sendmessage,
          ),
          const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

// Container(
//                 color: const Color(0xFF533844)
//           ))