import 'package:myapp/domain/entity/reminder.dart';

abstract class IReminderService {
  Future<List<Reminder>> getReminders();
  Future<void> addReminder(Reminder reminder);
  Future<void> updateReminder(Reminder reminder);
  Future<void> deleteReminder(String id);
}
