import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class BottomNavModel extends Equatable {
  final String label;
  final IconData icon;

  const BottomNavModel({required this.label, required this.icon});

  @override
  List<Object?> get props => [label, icon];
}
