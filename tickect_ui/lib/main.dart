import 'package:flutter/material.dart';

import 'custom_ticket_ui_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TicketUiScreen(),
    );
  }
}
