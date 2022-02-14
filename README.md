# CUBETIQ Crypto Dart

- Encryption (AES-256 CBC)
- Decryption (AES-256 CBC)

### Example in Dart

```dart
import 'package:cubetiq_crypto_dart/crypto.dart';

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
```

### Contributors

- Sambo Chea <sombochea@cubetiqs.com>
