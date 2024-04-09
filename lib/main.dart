import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://i.pinimg.com/originals/fa/94/42/fa94422b6375b264f4450551562b56d8.jpg"), fit: BoxFit.cover),

        ),
        child: Column(
          children: <Widget>[

              Container(
                margin: EdgeInsets.only(top: 8),
                width: 100,
                height: 100,

                alignment: Alignment.center,
                child: Image.network(
                    "https://galior-market.ru/images/board/medium/12-2021/49a77e7958f21d5a72398641e629a068.jpg",
                  fit: BoxFit.cover,
                ),
              ),

              Container(
                width: 400,
                height: 50,
                margin: EdgeInsets.only(top: 100, left: 50, right: 50),
                child: TextField(

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)
                    )
                  ),

                ),
              ),

             Container(
              width: 400,
                height: 50,
              margin: EdgeInsets.only(top: 8, left: 50, right: 50, bottom: 30),
              child: TextField(

                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outlined),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)
                    )

                ),

              ),


             ),
             Container(
                width: 400,

                  margin: EdgeInsets.only( left: 50, right: 50),
                  child: ElevatedButton(
                      onPressed: (){},
                      child: Text("Login")
                  )
              ),

          ],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        selectedIconTheme: IconThemeData(color: Colors.blueAccent[900]),
        selectedItemColor: Colors.blueAccent[900],
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon:Icon(Icons.remove_red_eye_outlined, color: Colors.blue,) ,
              label: " " ),

          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.blue,),
              label: " "
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.email_outlined, color: Colors.blue,), label: " "
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined,
                color: Colors.blue,), label: " "
          )
        ],

      ),
    );
  }
}
