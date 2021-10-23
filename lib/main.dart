import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blueAccent.shade100,
      //   centerTitle: true,
      //   title: Text('My Portfolio'),
      //   elevation: 35,
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(Icons.message_rounded),
      //       onPressed: null,
      //     )
      //   ],
      // ),
      backgroundColor: Colors.blueAccent.shade100,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80))),
          stretch: true,
          snap: false,
          elevation: 70.0,
          floating: true,
          pinned: true,
          expandedHeight: 400,
          flexibleSpace: FlexibleSpaceBar(
            background: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              child: Image(
                fit: BoxFit.none,
                image: AssetImage('images/cover_page.jpeg'),
              ),
            ),
            title: Text('My Portfolio'),
            // stretchModes: <StretchMode>[
            //   StretchMode.zoomBackground,
            //   StretchMode.blurBackground
            // ],
          ),
        ),
        SliverFillRemaining(
          child: SafeArea(
              child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: 100.0,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/pro_pic.jpeg'),
                            radius: 60.0,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'HARSH TRIPATHI',
                            style: TextStyle(fontSize: 22.0),
                          ),
                          Text('Android and Python developer.'),
                          Text('Ghaziabad, Uttar Pradesh.'),
                          Text('+91 7905360216'),
                          Text('tripathiharsh16@gmail.com'),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                        'Persuing Bachelors in C.S.E from Ajay Kumar Garg Engineering College, Ghaziabad. Coding Enthusiast who loves to build real time softwares and Projects.'
                        'Possess good leadership and communication skills. '),
                  ),
                  // SizedBox(
                  //   child: Divider(
                  //     color: Colors.black45,
                  //     endIndent: 15,
                  //     indent: 15,
                  //   ),
                  // ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Skills : ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
                    ),
                  ),
                  Container(
                      child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Card(
                            color: Colors.blue.shade100,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Text('C++'),
                            )),
                      ),
                      Expanded(
                        child: Card(
                          color: Colors.blue.shade100,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Text('Python'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                            color: Colors.blue.shade100,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Text('HTML'),
                            )),
                      ),
                      Expanded(
                        child: Card(
                            color: Colors.blue.shade100,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Text('HTML'),
                            )),
                      ),
                    ],
                  )),
                  SizedBox(
                    child: Divider(
                      height: 30,
                      color: Colors.black45,
                      endIndent: 15,
                      indent: 15,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Education : ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
                    ),
                  ),
                  Container(
                      child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.insights_sharp,
                            color: Colors.blue.shade200,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: Card(
                            color: Colors.blue.shade100,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                  ' Completed my First Year with 8.8 YGPA.'),
                            ),
                          ))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.insights_sharp,
                            color: Colors.blue.shade200,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: Card(
                            color: Colors.blue.shade100,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                  'Completed my 10+2 with 89.9% and 90.0% in Class 10th and 12th respectively.'),
                            ),
                          ))
                        ],
                      )
                    ],
                  )),
                  SizedBox(
                    child: Divider(
                      height: 30,
                      color: Colors.black45,
                      endIndent: 15,
                      indent: 15,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Hobbies : ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
                    ),
                  ),
                  Container(
                      child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Card(
                            color: Colors.blue.shade100,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Text('Travelling'),
                            )),
                      ),
                      Expanded(
                        child: Card(
                          color: Colors.blue.shade100,
                          margin: EdgeInsets.only(right: 5),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 7),
                            child: Text('Binging Netflix'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                            color: Colors.blue.shade100,
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 10),
                              child: Text('Singing'),
                            )),
                      ),
                      Expanded(
                        child: Card(
                            color: Colors.blue.shade100,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 10),
                              child: Text('Badminton'),
                            )),
                      ),
                    ],
                  )),
                  SizedBox(
                    child: Divider(
                      height: 30,
                      color: Colors.black45,
                      endIndent: 15,
                      indent: 15,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'My Projects and Contribution : ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
                    ),
                  ),
                  Container(
                      child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.insights_sharp,
                            color: Colors.blue.shade200,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Card(
                            color: Colors.blue.shade100,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Text(
                                    'Made a Turtle Race Game in Python. \n Link to the project: \n https://github.com/harsh-2024/ace-the-race')),
                            // child: InkWell(
                            //   child: Text('open browser'),
                            //   onTap: () => launch(
                            //       'https://github.com/harsh-2024/ace-the-race'),
                            // )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.insights_sharp,
                            color: Colors.blue.shade200,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: Card(
                            color: Colors.blue.shade100,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                  'Made a GUI Application based Convertor App using Tkinter based on Python. \nLink to the project: \n https://github.com/harsh-2024/GUI-application/blob/master/README.md'),
                            ),
                          ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.insights_sharp,
                            color: Colors.blue.shade200,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: Card(
                            color: Colors.blue.shade100,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                  'Made the personal Portfolio website using HTML, CSS and Bootstrap. \nLink to the website: \n https://harsh-2024.github.io/My-portfolio/index.html'),
                            ),
                          ))
                        ],
                      )
                    ],
                  )),
                ],
              ),
            ],
          )),
        ),
      ]),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blueAccent.shade100,
