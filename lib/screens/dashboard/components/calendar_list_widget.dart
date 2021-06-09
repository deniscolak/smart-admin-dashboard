import 'package:smart_admin_dashboard/core/models/data.dart';
import 'package:smart_admin_dashboard/core/widgets/wrapper.dart';
import 'package:smart_admin_dashboard/screens/dashboard/components/list_calendar_data.dart';

import 'package:flutter/material.dart';

class CalendartList extends StatelessWidget {
  final List<CalendarData> datas;

  const CalendartList({Key? key, required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: datas.isEmpty ? _Empty() : _List(list: datas),
    );
  }
}

class _Empty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'There are no interviews.',
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}

class _List extends StatelessWidget {
  final List<CalendarData> list;

  const _List({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("🔥 Upcoming events"),
        SizedBox(
          height: 8,
        ),
        Wrapper(
          child: ListCalendarData(calendarData: list),
        ),
      ],
    );
  }
}
