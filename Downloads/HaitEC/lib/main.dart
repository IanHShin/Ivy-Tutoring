import 'package:first_app/MAIN/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:first_app/ENGLISH/random_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FirebaseMessaging _messaging = FirebaseMessaging();

  Future<dynamic> myBackgroundMessageHandler(Map<String, dynamic> message) {
    if (message.containsKey('data')) {
      // Handle data message
      final dynamic data = message['data'];
    }

    if (message.containsKey('notification')) {
      // Handle notification message
      final dynamic notification = message['notification'];
    }

    // Or do other work.
  }

  Future<void> _handleNotification(
      Map<dynamic, dynamic> message, bool dialog) async {
    var data = message['data'] ?? message;
    String expectedAttribute = data['expectedAttribute'];

  }

  @override
  void initState() {
    super.initState();

    _messaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, badge: true, alert: true));

    _messaging.getToken().then((token) {});

    _messaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        final snackbar = SnackBar(
          content: Text(message['notification']['title']),
          action: SnackBarAction(
              label: 'GO',
              onPressed: () {
                print(message['notification']['title']);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => random_words(),
                  ),
                );
              }),
        );
        Scaffold.of(context).showSnackBar(snackbar);
      },
      onLaunch: (Map<String, dynamic> message) async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => random_words(),
          ),
        );
        print("onLaunch: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => random_words(),
          ),
        );
        print("onResume: $message");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: <String, WidgetBuilder>{
          "/random": (BuildContext context) => new random_words()
        });
  }
}

class Message {
  final String title;
  final String body;

  const Message({
    @required this.title,
    @required this.body,
  });
}
