// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_test/flutter_test.dart';

class NextEventPlayer {
  final String id;
  final String name;
  final String? photo;
  final String? position;
  final bool isConfirmed;
  final DateTime? confirmationDate;

  NextEventPlayer({
    required this.id,
    required this.name,
    this.photo,
    this.position,
    required this.isConfirmed,
    this.confirmationDate,
  });

  String getInitials() {
    final names = name.split(' ');
    final firstChar = names.first[0];
    final lastChar = names.last[0];
    return '$firstChar$lastChar';
  }
}

void main() {
  test('should return the first letter of the first and last names', () {
    final player = NextEventPlayer(
      id: '',
      name: 'Bruno Borges',
      isConfirmed: true,
    );
    final initials = player.getInitials();
    expect(initials, 'BB');

    final player2 = NextEventPlayer(
      id: '',
      name: 'Carolina Lobo Rodrigues',
      isConfirmed: true,
    );
    expect(player2.getInitials(), 'CR');
  });
}
