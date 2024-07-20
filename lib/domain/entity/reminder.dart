import 'package:equatable/equatable.dart';
import 'package:myapp/domain/entity/location.dart';
import 'package:myapp/domain/type/remidner_status.dart';

class Reminder extends Equatable {
  final String id;
  final String userId;
  final String title;
  final String description;
  final ReminderStatus status;
  final List<Location> locations;
  final DateTime dateTime;
  final bool isCompleted;

  const Reminder({
    required this.id,
    required this.userId,
    required this.title,
    required this.description,
    required this.locations,
    required this.status,
    required this.dateTime,
    this.isCompleted = false,
  });

  @override
  List<Object?> get props => [
        id,
        userId,
        title,
        description,
        locations,
        status,
        dateTime,
        isCompleted
      ];
}
