import 'package:cubetiq_crypto_dart/crypto.dart';
import 'package:test/test.dart';

void main() {
  final key = "67rKmuc6DiDukE0jsUP421Eizo4CreaL6Q7Pg/NmH/s=";
  final iv = "FEFM9AY2m5jDq6GZ+CfLIA==";

  group('Default Provider Crypto Tests', () {
    final crypto = Crypto.newInstance(DefaultCryptoProvider(key, iv: iv));

    setUp(() {});

    test('Enryption and Decryption Data', () {
      final data = "Hello World";
      final encrypted = crypto.encrypt(data);
      final decrypted = crypto.decrypt(encrypted);
      expect(data, decrypted);
    });
  });
}
