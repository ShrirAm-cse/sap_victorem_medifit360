import 'package:medifit360/db%20services/auth.dart';
import 'package:medifit360/medifolder/doctor appointent/data/diary.dart';
import 'package:medifit360/medifolder/doctor appointent/pages/doctors_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueNotifier<int> _bottomIndex = ValueNotifier(0);
  final _auth=AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 18,
            child: ValueListenableBuilder<int>(
                valueListenable: _bottomIndex,
                builder: (context, value, child) {
                  if (value == 0) {
                    return Column(
                      children: [
                        Expanded(
                          flex: 20,
                          child: Container(
                            color: Colors.black87,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 2),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SingleChildScrollView(
                                          child: Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '👋 Hello,',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  ' maxson',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child: Center(
                                        child: TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Search',
                                              icon: Icon(Icons.search)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: callItems.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 2, horizontal: 8),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              callItems[index].weekday,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            CircleAvatar(
                                              child: Text(callItems[index].day),
                                              backgroundColor:
                                                  Colors.white.withOpacity(0.2),
                                              foregroundColor: Colors.white,
                                            ),
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 2,
                                                  backgroundColor:
                                                      callItems[index].isEvent
                                                          ? Colors.white
                                                          : Colors.transparent,
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                CircleAvatar(
                                                  radius: 2,
                                                  backgroundColor:
                                                      callItems[index].isEvent
                                                          ? Colors.white
                                                          : Colors.transparent,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Expanded(
                          flex: 15,
                          child: ListView(
                            padding: EdgeInsets.zero,
                            children: [
                              Container(
                                color: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Services'.toUpperCase(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                        ),
                                        Text(
                                          'See All'.toUpperCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              height: 64,
                                              width: 64,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    right: 0,
                                                    top: 0,
                                                    bottom: 0,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.teal[200]!,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 8,
                                                    right: 8,
                                                    top: 8,
                                                    bottom: 8,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.teal[500]!,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Text('Covid-19')
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            GestureDetector(
                                              onTap: () => Navigator.of(context)
                                                  .pushNamed('/doctors'),
                                              child: Container(
                                                height: 64,
                                                width: 64,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: 0,
                                                      right: 0,
                                                      top: 0,
                                                      bottom: 0,
                                                      child: CircleAvatar(
                                                        backgroundColor:
                                                            Colors.teal[200]!,
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 8,
                                                      right: 8,
                                                      top: 8,
                                                      bottom: 8,
                                                      child: CircleAvatar(
                                                        backgroundColor:
                                                            Colors.teal[500]!,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Text('Doctors')
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              height: 64,
                                              width: 64,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    right: 0,
                                                    top: 0,
                                                    bottom: 0,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.teal[200]!,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 8,
                                                    right: 8,
                                                    top: 8,
                                                    bottom: 8,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.teal[500]!,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Text('Hospitals')
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              height: 64,
                                              width: 64,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    right: 0,
                                                    top: 0,
                                                    bottom: 0,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.teal[200]!,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 8,
                                                    right: 8,
                                                    top: 8,
                                                    bottom: 8,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.teal[500]!,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Text('Medicines')
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  } else if (value == 1)
                    return Container(
                      child: Center(
                        child: Text('Page 1'),
                      ),
                    );
                  else if (value == 2)
                    return Container(
                      child: Center(
                        child: Text('Page 2'),
                      ),
                    );
                  else if (value == 3)
                    return Container(
                      child: Center(
                        child: Text('Page 3'),
                      ),
                    );
                  else
                    return Container(
                      child: Center(
                        child: Text('Else'),
                      ),
                    );
                }),
          ),
          Expanded(
            flex: 4,
            child: ValueListenableBuilder<int>(
              builder: (context, value, child) {
                return Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 3,
                            width: 24,
                            decoration: BoxDecoration(
                              color: value == 0 ? Colors.blue : Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _bottomIndex.value = 0;
                            },
                            icon: Icon(
                              Icons.home,
                              color: value == 0 ? Colors.blue : Colors.blueGrey,
                            ),
                          )
                        ],
                      ),


                      Column(
                        children: [
                          Container(
                            height: 3,
                            width: 24,
                            decoration: BoxDecoration(
                              color: value == 3 ? Colors.blue : Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () async{
                              await _auth.signOut();
                            },
                            icon: Icon(
                              Icons.logout,

                              color: value == 3 ? Colors.blue : Colors.blueGrey,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
              valueListenable: _bottomIndex,
            ),
          ),
        ],
      ),
    );
  }
}
