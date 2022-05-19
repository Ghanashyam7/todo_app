import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/homenewpage.dart';
import 'package:todo_app/widgets.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Stack(
                children:[
                  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:[
                      Padding(
                        padding:  EdgeInsets.only(
                          top: 15.0,
                          bottom: 15.0,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: IconButton(onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => MyApp()));
                              },
                                  icon: Icon(Icons.arrow_back_ios)),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Task Title",
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextFormField(
                      maxLines: null,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Description',
                      ),
                  ),
                Stack(
                  children: <Widget>[
                    DateTimePicker(
                      initialValue: '',
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      dateLabelText: 'Deadlines',
                      onChanged: (val) => print(val),
                      validator: (val) {
                        print(val);
                        return null;
                      },
                      onSaved: (val) => print(val),
                    ),
                  ],
                ),
                      Align(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: double.infinity,
                          child: ElevatedButton(onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                          }, child: Text('Create a Task'),),
                        ),
                      ),
                ],

                ),
              ],
              ),
            ),
          ),
      ),
    );
  }
}
