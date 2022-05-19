import 'package:flutter/material.dart';
import 'package:todo_app/Create%20a%20new%20task.dart';
import 'package:todo_app/Profile_page.dart';
import 'package:todo_app/homenewpage.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {},
            icon: const Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddPage()));
            },
            icon: const Icon(
              Icons.add_circle_outline,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {},
            icon: const Icon(
              Icons.delete_outline,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            icon: const Icon(
              Icons.person_outline,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );

    /*Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white70,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.cyanAccent,
                icon: Icon( Icons.home_filled),
                label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.add_circle,color: Colors.indigo,),
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddPage() ));
              },),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.delete,color: Colors.pink,),
              label: 'Delete',
            ),
          ],
        onTap: (index) {
          setState(() {
            _selectedIndex;
          });
        },
      ),
    );*/
  }
}
