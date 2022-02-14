import 'package:cubetiq_crypto_dart/cubetiq_crypto_dart.dart';
import 'package:cubetiq_crypto_dart/src/core/default_crypto.dart';

void main() {
  final key = "67rKmuc6DiDukE0jsUP421Eizo4CreaL6Q7Pg/NmH/s=";
  final iv = "FEFM9AY2m5jDq6GZ+CfLIA==";
  final data = "Hello World";

  final crypto = Crypto.newInstance(DefaultCryptoProvider(key, iv));
  final encrypted = crypto.encrypt(data);
  final decrypted = crypto.decrypt(encrypted);

  print("Encrypted: $encrypted");
  print("Decrypted: $decrypted");
}
