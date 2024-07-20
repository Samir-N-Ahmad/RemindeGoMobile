import 'package:flutter/material.dart';
import 'package:myapp/domain/entity/reminder.dart';
import 'package:myapp/domain/type/remidner_status.dart';

class RemindersScreen extends StatelessWidget {
  RemindersScreen({super.key});
  final List<Reminder> reminders = [
    Reminder(
        id: '1',
        userId: '1',
        title: 'Reminder 1',
        description: 'Description 1',
        locations: [],
        status: ReminderStatus.pending,
        dateTime: DateTime.now()),
    Reminder(
        id: '2',
        userId: '1',
        title: 'Reminder 2',
        description: 'Description 2',
        locations: [],
        status: ReminderStatus.pending,
        dateTime: DateTime.now()),
    Reminder(
        id: '3',
        userId: '1',
        title: 'Reminder 3',
        description: 'Description 3',
        locations: [],
        status: ReminderStatus.pending,
        dateTime: DateTime.now()),
    Reminder(
        id: '4',
        userId: '1',
        title: 'Reminder 4',
        description: 'Description 4',
        locations: [],
        status: ReminderStatus.pending,
        dateTime: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: reminders.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Expanded(
                  child: Image.asset(
                    "images/image1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          reminders[index].title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(reminders[index].description),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
// Suggested code may be subject to a license. Learn more: ~LicenseLog:542808025.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1269379665.
