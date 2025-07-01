import 'package:equatable/equatable.dart';

class ShortcutModel extends Equatable {
  final String imagePath;
  final String name;

  const ShortcutModel({required this.imagePath, required this.name});

  @override
  List<Object?> get props => [imagePath, name];
}
