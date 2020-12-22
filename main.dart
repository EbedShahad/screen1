import 'package:flutter/material.dart';
//import 'package:responsive_grid/responsive_grid.dart';
import 'package:responsive/data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Home',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),

        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where

        //onPressed:() => Navigator.pop(context, false),
        //onPressed:() => exit(0),
        //leading: IconButton(icon: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.grey,
      ),

      endDrawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ]),
      ),
      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: new Container(
        padding: new EdgeInsets.all(15.0),
        child:
            //  new Center(
            // child:
            new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.all(0.0),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Ink.image(
                              height: 120,
                              width: 800,
                              image: AssetImage(
                                'images/b1.jpg',
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                            Padding(
                              padding: EdgeInsets.all(0.0),

                              child: new Column(
                                children: <Widget>[
                                  new Text(label1),
                                  new Text(label11),

                                  Column(
                                    children: [
                                      ButtonBar(
                                        children: <Widget>[
                                          FlatButton(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 8.0,
                                              horizontal: 30.0,
                                            ),
                                            child: Text('More'),
                                            color: Colors.red,
                                            onPressed: () {
                                              // To do
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  // Button (),
                                ],
                              ),
                              //padding: EdgeInsets.all(16.0),
                              //child: Text(label1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: Ink.image(
                                height: 150,
                                width: 90,
                                image: AssetImage('images/b1.jpg'),
                                fit: BoxFit.fitHeight,
                                //fit: BoxFit.fitWidth,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: new Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.filter,
                                    color: Colors.pink,
                                    size: 60.0,
                                    semanticLabel:
                                        'Text to announce in accessibility modes',
                                  ),
                                  new Text(
                                    " label2",
                                  ),

                                  //Icon(),
                                  //new Text(label11),

                                  // Button (),
                                ],
                              ),
                              //padding: EdgeInsets.all(16.0),
                              //child: Text(label1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                new Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Opacity(
                              opacity: 0.8,
                              child: Ink.image(
                                height: 150,
                                width: 100,
                                image: AssetImage('images/b1.jpg'),
                                fit: BoxFit.fitHeight,
                                // fit: BoxFit.fitWidth,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: new Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.filter,
                                    color: Colors.pink,
                                    size: 60.0,
                                    semanticLabel:
                                        'Text to announce in accessibility modes',
                                  ),
                                  new Text(
                                    " label2",
                                  ),

                                  //Icon(),
                                  //new Text(label11),

                                  // Button (),
                                ],
                              ),
                              //padding: EdgeInsets.all(16.0),
                              //child: Text(label1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                new Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  tileMode: TileMode.mirror,
                                  colors: [Colors.black],
                                ),
                              ),
                              child: Ink.image(
                                height: 150,
                                width: 100,
                                image: AssetImage('images/b1.jpg'),
                                fit: BoxFit.fitHeight,
                                // fit: BoxFit.fitWidth,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: new Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.filter,
                                    color: Colors.pink,
                                    size: 60.0,
                                    semanticLabel:
                                        'Text to announce in accessibility modes',
                                  ),
                                  new Text(
                                    " label2",
                                  ),

                                  //Icon(),
                                  //new Text(label11),

                                  // Button (),
                                ],
                              ),
                              //padding: EdgeInsets.all(16.0),
                              //child: Text(label1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                /* new Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Ink.image(
                          height: 120,
                          width: 100,
                          image: AssetImage('images/b2.jpeg'),
                          fit: BoxFit.fitHeight,
                          //fit: BoxFit.fitWidth,
                        ),
                        Padding(
                          padding: EdgeInsets.all(0.0),

                          child: new Column(
                            children: <Widget>[
                              new Text(label2),
                              //Icon(),
                              //new Text(label11),

                              // Button (),
                            ],
                          ),
                          //padding: EdgeInsets.all(16.0),
                          //child: Text(label1),
                        ),
                      ],
                    ),
                  ),
                ),*/
                new Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Ink.image(
                              height: 150,
                              width: 100,
                              image: AssetImage('images/b2.jpeg'),
                              fit: BoxFit.fitHeight,
                              //fit: BoxFit.fitWidth,
                            ),
                            Padding(
                              padding: EdgeInsets.all(0.0),

                              child: new Column(
                                children: <Widget>[
                                  new Text(label2),
                                  //Icon(),
                                  //new Text(label11),

                                  // Button (),
                                ],
                              ),
                              //padding: EdgeInsets.all(16.0),
                              //child: Text(label1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                new Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Ink.image(
                              height: 150,
                              width: 100,
                              image: AssetImage('images/b2.jpeg'),
                              fit: BoxFit.fitHeight,
                              //fit: BoxFit.fitWidth,
                            ),
                            Padding(
                              padding: EdgeInsets.all(0.0),

                              child: new Column(
                                children: <Widget>[
                                  new Text(label2),
                                  //Icon(),
                                  //new Text(label11),

                                  // Button (),
                                ],
                              ),
                              //padding: EdgeInsets.all(16.0),
                              //child: Text(label1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Ink.image(
                              height: 100,
                              width: 150,
                              image: AssetImage('images/b1.jpg'),
                              fit: BoxFit.fitWidth,
                            ),
                            Padding(
                              padding: EdgeInsets.all(0.0),

                              child: new Column(
                                children: <Widget>[
                                  new Text(label8),
                                  // SizedBox(10.0),
                                  new Text(label88),

                                  // Button (),
                                ],
                              ),
                              //padding: EdgeInsets.all(16.0),
                              //child: Text(label1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Ink.image(
                              height: 100,
                              width: 150,
                              image: AssetImage(
                                'images/b1.jpg',
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                            Padding(
                              padding: EdgeInsets.all(0.0),

                              child: new Column(
                                children: <Widget>[
                                  new Text(label9),
                                  new Text(label99),

                                  // Button (),
                                ],
                              ),
                              //padding: EdgeInsets.all(16.0),
                              //child: Text(label1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.red,
        hoverColor: Colors.white,
        splashColor: Colors.green,
        child: Icon(Icons.home),
        //   child: Text("Book"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Icon(Icons.home, size: 30.0, color: Colors.black),
                  Icon(Icons.school, size: 30.0, color: Colors.black),
                  Icon(Icons.business_center, size: 30.0, color: Colors.black),
                  Icon(Icons.contact_phone, size: 30.0, color: Colors.black),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
