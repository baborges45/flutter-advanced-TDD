// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_test/flutter_test.dart';

class NextEventPlayer {
  final String id;
  final String name;
  late final String initials;
  final String? photo;
  final String? position;
  final bool isConfirmed;
  final DateTime? confirmationDate;

  NextEventPlayer._({
    required this.id,
    required this.name,
    required this.isConfirmed,
    required this.initials,
    this.photo,
    this.position,
    this.confirmationDate,
  });

  factory NextEventPlayer({
    required String id,
    required String name,
    required bool isConfirmed,
    String? photo,
    String? position,
    DateTime? confirmationDate,
  }) =>
      NextEventPlayer._(
        id: id,
        name: name,
        isConfirmed: isConfirmed,
        initials: _getInitials(name),
        position: position,
        photo: photo,
        confirmationDate: confirmationDate,
      );

  static String _getInitials(String name) {
    final names = name.split(' ');
    final firstChar = names.first[0];
    final lastChar = names.last[0];
    return '$firstChar$lastChar';
  }
}

void main() {
  String initialsOf(String name) => NextEventPlayer(id: '', name: name, isConfirmed: true).initials;
  test('should return the first letter of the first and last names', () {
    expect(initialsOf('Bruno Borges'), 'BB');
    expect(initialsOf('Carolina Lobo Rodrigues'), 'CR');
    expect(initialsOf('Amanda Pererira de Assis Vaz'), 'AV');
  });
}
