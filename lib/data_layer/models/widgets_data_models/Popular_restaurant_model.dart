import 'package:equatable/equatable.dart';

class RestaurantNearByModel extends Equatable {
  final String image;
  final String name;
  final String time;

  const RestaurantNearByModel({
    required this.image,
    required this.name,
    required this.time,
  });

  @override
  List<Object?> get props => [image, name, time];
}
