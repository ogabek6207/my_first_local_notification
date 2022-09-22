import 'package:flutter/material.dart';
import 'package:flutter_local_notification_ny/notification_service.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override



  void initState() {

tz.initializeTimeZones();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {

            NotificationService().showNotification(1, 'title', 'body', 5);
          },
          child: Container(
            height: 40,
            width: 200,
            color: Colors.green,
            child: Center(child: Text("Show Notification")),

          ),
        ),
      ),
    );
  }
}
