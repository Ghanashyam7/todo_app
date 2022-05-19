import 'package:flutter/material.dart';
import 'package:todo_app/bottom_nevigation_bar.dart';
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

          body: Column(
            children: [
              Expanded(child: Container(color: Colors.blue,
                child: Column(
                  children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text( 'Username',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 25),
                    ),
                    CircleAvatar(
                      radius: 70,
                      backgroundImage:
                      AssetImage("assets/images/male 3.webp"),
                    ),
                  ],
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Card(
                          elevation: 50,
                          shadowColor: Colors.black,
                          color: Colors.greenAccent[100],
                          child: SizedBox(
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Card(
                          elevation: 50,
                          shadowColor: Colors.black,
                          color: Colors.greenAccent[100],
                          child: SizedBox(
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Card(
                          elevation: 50,
                          shadowColor: Colors.black,
                          color: Colors.greenAccent[100],
                          child: SizedBox(
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Card(
                          elevation: 50,
                          shadowColor: Colors.black,
                          color: Colors.greenAccent[100],
                          child: SizedBox(
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ],
                    ),

  ),]


              )),),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: (BuildContext context,int index){
                      return ListTile(
                        leading: Icon(Icons.list),
                        trailing: Text("GFG",
                          style: TextStyle(
                              color: Colors.green,fontSize: 15),),
                        title:Text("List item $index"),
                      );
                    }
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ) );
  }
}
