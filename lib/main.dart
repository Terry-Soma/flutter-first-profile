import 'package:flutter/material.dart';

/* starting code */
void main() {
  runApp(const MyApp());
}

///*************  Acknowledge *********************
/// hot reload stateless widget ees hamaarah ?

//=>  ====    {}

//*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.teal,
            body: SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/nothing.jpg"),
                ),
                const Text(
                  "Body Guard",
                  style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.white,
                      fontFamily: 'Pacifico'),
                ),
                Text(
                  "MOBILE DEVELOPER",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal[100],
                      fontFamily: 'Source Sans Pro',
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 180,
                  height: 24,
                  child: Divider(color: Colors.teal[100]),
                ),
                Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    child: ListTile(
                      leading: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        "+976) 91192825",
                        style: TextStyle(color: Colors.teal[900], fontSize: 16),
                      ),
                    )),
                Card(
                  color: Colors.white,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: ListTile(
                    leading: Icon(
                      Icons.email_outlined,
                      color: Colors.teal[900],
                    ),
                    title: Text("jakleito70@gmail.com",
                        style:
                            TextStyle(color: Colors.teal[900], fontSize: 16)),
                  ),
                )
              ],
            ))));
  }
}