//           centerTitle: true,
//           title: Text('My Portfolio'),
//           elevation: 35,
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.message_rounded),
//               onPressed: null,
//             )
//           ],
//         ),
//         backgroundColor: Colors.blueAccent.shade100,
//         body: SafeArea(
//             child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container(
//                     width: 100.0,
//                     child: CircleAvatar(
//                       radius: 60.0,
//                     )),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Column(
//                   children: <Widget>[
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       'HARSH TRIPATHI',
//                       style: TextStyle(fontSize: 22.0),
//                     ),
//                     Text('Android and Python developer.'),
//                     Text('Ghaziabad, Uttar Pradesh.'),
//                   ],
//                 ),
//               ],
//             ),
//             Container(
//               margin: EdgeInsets.all(10),
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                   color: Colors.blue.shade100,
//                   borderRadius: BorderRadius.all(Radius.circular(20))),
//               child: Text(
//                   'Persuing Bachelors in C.S.E from Ajay Kumar Garg Engineering College, Ghaziabad. Coding Enthusiast who loves to build real time softwares and Projects.'
//                   'Possess good leadership and communication skills. '),
//             ),
//             // SizedBox(
//             //   child: Divider(
//             //     color: Colors.black45,
//             //     endIndent: 15,
//             //     indent: 15,
//             //   ),
//             // ),
//             Container(
//               padding: EdgeInsets.all(10),
//               child: Text(
//                 'Skills : ',
//                 style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
//               ),
//             ),
//             Container(
//                 child: Row(
//               children: <Widget>[
//                 Card(
//                     color: Colors.blue.shade100,
//                     margin: EdgeInsets.symmetric(horizontal: 10),
//                     child: Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                       child: Text('C++'),
//                     )),
//                 Card(
//                   color: Colors.blue.shade100,
//                   margin: EdgeInsets.symmetric(horizontal: 10),
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                     child: Text('Python'),
//                   ),
//                 ),
//                 Card(
//                     color: Colors.blue.shade100,
//                     margin: EdgeInsets.symmetric(horizontal: 10),
//                     child: Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                       child: Text('HTML'),
//                     )),
//                 Card(
//                     color: Colors.blue.shade100,
//                     margin: EdgeInsets.symmetric(horizontal: 10),
//                     child: Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                       child: Text('Flutter'),
//                     ))
//               ],
//             )),
//             SizedBox(
//               child: Divider(
//                 height: 30,
//                 color: Colors.black45,
//                 endIndent: 15,
//                 indent: 15,
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(10),
//               child: Text(
//                 'Education : ',
//                 style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
//               ),
//             ),
//             Container(
//                 child: Column(
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     SizedBox(
//                       width: 15,
//                     ),
//                     Icon(
//                       Icons.insights_sharp,
//                       color: Colors.blue.shade200,
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     Card(
//                       color: Colors.blue.shade100,
//                       child: Padding(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                         child: Text('xxxxxxxxxxx'),
//                       ),
//                     )
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     SizedBox(
//                       width: 15,
//                     ),
//                     Icon(
//                       Icons.insights_sharp,
//                       color: Colors.blue.shade200,
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     Card(
//                       color: Colors.blue.shade100,
//                       child: Padding(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                         child: Text('xxxxxxxxxxx'),
//                       ),
//                     )
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     SizedBox(
//                       width: 15,
//                     ),
//                     Icon(
//                       Icons.insights_sharp,
//                       color: Colors.blue.shade200,
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     Card(
//                       color: Colors.blue.shade100,
//                       child: Padding(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                         child: Text('xxxxxxxxxxx'),
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             )),
//             SizedBox(
//               child: Divider(
//                 height: 30,
//                 color: Colors.black45,
//                 endIndent: 15,
//                 indent: 15,
//               ),
//             ),
//           ],
//         )),
//       ),
//     );
//   }
// }
