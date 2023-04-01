import 'package:flutter/material.dart';

class marketplace_page extends StatefulWidget {
  const marketplace_page({Key? key}) : super(key: key);

  @override
  State<marketplace_page> createState() => _marketplace_pageState();
}

class _marketplace_pageState extends State<marketplace_page> {

  List<int> list_2=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(179, 245, 212,50),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Market Place",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 36)),
                  )
                ],), ListView.builder(
                itemCount: list_2.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder:(BuildContext context,int index)
                {
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Card(shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(25)),child:
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Demand : ",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18)),
                          SizedBox(height: 4,),
                          Text("Price  : ",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16)),
                          SizedBox(height: 4,),
                          Text("Fullfilled : 55/100",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                          SizedBox(height: 4,),
                          Text("Dealer Name: "),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,children:
                          [
                            TextButton(onPressed: (){}, child:Text("Pledge")),
                            TextButton(onPressed: (){}, child:Text("Offer")),
                            TextButton(onPressed: (){}, child:Text("Offers"))
                          ],)
                        ],
                      ),
                    )),
                  );
                }
                ),
            ],
          ),
        ),
      ),
    );
  }
}

