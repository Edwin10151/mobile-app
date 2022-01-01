import 'package:flutter/material.dart';
import 'package:peachai/models/Chat.dart';
import 'package:peachai/widgets/chat_card.dart';
import 'package:peachai/widgets/filled_outline_button.dart';

import '../../constants.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Message"),
              const SizedBox(width: kDefaultPadding),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) =>
                ChatCard(chat: chatsData[index], press: () {}),
          ),
        ),
      ],
    ));
  }
}
