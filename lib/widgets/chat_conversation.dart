import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';

class ChatConversation extends StatefulWidget {
  const ChatConversation({
    Key? key,
    required this.reciverName,
    required this.lastMessage,
    required this.numberOfUnreadMessages,
  }) : super(key: key);
  final String reciverName;
  final String lastMessage;
  final int numberOfUnreadMessages;
  @override
  State<ChatConversation> createState() => _ChatConversationState();
}

class _ChatConversationState extends State<ChatConversation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  AppImages.userDefaultIcon,
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                widget.reciverName,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.cyanColor,
                ),
                child: Text(
                  widget.numberOfUnreadMessages.toString(),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.lastMessage,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
