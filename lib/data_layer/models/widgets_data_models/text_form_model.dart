import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class TextFormModel extends Equatable {
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController controller;
  final bool isNotVisible;
  final IconData icon;
  const TextFormModel({
    required this.hintText,
    required this.textInputType,
    required this.controller,
    this.isNotVisible = false,
    required this.icon,
  });

  @override
  List<Object?> get props => [
    hintText,
    textInputType,
    controller,
    isNotVisible,
    icon,
  ];
}
