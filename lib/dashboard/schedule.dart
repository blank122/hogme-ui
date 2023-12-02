import 'package:flutter/material.dart';
import 'package:hogme_ui/utils/app_theme.dart';
import 'package:hogme_ui/utils/text_widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.dashboardBackground,
      appBar: AppBar(
        title: const Row(
          children: [
            SizedBox(width: 8),
            Text(
              'Hogme',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: TableCalendar(
                focusedDay: DateTime.now(),
                firstDay: DateTime.utc(2016, 10, 16),
                lastDay: DateTime.utc(2100, 10, 16)),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: text16Normal(text: "Schedule of releasing"),
          ),
          //see the schedule here
          Row(),
        ],
      ),
    );
  }
}
