import 'dart:math';

import 'package:flutter/material.dart';


class chatroom_page extends StatefulWidget {
  const chatroom_page({Key? key}) : super(key: key);

  @override
  State<chatroom_page> createState() => _chatroom_pageState();
}
class _chatroom_pageState extends State<chatroom_page> {

  late TextEditingController message_controller;


  @override
  initState()
  {
    message_controller=TextEditingController();
    super.initState();
  }

  List<int> list_2=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(179, 245, 212,50),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Chat Room",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 36)),
          ),
            SizedBox(height:MediaQuery.of(context).size.height*0.738,
              child: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),
                child:
                Column(
                  children: [
                    ListView.builder(
                        itemCount: list_2.length,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder:(BuildContext context,int index)
                        {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Card(shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(25)),child:
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("USER "+list_2[index].toString(),style: TextStyle(fontWeight: FontWeight.w800,fontSize: 15,color: [Colors.amberAccent,Colors.tealAccent,Colors.redAccent,Colors.purpleAccent,Colors.lightGreenAccent,Colors.deepOrangeAccent,Colors.indigoAccent,Colors.lightBlueAccent,Colors.teal,Colors.brown][Random().nextInt(10)])),
                                  SizedBox(height: 8,),
                                  Text("Loremtur molen mi. Phaet lacus pus sodales venenatis malesuada. Mauris dignissim leo porta libero ultricies tempor at aliquet sem.",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14)),
                                ],),)),
                          );}),],),),),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.74,child: TextFormField(controller: message_controller,)),IconButton(onPressed: (){print(message_controller.text);}, color: Colors.blueAccent,icon:Icon(Icons.send_rounded))
                  ],),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
