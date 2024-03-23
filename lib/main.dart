import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Color.fromARGB(255, 235, 213, 212),
              body: Column(
                children: [
                  Container(
                    color: Colors.blue,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4,
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            '22 Mart 2024',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40.0),
                          child: Text(
                            'ToDo List App',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    children: [
                      Card(
                        child: ListTile(
                          title: Text('Yemek Yap'),
                          subtitle: Text('Aksam yemek yapilacak.'),
                          leading: Icon(Icons.fastfood),
                          trailing: Icon(Icons.delete),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Bankaya git'),
                          subtitle: Text('Bankadan para cekilecek.'),
                          leading: Icon(Icons.money),
                          trailing: Icon(Icons.delete),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Spor yap.'),
                          subtitle: Text('Gunluk tekvando antrenmani yapilacak.'),
                          leading: Icon(Icons.sports),
                          trailing: Icon(Icons.delete),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ));
  }
}
