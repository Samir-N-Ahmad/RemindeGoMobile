import 'package:equatable/equatable.dart';
import 'package:myapp/domain/failure/failure_type.dart';

abstract class Failure extends Equatable {
  final String message;
  final String code;
  final FailureType type;

  const Failure(
      {required this.message, required this.code, required this.type});

  @override
  List<Object?> get props => [message, code, type];
}
