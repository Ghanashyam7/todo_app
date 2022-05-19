import 'package:flutter/material.dart';

import 'package:todo_app/homenewpage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String selectedItem = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: IconButton(
          onPressed: () { 
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
          }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Material(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: () {
                        
                      },
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage("assets/images/male 1.webp"),
                      ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Name',
                           hintText: 'Enter Your Name'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Age',
                        hintText: 'Enter Your Age'
                    ),
                  ),
                ),
         Padding(
             padding: const EdgeInsets.all(10.0),
             child: DropdownButton(
                 value: selectedItem,
                 icon: Icon(Icons.arrow_drop_down_circle_outlined),
                 elevation: 16,
                   isExpanded: true,
                   style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
               onChanged: (String? newValue) {
                 setState(() {
                   selectedItem = newValue!;
                 });
               },
               items: <String>['Male','Female','Other']
                   .map<DropdownMenuItem<String>>((String value) {
                 return DropdownMenuItem<String>(
                   value: value,
                   child: Text(value),
                 );
               }).toList(),
             ),
         ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent,
                        elevation: 10,
                        primary: Colors.black87,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      child: Text('SAVE',style: TextStyle(fontSize: 25),)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
