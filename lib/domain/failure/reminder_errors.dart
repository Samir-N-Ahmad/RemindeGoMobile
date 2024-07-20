import 'package:myapp/domain/failure/failure.dart';
import 'package:myapp/domain/failure/failure_type.dart';

abstract class ReminderFailure extends Failure {
  const ReminderFailure(
      {super.message = 'Unknown error occurred',
      super.code = 'unknown_error',
      super.type = FailureType.unknown});
}

class ReminderNotFoundFailure extends ReminderFailure {
  const ReminderNotFoundFailure()
      : super(
            message: 'Reminder not found',
            code: 'not_found_error',
            type: FailureType.notfound);
}

class ReminderAlreadyExistsFailure extends ReminderFailure {
  const ReminderAlreadyExistsFailure()
      : super(
            message: 'Reminder already exists',
            code: 'already_exists_error',
            type: FailureType.invaliddata);
}

class ReminderInvalidDataFailure extends ReminderFailure {
  const ReminderInvalidDataFailure()
      : super(
            message: 'Invalid reminder data',
            code: 'invalid_data_error',
            type: FailureType.invaliddata);
}

class ReminderCreationFailure extends ReminderFailure {
  const ReminderCreationFailure()
      : super(
            message: 'Failed to create reminder',
            code: 'creation_error',
            type: FailureType.invaliddata);
}

class ReminderDeletionFailure extends ReminderFailure {
  const ReminderDeletionFailure() : super(message: 'Failed to delete reminder');
}

class ReminderUpdateFailure extends ReminderFailure {
  const ReminderUpdateFailure() : super(message: 'Failed to update reminder');
}
