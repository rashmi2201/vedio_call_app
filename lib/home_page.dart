import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vedio_call_app/call_page.dart';

class HomePage extends StatelessWidget {
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.call_sharp,
          color: Colors.white,
          size: 35,
        ),
        title: const Text(
          textAlign: TextAlign.center,
          'Spark Your vibe...',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: SizedBox(
                  height: 160,
                  width: 150,
                  child: Image.asset('assets/video-calling-app.png'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'LETS',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'TALK',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.pink),
                  )
                ],
              ),
              Text(
                'CONNECT TO THE WORLD',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                height: 90,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter call id to join'),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CallPage(callId: textEditingController.text))),
                  child: const Text(
                    'Join a call',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
