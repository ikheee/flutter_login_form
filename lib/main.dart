import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 2,
          title: Text(
            "Hello World",
            style: TextStyle(
              fontSize: 30,
              // color: Colors.blue,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 16),
                  child: Image.network(
                    "https://i.ibb.co/nngK6j3/startup.png",
                    width: 100,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    labelText: "이메일",
                    // border: OutlineInputBorder(),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    labelText: "비밀번호",
                    // border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      print("로그인 버튼 클릭");
                    },
                    child: Text("로그인"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
