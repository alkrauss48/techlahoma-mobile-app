import 'package:flutter/material.dart';

import '../domain/event_fixtures.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: EventFixtures.data.map((event) => Text(event.name)).toList());
  }
}
