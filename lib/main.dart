import 'package:farm_friend/chatroom.dart';
import 'package:farm_friend/marketplace.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:Home_page()));
}
class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {

  int selected_tab=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        Scaffold(bottomNavigationBar: BottomNavigationBar(items:
        [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Market Place"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_rounded), label: "Chat Room")
        ],
          currentIndex: selected_tab,
          onTap: (int index)
          {
            selected_tab=index;
            setState(() {});
          },
        ),
          body: [marketplace_page(),chatroom_page()][selected_tab],
        )
    );
  }
}
