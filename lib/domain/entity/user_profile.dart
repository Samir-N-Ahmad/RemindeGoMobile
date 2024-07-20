import 'package:equatable/equatable.dart';
import 'package:myapp/domain/entity/reminder.dart';

class UserProfile extends Equatable {
  final String name;
  final String email;
  final String image;
  final String? phoneNumber;
  final List<Reminder> reminders;

  const UserProfile({
    required this.name,
    required this.email,
    required this.image,
    this.phoneNumber,
    this.reminders = const [],
  });

  @override
  List<Object?> get props => [name, email, image, phoneNumber, reminders];
}
