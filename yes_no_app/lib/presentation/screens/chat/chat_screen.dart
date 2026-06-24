import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 5),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Ligma Balls'),
          leading: Padding(
            padding: const EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://talk.shapes.inc/api/avatar/-w9qf',
                
              ),
      
            ),
          ),
          centerTitle: false,
        ),
        body: _ChatView(),
      ),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>();


    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollCoontroller,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];

                  return (message.fromWho == FromWho.hers)
                    // ? const HerMessageBubble()
                    ? HerMessageBubble(message: message)
                    : MyMessageBubble( message: message);
                },
              )
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(bottom: 10 ),
              child: MessageFieldBox(
                onValue: chatProvider.sendMessage,
              ),
            ),
          ],
        ),
      ),
    );




  }
}
