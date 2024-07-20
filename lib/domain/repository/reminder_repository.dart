
import 'package:dartz/dartz.dart';
import 'package:myapp/domain/entity/reminder.dart';
import 'package:myapp/domain/failure/failure.dart';

abstract class IReminderRepository {
  Future<Either<Failure, List<Reminder>>> getReminders();
  Future<Either<Failure, Reminder>> getReminder(String id);
  Future<Either<Failure, Reminder>> createReminder(Reminder reminder);
  Future<Either<Failure, Reminder>> updateReminder(Reminder reminder);
  Future<Either<Failure, bool>> deleteReminder(String id);
}
