import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final int id;
  final double lat;
  final double lang;
  final int reminderId;

  const Location({
    required this.id,
    required this.lat,
    required this.lang,
    required this.reminderId,
  });

  @override
  List<Object?> get props => [id, lat, lang, reminderId];
}
