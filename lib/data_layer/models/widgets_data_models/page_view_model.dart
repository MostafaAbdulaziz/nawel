import 'package:equatable/equatable.dart';

class PageViewModel extends Equatable {
  final String head;
  final String explain;

  const PageViewModel({required this.head, required this.explain});

  @override
  List<Object?> get props => [head, explain];
}
