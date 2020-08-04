import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Container(          
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Login Form",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.pink[200],
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.pinkAccent,
                        ),
                      ),
                      labelText: "Email: ",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.security,
                        color: Colors.pink[200],
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.pinkAccent,
                        ),
                      ),
                      labelText: "Password: ",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    padding: const EdgeInsets.all(0.0),                    
                    child: Ink(
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 250,
                          maxHeight: 40.0,                          
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20, bottom: 5, right: 15.0
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.blue[400],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          
        ),
      ),
    );
  }
}
